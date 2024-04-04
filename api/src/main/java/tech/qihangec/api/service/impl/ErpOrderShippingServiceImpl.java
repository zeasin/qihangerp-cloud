package tech.qihangec.api.service.impl;

import com.alibaba.fastjson2.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.common.ResultVo;
import tech.qihangec.api.common.ResultVoEnum;
import tech.qihangec.api.domain.ErpOrder;
import tech.qihangec.api.domain.ErpOrderItem;
import tech.qihangec.api.domain.ErpOrderShipping;
import tech.qihangec.api.mapper.ErpOrderItemMapper;
import tech.qihangec.api.mapper.ErpOrderMapper;
import tech.qihangec.api.service.ErpOrderShippingService;
import tech.qihangec.api.mapper.ErpOrderShippingMapper;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
* @author TW
* @description 针对表【erp_order_shipping(发货记录表)】的数据库操作Service实现
* @createDate 2024-04-03 15:57:41
*/
@AllArgsConstructor
@Service
public class ErpOrderShippingServiceImpl extends ServiceImpl<ErpOrderShippingMapper, ErpOrderShipping>
    implements ErpOrderShippingService{
    private final ErpOrderShippingMapper mapper;
    private final ErpOrderMapper orderMapper;
    private final ErpOrderItemMapper itemMapper;

    @Override
    public PageResult<ErpOrderShipping> queryPageList(ErpOrderShipping shipping, PageQuery pageQuery) {
        LambdaQueryWrapper<ErpOrderShipping> queryWrapper = new LambdaQueryWrapper<ErpOrderShipping>()
                .eq(StringUtils.hasText(shipping.getOrderNum()),ErpOrderShipping::getOrderNum, shipping.getOrderNum())
                .eq(StringUtils.hasText(shipping.getShipCode()),ErpOrderShipping::getShipCode, shipping.getShipCode())
                .eq(shipping.getShopId() != null, ErpOrderShipping::getShopId, shipping.getShopId());

        Page<ErpOrderShipping> pages = mapper.selectPage(pageQuery.build(), queryWrapper);
        return PageResult.build(pages);
    }

    @Transactional
    @Override
    public ResultVo<Integer> handShip(ErpOrderShipping shipping) {
        // 查询店铺订单是否存在
        List<ErpOrder> oOrders = orderMapper.selectList(new LambdaQueryWrapper<ErpOrder>().eq(ErpOrder::getOrderNum, shipping.getOrderNum()).eq(ErpOrder::getShopId, shipping.getShopId()));
        if(oOrders== null || oOrders.isEmpty()) {
            // 没有找到订单
            return ResultVo.error(ResultVoEnum.NotFound,shipping.getOrderNum()+"订单未找到");
        }
        // 查询订单ITEM
        List<ErpOrderItem> oOrderItems = itemMapper.selectList(new LambdaQueryWrapper<ErpOrderItem>().eq(ErpOrderItem::getOrderId, oOrders.get(0).getId()));
        shipping.setShipTime(new Date());
        shipping.setPackages(JSONObject.toJSONString(oOrderItems));
        shipping.setOrderId(oOrders.get(0).getId());
        shipping.setRemark("手动发货");
        shipping.setCreateTime(new Date());
        mapper.insert(shipping);
        // 回写状态
        ErpOrder update = new ErpOrder();
        update.setId(oOrders.get(0).getId());
        update.setOrderStatus(2);//2已发货
        update.setShippingTime(new Date());
        update.setShippingCompany(shipping.getShipCompany());
        update.setShippingNumber(shipping.getShipCode());
        update.setShippingMan(shipping.getShipOperator());
        update.setUpdateTime(new Date());
        update.setUpdateBy("手动发货");
        orderMapper.updateById(update);

        return ResultVo.success();
    }
}




