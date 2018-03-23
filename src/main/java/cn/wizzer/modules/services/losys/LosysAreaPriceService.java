package cn.wizzer.modules.services.losys;


import cn.wizzer.common.base.Service;
import cn.wizzer.modules.models.losys.Lo_area_price;

import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;



/**
 * Created by wizzer on 2016/8/11.
 */
@IocBean(args = {"refer:dao"})
public class LosysAreaPriceService extends Service<Lo_area_price> {
    private static final Log log = Logs.get();

    public LosysAreaPriceService(Dao dao) {
        super(dao);
    }
    
}
