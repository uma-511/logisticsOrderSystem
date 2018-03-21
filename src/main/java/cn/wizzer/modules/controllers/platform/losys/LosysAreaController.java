package cn.wizzer.modules.controllers.platform.losys;

import cn.apiclub.captcha.filter.image.TextureFilter;
import cn.wizzer.common.annotation.SLog;
import cn.wizzer.common.base.Result;
import cn.wizzer.common.filter.PrivateFilter;
import cn.wizzer.common.page.DataTableColumn;
import cn.wizzer.common.page.DataTableOrder;
import cn.wizzer.modules.models.losys.Lo_area;
import cn.wizzer.modules.models.losys.Lo_logistics;
import cn.wizzer.modules.models.sys.Sys_menu;
import cn.wizzer.modules.models.sys.Sys_unit;
import cn.wizzer.modules.services.losys.LosysAreaService;
import cn.wizzer.modules.services.losys.LosysLogisticsService;
import cn.wizzer.modules.services.sys.SysMenuService;
import cn.wizzer.modules.services.sys.SysUnitService;
import cn.wizzer.modules.services.sys.SysUserService;
import oracle.net.aso.a;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.subject.Subject;
import org.nutz.dao.*;
import org.nutz.dao.Chain;
import org.nutz.dao.entity.Record;
import org.nutz.dao.sql.Sql;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.json.Json;
import org.nutz.lang.Files;
import org.nutz.lang.Strings;

import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.adaptor.WhaleAdaptor;
import org.nutz.mvc.annotation.*;
import com.mysql.fabric.xmlrpc.base.Data;




@IocBean
@At("/platform/losys/area")
@Filters({@By(type = PrivateFilter.class)})
public class LosysAreaController {
    private static final Log log = Logs.get();
    @Inject
    private LosysAreaService areaService;

    /**
     * 访问区域管理模块首页
     */
    @At("")
    @Ok("beetl:/platform/losys/area/index.html")
    @RequiresAuthentication
    public void index(HttpServletRequest req) {
    	
    	List<Lo_area> area = areaService.query(Cnd.where("pid", "=", "").asc("opAt"));
    
    	req.setAttribute("list", area);
    }
    
    /**
     * 访问区域管理模块添加区域页面
     */
    @At
    @Ok("beetl:/platform/losys/area/add.html")
    @RequiresAuthentication
    public Object add(@Param("pid") String pid, HttpServletRequest req) {
    	return Strings.isBlank(pid) ? null : areaService.fetch(pid);
    }

    /**
     * 访问区域管理模块修改区域页面
     */
    @At("/edit/?")
    @Ok("beetl:/platform/losys/area/edit.html")
    @RequiresPermissions("area.manage.edit")
    public Object edit(String id,HttpServletRequest req) {
    	Lo_area area = areaService.fetch(id);
    	if (area.getPid() != null) {
    		Lo_area area2 = areaService.fetch(area.getPid());
    		req.setAttribute("areaP", area2);
		}
    	req.setAttribute("area", area);
    	
    	return area;
    }
    
    /**
     * 添加区域
     */
	@At
    @Ok("json")
    @RequiresPermissions("area.manage.add")
    @SLog(tag = "添加区域", msg = "区域名称:${args[0].name}")
	@AdaptBy(type = WhaleAdaptor.class)
    public Object addDo(@Param("..") Lo_area area, HttpServletRequest req) {
        try {
        	if(area.getPid()!= null && !area.getPid().equals("")) { 	
	        	Lo_area areaTop = areaService.fetch(area.getPid());
	        	areaTop.setHasChild("1");
	        	areaService.update(areaTop);
	        	
	        	if (areaTop.getPath() != null && areaTop.getPath() != "") {
	        		area.setPath(areaTop.getPath() +  areaTop.getId() + "-");
				}else {
					area.setPath(areaTop.getId() + "-");
				}
        	}
        	area.setHasChild("0");
        	area.setOpAt((int)System.currentTimeMillis());
        	area.setDelFlag(false);
        	
            areaService.insert(area);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
    
    
    
    /**
     * 删除区域
     */
    @At({"/delete/?", "/delete"})
    @Ok("json")
    @RequiresPermissions("area.manage.delete")
    public Object delete(String id,  HttpServletRequest req) {
    	try {
    		//查询出所有子节点
    		List<Lo_area> list = areaService.query(Cnd.where("pid", "=", id).or("path","like","%"+id + "-%"));
    		//修改上级节点
    		Lo_area area = areaService.fetch(id);
    		areaService.delete(id);

    		if (area.getPid() != null) {
    			areaService.dao().update(Lo_area.class, Chain.make("hasChild", 0), Cnd.where("id","=",area.getPid()));
			}
    		if (list.size()>0) {
    			for (Lo_area lo_area : list) {
        			areaService.delete(lo_area.getId());
    			}
			}
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
    
	/**
	 * 修改区域
	 */
    @At
    @Ok("json")
    @RequiresPermissions("area.manage.edit")
    @SLog(tag = "修改区域", msg = "区域名称:${args[0].name}")
	@AdaptBy(type = WhaleAdaptor.class)
    public Object editDo(@Param("..") Lo_area area, HttpServletRequest req) {	
        try {
        	areaService.update(area);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
    
    /**
     * 查询数据
     */
    
    @At
    @Ok("json:full")
    @RequiresAuthentication
    public Object data() {
    	List<Lo_area> list = areaService.query(Cnd.where("pid", "is", null).asc("opAt"));
        List<Map<String, Object>> tree = new ArrayList<>();
        for (Lo_area area : list) {
            Map<String, Object> obj = new HashMap<>();
            obj.put("id", area.getId());
            obj.put("name", area.getName());
            obj.put("children", area.getHasChild());
            tree.add(obj);
        }
        return tree;
    }
    
    
    @At("/child/?")
    @Ok("beetl:/platform/losys/area/child.html")
    @RequiresAuthentication
    public Object child(String id) {
//        Lo_area m = areaService.fetch(id);
//        List<Lo_area> list = new ArrayList<>();
        List<Lo_area> list = areaService.query(Cnd.where("pid", "=", id).asc("opAt"));
//        for (Lo_area area : menus) {
//            for (Lo_area bt : datas) {
//                if (menu.getPath().equals(bt.getPath().substring(0, bt.getPath().length() - 4))) {
//                    menu.setHasChildren(true);
//                    break;
//                }
//            }
//            list.add(menu);
//        }
        return list;
    }
    
    @At
    @Ok("json")
    @RequiresAuthentication
    public Object tree(@Param("pid") String pid) {
        List<Lo_area> list = areaService.query(Cnd.where("pid", "=", Strings.sBlank(pid)).asc("opAt"));
        List<Map<String, Object>> tree = new ArrayList<>();
        for (Lo_area area : list) {
            Map<String, Object> obj = new HashMap<>();
            obj.put("id", area.getId());
            obj.put("text", area.getName());
            if(area.getHasChild().equals("1")) {
            	obj.put("children", true);
            }else {
            	obj.put("children", false);
			}
            
            tree.add(obj);
        }
        return tree;
    }
    
    
    
    
    
    
    
    
    
    
    
    
}