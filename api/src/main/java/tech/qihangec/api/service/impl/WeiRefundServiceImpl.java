package tech.qihangec.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.util.StringUtils;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.common.ResultVo;
import tech.qihangec.api.common.ResultVoEnum;
import tech.qihangec.api.domain.WeiOrder;
import tech.qihangec.api.domain.WeiOrderItem;
import tech.qihangec.api.domain.WeiRefund;
import tech.qihangec.api.service.WeiRefundService;
import tech.qihangec.api.mapper.WeiRefundMapper;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author qilip
* @description 针对表【wei_refund(视频号小店退款)】的数据库操作Service实现
* @createDate 2024-04-04 23:11:44
*/
@AllArgsConstructor
@Service
public class WeiRefundServiceImpl extends ServiceImpl<WeiRefundMapper, WeiRefund>
    implements WeiRefundService{
    private final WeiRefundMapper mapper;

    @Override
    public PageResult<WeiRefund> queryPageList(WeiRefund bo, PageQuery pageQuery) {
        LambdaQueryWrapper<WeiRefund> queryWrapper = new LambdaQueryWrapper<WeiRefund>()
                .eq(bo.getShopId()!=null,WeiRefund::getShopId,bo.getShopId())
                .eq(StringUtils.hasText(bo.getOrderId()),WeiRefund::getOrderId,bo.getOrderId())
                ;

        Page<WeiRefund> taoGoodsPage = mapper.selectPage(pageQuery.build(), queryWrapper);

        return PageResult.build(taoGoodsPage);
    }

    @Transactional
    @Override
    public ResultVo<Integer> saveRefund(Integer shopId, WeiRefund refund) {
        try {
            List<WeiRefund> refunds = mapper.selectList(new LambdaQueryWrapper<WeiRefund>().eq(WeiRefund::getAfterSaleOrderId, refund.getAfterSaleOrderId()));
            if (refunds != null && refunds.size() > 0) {
                // 存在，修改
                WeiRefund update = new WeiRefund();
                update.setId(refunds.get(0).getId());
                update.setOrderId(refund.getOrderId());
                update.setStatus(refund.getStatus());
                update.setUpdateTime(refund.getUpdateTime());
                update.setReturnWaybillId(refund.getReturnWaybillId());
                update.setReturnDeliveryName(refund.getReturnDeliveryName());
                update.setReturnDeliveryId(refund.getReturnDeliveryId());

                mapper.updateById(update);

                return ResultVo.error(ResultVoEnum.DataExist, "退款已经存在，更新成功");
            } else {
                // 不存在，新增
                refund.setShopId(shopId);
                mapper.insert(refund);
                return ResultVo.success();
            }
        } catch (Exception e) {
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return ResultVo.error(ResultVoEnum.SystemException, "系统异常：" + e.getMessage());
        }
    }
}




