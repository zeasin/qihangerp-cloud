package tech.qihangec.api.service;

import tech.qihangec.api.domain.SysShopPullLasttime;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author qilip
* @description 针对表【sys_shop_pull_lasttime(店铺更新最后时间记录)】的数据库操作Service
* @createDate 2024-04-04 17:50:02
*/
public interface SysShopPullLasttimeService extends IService<SysShopPullLasttime> {
    SysShopPullLasttime getLasttimeByShop(Integer shopId,String pullType);
}
