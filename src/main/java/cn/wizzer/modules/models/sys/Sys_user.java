package cn.wizzer.modules.models.sys;

import cn.wizzer.common.base.Model;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by wizzer on 2016/6/21.
 */
@Table("sys_user")
@TableIndexes({@Index(name = "INDEX_SYS_USER_LOGINNAMAE", fields = {"loginname"}, unique = true)})
public class Sys_user extends Model implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    @Column
    @Comment("用户名")
    @ColDefine(type = ColType.VARCHAR, width = 120)
    private String loginname;

    @Column
    @Comment("密码")
    @ColDefine(type = ColType.VARCHAR, width = 100)
    private String password;// transient 修饰符可让此字段不在对象里显示

    @Column
    @Comment("密码盐")
    @ColDefine(type = ColType.VARCHAR, width = 50)
    private String salt;

    @Column
    @Comment("昵称")
    @ColDefine(type = ColType.VARCHAR, width = 30)
    private String nickname;
    
    @Column
    @Comment("联系方式")
    @ColDefine(type = ColType.VARCHAR, width = 14)
    private String phone;
    
    @Column
    @Comment("店铺/⼯⼚名称")
    @ColDefine(type = ColType.VARCHAR, width = 30)
    private String shopname;
    
    @Column
    @Comment("审核状态 0:审核不通过 1:审核通过  2:待审核")
    @ColDefine(type = ColType.INT)
    private int status;

    @Column
    @Comment("账号类型 0:物流 1:淘宝 2:工厂")
    @ColDefine(type = ColType.INT)
    private int accountType;
    
    @Column
    @Comment("结算方式  0:现结 1:月结 2:周结 ")
    @ColDefine(type = ColType.INT)
    private int mosa;
    
    @Column
    @Comment("推荐人")
    @ColDefine(type = ColType.VARCHAR, width = 50)
    private String referee;
    
    @Column
    @Comment("验证码")
    @ColDefine(type = ColType.VARCHAR, width = 10)
    private String code;
    
	@Column
    @Comment("是否在线")
    @ColDefine(type = ColType.BOOLEAN)
    private boolean isOnline;

    @Column
    @Comment("是否禁用")
    @ColDefine(type = ColType.BOOLEAN)
    private boolean disabled;

    @Column
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String email;

    @Column
    @Comment("登陆时间")
    @ColDefine(type = ColType.INT)
    private Integer loginAt;

    @Column
    @Comment("登陆IP")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String loginIp;

    @Column
    @Comment("登陆次数")
    @ColDefine(type = ColType.INT)
    private Integer loginCount;

    @Column
    @Comment("常用菜单")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String customMenu;

    @Column
    @Comment("皮肤样式")
    @ColDefine(type = ColType.VARCHAR, width = 100)
    private String loginTheme;

    @Column
    private boolean loginSidebar;

    @Column
    private boolean loginBoxed;

    @Column
    private boolean loginScroll;

    @Column
    private boolean loginPjax;

    @Column
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String unitid;

    @One(field = "unitid")
    private Sys_unit unit;

    @ManyMany(from = "userId", relation = "sys_user_role", to = "roleId")
    private List<Sys_role> roles;

    @ManyMany(from = "userId", relation = "sys_user_unit", to = "unitId")
    protected List<Sys_unit> units;

    protected List<Sys_menu> menus;

    protected List<Sys_menu> firstMenus;

    protected Map<String, List<Sys_menu>> secondMenus;

    private List<Sys_menu> customMenus;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public boolean isOnline() {
        return isOnline;
    }

    public void setIsOnline(boolean isOnline) {
        this.isOnline = isOnline;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getLoginAt() {
        return loginAt;
    }

    public void setLoginAt(Integer loginAt) {
        this.loginAt = loginAt;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    public Integer getLoginCount() {
        return loginCount;
    }

    public void setLoginCount(Integer loginCount) {
        this.loginCount = loginCount;
    }

    public String getCustomMenu() {
        return customMenu;
    }

    public void setCustomMenu(String customMenu) {
        this.customMenu = customMenu;
    }

    public String getLoginTheme() {
        return loginTheme;
    }

    public void setLoginTheme(String loginTheme) {
        this.loginTheme = loginTheme;
    }

    public boolean isLoginSidebar() {
        return loginSidebar;
    }

    public void setLoginSidebar(boolean loginSidebar) {
        this.loginSidebar = loginSidebar;
    }

    public boolean isLoginBoxed() {
        return loginBoxed;
    }

    public void setLoginBoxed(boolean loginBoxed) {
        this.loginBoxed = loginBoxed;
    }

    public boolean isLoginScroll() {
        return loginScroll;
    }

    public void setLoginScroll(boolean loginScroll) {
        this.loginScroll = loginScroll;
    }

    public boolean isLoginPjax() {
        return loginPjax;
    }

    public void setLoginPjax(boolean loginPjax) {
        this.loginPjax = loginPjax;
    }

    public String getUnitid() {
        return unitid;
    }

    public void setUnitid(String unitid) {
        this.unitid = unitid;
    }

    public Sys_unit getUnit() {
        return unit;
    }

    public void setUnit(Sys_unit unit) {
        this.unit = unit;
    }

    public List<Sys_role> getRoles() {
        return roles;
    }

    public void setRoles(List<Sys_role> roles) {
        this.roles = roles;
    }

    public List<Sys_unit> getUnits() {
        return units;
    }

    public void setUnits(List<Sys_unit> units) {
        this.units = units;
    }

    public List<Sys_menu> getMenus() {
        return menus;
    }

    public void setMenus(List<Sys_menu> menus) {
        this.menus = menus;
    }

    public List<Sys_menu> getFirstMenus() {
        return firstMenus;
    }

    public void setFirstMenus(List<Sys_menu> firstMenus) {
        this.firstMenus = firstMenus;
    }

    public Map<String, List<Sys_menu>> getSecondMenus() {
        return secondMenus;
    }

    public void setSecondMenus(Map<String, List<Sys_menu>> secondMenus) {
        this.secondMenus = secondMenus;
    }

    public List<Sys_menu> getCustomMenus() {
        return customMenus;
    }

    public void setCustomMenus(List<Sys_menu> customMenus) {
        this.customMenus = customMenus;
    }
    
    public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getAccountType() {
		return accountType;
	}

	public void setAccountType(int accountType) {
		this.accountType = accountType;
	}

	public String getReferee() {
		return referee;
	}

	public void setReferee(String referee) {
		this.referee = referee;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getMosa() {
		return mosa;
	}

	public void setMosa(int mosa) {
		this.mosa = mosa;
	}

	public void setOnline(boolean isOnline) {
		this.isOnline = isOnline;
	}
}
