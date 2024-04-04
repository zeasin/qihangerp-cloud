package tech.qihangec.api.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import lombok.extern.java.Log;
import tech.qihangec.api.common.PageQuery;
import tech.qihangec.api.common.PageResult;
import tech.qihangec.api.common.ResultVo;
import tech.qihangec.api.domain.ErpRefund;
import tech.qihangec.api.service.ErpRefundService;
import tech.qihangec.api.mapper.ErpRefundMapper;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
* @author qilip
* @description 针对表【erp_refund(退换货表)】的数据库操作Service实现
* @createDate 2024-04-04 21:57:47
*/
@Log
@AllArgsConstructor
@Service
public class ErpRefundServiceImpl extends ServiceImpl<ErpRefundMapper, ErpRefund>
    implements ErpRefundService{
    private final ErpRefundMapper mapper;

    @Override
    public PageResult<ErpRefund> queryPageList(ErpRefund bo, PageQuery pageQuery) {
        LambdaQueryWrapper<ErpRefund> queryWrapper = new LambdaQueryWrapper<ErpRefund>();
        Page<ErpRefund> pages = mapper.selectPage(pageQuery.build(), queryWrapper);
        return PageResult.build(pages);
    }
//    @Override
//    public ResultVo<Integer> saveRefund(String refundId) {
//        log.info("TAO退款消息处理" + refundId);
//        List<TaoRefund> refundList = taoRefundMapper.selectList(new LambdaQueryWrapper<TaoRefund>().eq(TaoRefund::getRefundId, refundId));
//        if (refundList == null || refundList.size() == 0) {
//            // 没有找到订单信息
//            return ResultVo.error(ResultVoEnum.NotFound, "没有找到TAO售后单：" + refundId);
//        }
//        TaoRefund taoRefund = refundList.get(0);
//        List<TaoOrderItem> taoOrderItems = taoOrderItemMapper.selectList(new LambdaQueryWrapper<TaoOrderItem>().eq(TaoOrderItem::getOid, taoRefund.getOid()));
//        if(taoOrderItems == null || taoOrderItems.size()==0) {
//            return ResultVo.error(ResultVoEnum.NotFound, "没有找到TAO子订单：" + taoRefund.getOid());
//        }
//        // 查询ERP订单
//        OOrder order = null;
//        OOrderItem orderItem = null;
//        List<OOrder> oOrders = orderMapper.selectList(new LambdaQueryWrapper<OOrder>().eq(OOrder::getOrderNum, taoRefund.getTid()).eq(OOrder::getShopId, taoRefund.getShopId()));
//        if(oOrders!=null && oOrders.size()>0){
//            order = oOrders.get(0);
//            List<OOrderItem> oOrderItems = orderItemMapper.selectList(new LambdaQueryWrapper<OOrderItem>().eq(OOrderItem::getOrderId, oOrders.get(0).getId()).eq(OOrderItem::getSubOrderNum, taoRefund.getOid()));
//            if(oOrderItems!=null && oOrderItems.size()>0){
//                orderItem = oOrderItems.get(0);
//            }else{
//                return ResultVo.error(ResultVoEnum.NotFound,"没有找到TAO子订单erp信息："+taoRefund.getOid());
//            }
//        }else{
//            return ResultVo.error(ResultVoEnum.NotFound,"没有找到TAO订单erp信息："+taoRefund.getTid());
//        }
//
//        List<ORefund> oRefunds = mapper.selectList(new LambdaQueryWrapper<ORefund>().eq(ORefund::getRefundNum, refundId));
//        if (oRefunds == null || oRefunds.isEmpty()) {
//            // 新增
//            ORefund insert = new ORefund();
//            insert.setRefundNum(taoRefund.getRefundId());
//            // (10-退货 20-换货 30-维修 40-大家电安装 50-大家电移机 60-大家电增值服务 70-上门维修 90-优鲜赔 80-补发商品 100-试用收回 11-仅退款)
//            Integer refundType = null;
//            // REFUND(仅退款),REFUND_AND_RETURN(退货退款),TMALL_EXCHANGE(天猫换货),TAOBAO_EXCHANGE(淘宝换货),REPAIR(维修),RESHIPPING(补寄),OTHERS(其他)
//            if (taoRefund.getDisputeType().equals("REFUND")) {
//                refundType = 11;
//            } else if (taoRefund.getDisputeType().equals("REFUND_AND_RETURN")) {
//                refundType = 10;
//            } else if (taoRefund.getDisputeType().equals("TMALL_EXCHANGE") || taoRefund.getDisputeType().equals("TAOBAO_EXCHANGE")) {
//                refundType = 20;
//            } else if (taoRefund.getDisputeType().equals("REPAIR")) {
//                refundType = 30;
//            } else if (taoRefund.getDisputeType().equals("RESHIPPING")) {
//                refundType = 80;
//            } else if (taoRefund.getDisputeType().equals("OTHERS")) {
//                refundType = 0;
//            }
//            insert.setRefundType(refundType);
//            insert.setShopId(taoRefund.getShopId());
//            insert.setShopType(EnumShopType.TAO.getIndex());
//            insert.setOrderNum(taoRefund.getTid().toString());
//            insert.setOrderItemNum(taoRefund.getOid().toString());
//            insert.setSkuId(Long.parseLong(taoOrderItems.get(0).getSkuId()));
//            insert.setErpGoodsId(orderItem.getErpGoodsId());
//            insert.setErpSkuId(orderItem.getErpSkuId());
//            insert.setSkuNum(orderItem.getSkuNum());
//            insert.setGoodsName(orderItem.getGoodsTitle());
//            insert.setGoodsSku(orderItem.getGoodsSpec());
//            insert.setGoodsImage(orderItem.getGoodsImg());
//            insert.setQuantity(taoRefund.getNum());
//            Integer status= null;
//            //退款状态。WAIT_SELLER_AGREE(买家已经申请退款，等待卖家同意) WAIT_BUYER_RETURN_GOODS(卖家已经同意退款，等待买家退货) WAIT_SELLER_CONFIRM_GOODS(买家已经退货，等待卖家确认收货)
//            // SELLER_REFUSE_BUYER(卖家拒绝退款) CLOSED(退款关闭) SUCCESS(退款成功)
//            if(taoRefund.getStatus().equals("WAIT_SELLER_AGREE")){
//                // 10001-待审核
//                status = 10001;
//            }else if(taoRefund.getStatus().equals("WAIT_BUYER_RETURN_GOODS")){
//                // 10002-等待买家退货(待客户反馈)
//                status = 10002;
//            }else if(taoRefund.getStatus().equals("WAIT_SELLER_CONFIRM_GOODS")){
//                // 10005-等待卖家确认收货(待收货)
//                status = 10005;
//            }else if(taoRefund.getStatus().equals("SELLER_REFUSE_BUYER")){
//                // 14000-卖家拒绝退款
//                status = 14000;
//            }else if(taoRefund.getStatus().equals("CLOSED")){
//                // 10011-退款关闭（取消）
//                status = 10011;
//            }else if(taoRefund.getStatus().equals("SUCCESS")){
//                // 10010-退款成功（完成）
//                status = 10010;
//            }
//            insert.setStatus(status);
//            insert.setRefundFee(taoRefund.getRefundFee());
//            insert.setRefundReason(taoRefund.getReason());
//            insert.setRemark(taoRefund.getDesc1());
////            insert.setContactperson(taoRefund.getCustomerName());
////            insert.setMobile(taoRefund.getCustomerTel());
////            insert.setAddress(taoRefund.getPickwareAddress());
//
//            insert.setCreateTime(new Date());
//            insert.setCreateBy("REFUND_MESSAGE");
//            mapper.insert(insert);
//        } else {
//            // 修改
//            ORefund update = new ORefund();
//            update.setId(oRefunds.get(0).getId());
//            Integer status= null;
//            //退款状态。WAIT_SELLER_AGREE(买家已经申请退款，等待卖家同意) WAIT_BUYER_RETURN_GOODS(卖家已经同意退款，等待买家退货) WAIT_SELLER_CONFIRM_GOODS(买家已经退货，等待卖家确认收货)
//            // SELLER_REFUSE_BUYER(卖家拒绝退款) CLOSED(退款关闭) SUCCESS(退款成功)
//            if(taoRefund.getStatus().equals("WAIT_SELLER_AGREE")){
//                // 10001-待审核
//                status = 10001;
//            }else if(taoRefund.getStatus().equals("WAIT_BUYER_RETURN_GOODS")){
//                // 10002-等待买家退货(待客户反馈)
//                status = 10002;
//            }else if(taoRefund.getStatus().equals("WAIT_SELLER_CONFIRM_GOODS")){
//                // 10005-等待卖家确认收货(待收货)
//                status = 10005;
//            }else if(taoRefund.getStatus().equals("SELLER_REFUSE_BUYER")){
//                // 14000-卖家拒绝退款
//                status = 14000;
//            }else if(taoRefund.getStatus().equals("CLOSED")){
//                // 10011-退款关闭（取消）
//                status = 10011;
//            }else if(taoRefund.getStatus().equals("SUCCESS")){
//                // 10010-退款成功（完成）
//                status = 10010;
//            }
//            update.setStatus(status);
//            update.setUpdateTime(new Date());
//            update.setUpdateBy("REFUND_MESSAGE");
//            mapper.updateById(update);
//        }
//        return ResultVo.success();
//    }
}




