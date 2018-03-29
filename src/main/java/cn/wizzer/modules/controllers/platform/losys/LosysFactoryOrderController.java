package cn.wizzer.modules.controllers.platform.losys;

import cn.wizzer.common.annotation.SLog;
import cn.wizzer.common.base.Result;
import cn.wizzer.common.filter.PrivateFilter;
import cn.wizzer.common.page.DataTableColumn;
import cn.wizzer.common.page.DataTableOrder;
import cn.wizzer.common.util.DateUtil;
import cn.wizzer.modules.models.losys.Lo_orders;
import cn.wizzer.modules.models.losys.Lo_taobao_orders;
import cn.wizzer.modules.models.sys.Sys_user;
import cn.wizzer.modules.services.losys.LosysOrderService;
import cn.wizzer.modules.services.losys.LosysTaobaoFactoryService;
import cn.wizzer.modules.services.losys.LosysTaobaoOrderService;
import cn.wizzer.modules.services.sys.SysMenuService;
import cn.wizzer.modules.services.sys.SysUnitService;
import cn.wizzer.modules.services.sys.SysUserService;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.subject.Subject;
import org.nutz.dao.*;
import org.nutz.dao.Chain;
import org.nutz.dao.sql.Sql;
import org.nutz.integration.json4excel.J4E;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Files;
import org.nutz.lang.Strings;
import org.nutz.lang.Times;
import org.nutz.lang.util.Disks;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.adaptor.WhaleAdaptor;
import org.nutz.mvc.annotation.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

/**
 * Created by wizzer on 2016/6/23.
 */
@IocBean
@At("/platform/losys/factory/order")
@Filters({@By(type = PrivateFilter.class)})
public class LosysFactoryOrderController {
    private static final Log log = Logs.get();
    @Inject
    SysUserService userService;
    @Inject
    SysMenuService menuService;
    @Inject
    SysUnitService unitService;
    @Inject
    LosysTaobaoFactoryService factoryService;
    @Inject
    LosysTaobaoOrderService taobaoOrderService;
    @Inject
    LosysOrderService orderService;
    
    @At("")
    @Ok("beetl:/platform/losys/factory/order/index.html")
    @RequiresAuthentication
    public Object index(HttpServletRequest req) {
    	req.setAttribute("today", DateUtil.getDate());
    	return userService.query(Cnd.where("accountType", "=", 1));
    }
    
    @At("/confirm/?")
    @Ok("beetl:/platform/losys/factory/order/confirm.html")
    @RequiresAuthentication
    public Object confirm(String id) {
        return orderService.query(Cnd.where("tbId", "=", id));
    }
    /**
     * 确认订单
     * @param id
     * @param status
     * @param remark
     * @return
     */
    @At("/doAudit")
    @Ok("json")
    public Object doAudit(@Param("id") String id, @Param("status") int status, @Param("remark") String remark) {
    	orderService.update(Chain.make("orderStatus", status).add("remark", remark), Cnd.where("id", "=", id));
        return Result.success("cw.success");
    }
    /**
     * 通知揽件
     * @param id
     * @return
     * @throws FileNotFoundException
     * @throws IOException
     */
    @At("/parts/?")
   	@Ok("json")
   	public Object parts(String id) throws FileNotFoundException, IOException {
    	orderService.update(Chain.make("orderStatus", 4), Cnd.where("tbId", "=", id));
   		return Result.success("cw.success");

   	}
    /**
     * 查看订单状态
     * @param id
     * @return
     */
    @At("/detail/?")
    @Ok("beetl:/platform/losys/taobao/order/detail.html")
    @RequiresAuthentication
    public Object detail(String id, HttpServletRequest req) {
    	List<Lo_orders> orders=orderService.query(Cnd.where("tbId", "=", id));
    	req.setAttribute("orders", orders.get(0));
        return taobaoOrderService.fetch(id);
    }
    
    @At
    @Ok("json")
    @SLog(tag = "修改用户", msg = "")
    public Object editDo(@Param("..") Lo_taobao_orders tOrders,@Param("..")Lo_orders orders, HttpServletRequest req) {
        try {
        	tOrders.setOpBy(Strings.sNull(req.getAttribute("uid")));
        	tOrders.setOpAt((int) (System.currentTimeMillis() / 1000));
        	tOrders.setOrderDate(System.currentTimeMillis());
            taobaoOrderService.updateIgnoreNull(tOrders);
            orderService.update(Chain.make("expNum", orders.getExpNum()).add("packagePhoto", orders.getPackagePhoto()), Cnd.where("tbId", "=", tOrders.getId()));
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
    /**
     * 工厂订单管理列表
     * @param loginname
     * @param nickname
     * @param length
     * @param start
     * @param draw
     * @param order
     * @param columns
     * @return
     */
    
    @At
    @Ok("json:{locked:'password|salt',ignoreNull:false}") // 忽略password和createAt属性,忽略空属性的json输出
    @RequiresAuthentication
    public Object data(@Param("beginDate") String beginDate, @Param("endDate") String endDate, @Param("status") String status, @Param("name") String name,@Param("pay") String pay,
    		@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
    	int beginTime=0;
    	int endTime=0;
    	Sql sql;
    	String tableName = Times.format("yyyyMM", new Date());
        if (Strings.isNotBlank(beginDate)) {
            tableName = Times.format("yyyyMM", Times.D(beginDate + " 00:00:00"));
            beginTime = DateUtil.getTime(beginDate + " 00:00:00");
        }
        if (Strings.isNotBlank(endDate)) {
        	endTime = DateUtil.getTime(endDate + " 23:59:59");
        }
    	String col="orderDate";//默认
     	String dir="asc";
    	if (order != null && order.size() > 0) {
            for (DataTableOrder orders : order) {
            	DataTableColumn c = columns.get(orders.getColumn());
                col=Sqls.escapeSqlFieldValue(c.getData()).toString();
                dir=orders.getDir();
            }
        }
    	sql = taobaoOrderService.getMessageList(beginTime,endTime,status,name,pay);
 		return taobaoOrderService.data(length, start, draw, sql, sql);
    }
    
    @At("/exportFile")
	@Ok("void")
	public void exportFile(HttpServletRequest req, HttpServletResponse resp)
			throws FileNotFoundException, IOException {
		// 第一步，查询数据得到一个数据集合
		List<Lo_taobao_orders> taobao = taobaoOrderService.dao().query(Lo_taobao_orders.class, null);
		String filename = URLEncoder.encode("淘宝订单.xls", "UTF-8");
		resp.addHeader("content-type", "application/shlnd.ms-excel;charset=utf-8");
		resp.addHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
		OutputStream out = resp.getOutputStream();
		// poi
		J4E.toExcel(out, taobao, null);
	}
    
    
    @At("/importFile")
	@Ok("json")
	@AdaptBy(type = WhaleAdaptor.class)
	public Object importFile(@Param("file")File file) {
		try {
			Subject subject = SecurityUtils.getSubject();
			Sys_user user = (Sys_user) subject.getPrincipal();
			// 第一步，查询数据得到一个数据集合
			// 第一步，使用j4e解析excel文件获得数据集合
			InputStream in = Files.findFileAsStream(Disks.absolute(file.getPath()));
			List<Lo_taobao_orders> people = J4E.fromExcel(in, Lo_taobao_orders.class, null);
			// 第二步，插入数据到数据库
			taobaoOrderService.dao().insert(people);
			for(Lo_taobao_orders orders:people){
				Lo_orders order = new Lo_orders();
				order.setTbId(orders.getId());
				order.setTaobaoId(user.getId());
				orderService.insert(order);
			}
			return Result.success("导入成功");
		} catch (Exception e) {
			return Result.error("system.error");
		}

	}
    
}
