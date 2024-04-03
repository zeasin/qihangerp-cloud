package tech.qihangec.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import tech.qihangec.api.common.ResultVoEnum;
import tech.qihangec.api.common.utils.StringUtils;
import tech.qihangec.api.domain.WeiGoods;
import tech.qihangec.api.domain.WeiGoodsSku;
import tech.qihangec.api.mapper.WeiGoodsSkuMapper;
import tech.qihangec.api.service.WeiGoodsService;
import tech.qihangec.api.mapper.WeiGoodsMapper;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author qilip
* @description 针对表【wei_goods】的数据库操作Service实现
* @createDate 2024-04-03 21:36:32
*/
@AllArgsConstructor
@Service
public class WeiGoodsServiceImpl extends ServiceImpl<WeiGoodsMapper, WeiGoods>
    implements WeiGoodsService{
    private final WeiGoodsMapper mapper;
    private final WeiGoodsSkuMapper skuMapper;
//    private final OGoodsSkuMapper goodsSkuMapper;

    @Override
    public int saveAndUpdateGoods(Integer shopId, WeiGoods goods) {
        List<WeiGoods> goodsList = mapper.selectList(new LambdaQueryWrapper<WeiGoods>().eq(WeiGoods::getProductId, goods.getProductId()));
        if (goodsList != null && goodsList.size() > 0) {
            // 更新
            // 存在，更新
            goods.setShopId(shopId);
            goods.setId(goodsList.get(0).getId());
            mapper.updateById(goods);

            // 删除sku
            skuMapper.delete(new LambdaQueryWrapper<WeiGoodsSku>().eq(WeiGoodsSku::getWeiGoodsId,goods.getId()));
            // 重新插入sku
            if(goods.getSkus()!=null) {
                for (var sku : goods.getSkus()) {
                    sku.setWeiGoodsId(goods.getId());
                    // 根据OuterId查找ERP系统中的skuid
//                    if(StringUtils.isNotEmpty(sku.getSkuCode())) {
//                        List<OGoodsSku> oGoodsSkus = goodsSkuMapper.selectList(new LambdaQueryWrapper<OGoodsSku>().eq(OGoodsSku::getSkuNum, sku.getSkuCode()));
//                        if(oGoodsSkus!=null && !oGoodsSkus.isEmpty()){
//                            sku.setErpGoodsId(oGoodsSkus.get(0).getErpGoodsId());
//                            sku.setErpGoodsSkuId(oGoodsSkus.get(0).getErpSkuId());
//                        }
//                    }
                    skuMapper.insert(sku);
                }
            }

            return ResultVoEnum.DataExist.getIndex();
        } else {
            // 不存在，新增return 0;
            // 不存在，新增
            goods.setShopId(shopId);
            mapper.insert(goods);
            // 插入sku
            if(goods.getSkus()!=null) {
                for (var sku : goods.getSkus()) {
                    sku.setWeiGoodsId(goods.getId());
                    // 根据OuterId查找ERP系统中的skuid
                    // TODO:未完成
//                    if(StringUtils.isNotEmpty(sku.getSkuCode())) {
//                        List<OGoodsSku> oGoodsSkus = goodsSkuMapper.selectList(new LambdaQueryWrapper<OGoodsSku>().eq(OGoodsSku::getSkuNum, sku.getSkuCode()));
//                        if(oGoodsSkus!=null && !oGoodsSkus.isEmpty()){
//                            sku.setErpGoodsId(oGoodsSkus.get(0).getErpGoodsId());
//                            sku.setErpGoodsSkuId(oGoodsSkus.get(0).getErpSkuId());
//                        }
//                    }
                    skuMapper.insert(sku);
                }
            }
            return 0;
        }
    }
}




