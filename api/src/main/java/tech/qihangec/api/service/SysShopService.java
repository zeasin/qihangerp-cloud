package tech.qihangec.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import tech.qihangec.api.domain.SysPlatform;
import tech.qihangec.api.domain.SysShop;


import java.util.List;

/**
* @author qilip
* @description 针对表【sys_shop(数据中心-店铺)】的数据库操作Service
* @createDate 2024-03-17 15:17:34
*/
public interface SysShopService extends IService<SysShop> {
    List<SysShop> selectShopList(SysShop shop);
    SysShop selectShopById(Long id);
    int updateShopById(SysShop shop);
    int insertShop(SysShop shop);

    int deleteShopByIds(Long[] ids);
    List<SysPlatform> selectShopPlatformList();
    SysPlatform selectShopPlatformById(Long id);
    int updateShopPlatformById(SysPlatform platform);

    void updateSessionKey(Integer shopId,String sessionKey);
}
