package tech.qihangec.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import tech.qihangec.api.domain.SysShopPullLasttime;
import tech.qihangec.api.service.SysShopPullLasttimeService;
import tech.qihangec.api.mapper.SysShopPullLasttimeMapper;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author qilip
* @description 针对表【sys_shop_pull_lasttime(店铺更新最后时间记录)】的数据库操作Service实现
* @createDate 2024-04-04 17:50:02
*/
@AllArgsConstructor
@Service
public class SysShopPullLasttimeServiceImpl extends ServiceImpl<SysShopPullLasttimeMapper, SysShopPullLasttime>
    implements SysShopPullLasttimeService{
    private final SysShopPullLasttimeMapper mapper;
    @Override
    public SysShopPullLasttime getLasttimeByShop(Integer shopId, String pullType) {
        List<SysShopPullLasttime> sysShopPullLasttimes = mapper.selectList(new LambdaQueryWrapper<SysShopPullLasttime>().eq(SysShopPullLasttime::getShopId, shopId).eq(SysShopPullLasttime::getPullType, pullType));
        if(sysShopPullLasttimes != null && !sysShopPullLasttimes.isEmpty()) return sysShopPullLasttimes.get(0);
        else return null;
    }
}




