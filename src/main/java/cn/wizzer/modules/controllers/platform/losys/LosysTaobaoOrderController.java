package cn.wizzer.modules.controllers.platform.losys;

import cn.wizzer.common.annotation.SLog;
import cn.wizzer.common.base.Result;
import cn.wizzer.common.filter.PrivateFilter;
import cn.wizzer.common.page.DataTableColumn;
import cn.wizzer.common.page.DataTableOrder;
import cn.wizzer.common.util.DateUtil;
import cn.wizzer.modules.models.losys.Lo_orders;
import cn.wizzer.modules.models.losys.Lo_taobao_factory;
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
import org.nutz.json.Json;
import org.nutz.lang.Files;
import org.nutz.lang.Strings;
import org.nutz.lang.Times;
import org.nutz.lang.util.Disks;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.adaptor.WhaleAdaptor;
import org.nutz.mvc.annotation.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by wizzer on 2016/6/23.
 */
@IocBean
@At("/platform/losys/taobao/order")
@Filters({@By(type = PrivateFilter.class)})
public class LosysTaobaoOrderController {
    private static final Log log = Logs.get();
    @Inject
    SysUserService userService;
    @Inject
    SysMenuService menuService;
    @Inject
    SysUnitService unitService;
    @Inject
    LosysTaobaoFactoryService taobaoFactoryService;
    @Inject
    LosysTaobaoOrderService taobaoOrderService;
    @Inject
    LosysOrderService orderService;
    
    @At("")
    @Ok("beetl:/platform/losys/taobao/order/index.html")
    @RequiresAuthentication
    public Object index() {
    	return userService.query(Cnd.where("accountType", "=", 1));
    }
    
    @At
    @Ok("beetl:/platform/losys/taobao/order/add.html")
    @RequiresAuthentication
    public void add() {
    	
    }

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
        	tOrders.setOrderDate((int) (System.currentTimeMillis() / 1000));
            taobaoOrderService.updateIgnoreNull(tOrders);
            orderService.update(Chain.make("expNum", orders.getExpNum()).add("packagePhoto", orders.getPackagePhoto()), Cnd.where("tbId", "=", tOrders.getId()));
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
    
    @At
    @Ok("json")
    @SLog(tag = "新建订单", msg = "")
    public Object addDo(@Param("..") Lo_taobao_orders orders, HttpServletRequest req,HttpSession session) {
		try {
			Subject subject = SecurityUtils.getSubject();
			Sys_user user = (Sys_user) subject.getPrincipal();

			orders.setOrderDate((int) (System.currentTimeMillis() / 1000));
			orders.setLogistics("顺丰");
			taobaoOrderService.insert(orders);
			Lo_orders order = new Lo_orders();
			order.setTbId(orders.getId());
			order.setTaobaoId(user.getId());
			order.setOrderStatus(1);
			orderService.insert(order);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }
    /**
     * 指派工厂
     * @param id
     * @param req
     */
    @At("/appoint/?")
    @Ok("beetl:/platform/losys/taobao/order/appoint.html")
    @RequiresAuthentication
    public void factory(String id, HttpServletRequest req) {
    	Subject subject = SecurityUtils.getSubject();
    	Sys_user user = (Sys_user) subject.getPrincipal();
    	List<Lo_taobao_factory> common=taobaoFactoryService.query(Cnd.where("taobaoid", "=", user.getId()));
    	List<NutMap> factory = new ArrayList<>();
    	if(!common.isEmpty()){
    		for(Lo_taobao_factory communal:common){
    			NutMap map = new NutMap();
    			List<Sys_user> list=userService.query(Cnd.where("id", "=", communal.getFactoryid()));
    			for(Sys_user user2 :list){
    				map.put("id", user2.getId());
    				map.put("text", user2.getLoginname());
    				map.put("icon", "");
    				map.put("data", "");
    				List<Lo_orders> order=orderService.query(Cnd.where("tbId", "=", id));
    				if(order.get(0).getFactoryId()!=null){
    					if(order.get(0).getFactoryId().equals(user2.getId())){
    						map.put("state", NutMap.NEW().addv("selected", true));
    					}
    				}
    				factory.add(map);
    			}
    		}
    	}
    	req.setAttribute("user", Json.toJson(factory));
    	req.setAttribute("id", id);
    }

    @At
    @Ok("json")
    public Object editFactoryDo(@Param("factoryid") String factoryid,@Param("tbId") String tbid, HttpServletRequest req) {
        try {
        	orderService.update(Chain.make("factoryId", factoryid), Cnd.where("tbId", "=", tbid));
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
    /**
     * 淘宝订单管理列表
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
    	 Sql sql = taobaoOrderService.getMessageList(col,dir,beginTime,endTime,status,name,pay);
         return taobaoOrderService.data(length, start, draw, sql, sql);
    }
    
    @At("/exportFile")
	@Ok("json")
	public Object exportFile(HttpServletRequest req) throws FileNotFoundException, IOException {
    	// 第一步，查询数据得到一个数据集合
    	List<Lo_taobao_orders> taobao = taobaoOrderService.dao().query(Lo_taobao_orders.class,null);
    	 
    	// 第二步，使用j4e将数据输出到指定文件或输出流中
    	try (OutputStream out = new FileOutputStream(Files.createFileIfNoExists2("C:/exportfile/淘宝订单.xls"))) {
    	    J4E.toExcel(out, taobao, null);  
    	}
		return Result.success("导出C盘成功");

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
			List<Lo_taobao_orders> taobao = taobaoOrderService.dao().query(Lo_taobao_orders.class, null);
			for (Lo_taobao_orders taobaoOrder : taobao) {
				Lo_orders orders = new Lo_orders();
				orders.setTbId(taobaoOrder.getId());
				orders.setTaobaoId(user.getId());
				orders.setOrderStatus(1);
				orderService.insert(orders);
			}
			return Result.success("导入成功");
		} catch (Exception e) {
			return Result.error("system.error");
		}

	}
    
}