package tech.qihangec.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.domain.ErpOrder;
import tech.qihangec.api.domain.ErpOrderItem;
import tech.qihangec.api.mapper.ErpOrderMapper;
import tech.qihangec.api.service.ErpOrderItemService;
import tech.qihangec.api.mapper.ErpOrderItemMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
* @author TW
* @description 针对表【erp_order_item(订单明细表)】的数据库操作Service实现
* @createDate 2024-04-03 15:57:41
*/
@AllArgsConstructor
@Service
public class ErpOrderItemServiceImpl extends ServiceImpl<ErpOrderItemMapper, ErpOrderItem>
    implements ErpOrderItemService{
    private final ErpOrderItemMapper mapper;
    private final ErpOrderMapper orderMapper;
    @Override
    public PageResult<ErpOrderItem> queryPageList(Integer shipType,Integer status,ErpOrderItem bo, PageQuery pageQuery) {
        List<String> ids = null;
        if(shipType!=null|| status!= null){
            LambdaQueryWrapper<ErpOrder> qw = new LambdaQueryWrapper<ErpOrder>()
                    .eq(shipType!=null,ErpOrder::getShipType,shipType)
                    .eq(status!=null,ErpOrder::getOrderStatus,status);
            List<ErpOrder> erpOrders = orderMapper.selectList(qw);
            if(erpOrders!=null&&erpOrders.size()>0) {
                ids = erpOrders.stream().map(m -> m.getId()).collect(Collectors.toList());
            }
        }
        if(ids == null) return PageResult.build();

        LambdaQueryWrapper<ErpOrderItem> queryWrapper = new LambdaQueryWrapper<ErpOrderItem>()
                .eq(org.springframework.util.StringUtils.hasText(bo.getOrderNum()),ErpOrderItem::getOrderNum,bo.getOrderNum())
                .in(ErpOrderItem::getOrderId,ids)
                ;
        Page<ErpOrderItem> pages = mapper.selectPage(pageQuery.build(), queryWrapper);

        return PageResult.build(pages);
    }
}




