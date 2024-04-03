package tech.qihangec.api.service;

import tech.qihangec.api.domain.WeiGoods;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author qilip
* @description 针对表【wei_goods】的数据库操作Service
* @createDate 2024-04-03 21:36:32
*/
public interface WeiGoodsService extends IService<WeiGoods> {
    int saveAndUpdateGoods(Integer shopId,WeiGoods goods);
}
