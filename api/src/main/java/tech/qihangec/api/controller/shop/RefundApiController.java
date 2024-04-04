package tech.qihangec.api.controller.shop;

import com.alibaba.fastjson2.JSONObject;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import tech.qihangec.api.common.AjaxResult;
import tech.qihangec.api.common.ResultVoEnum;
import tech.qihangec.api.common.enums.EnumShopType;
import tech.qihangec.api.common.enums.HttpStatus;
import tech.qihangec.api.common.wei.ApiCommon;
import tech.qihangec.api.common.wei.PullRequest;
import tech.qihangec.api.common.wei.RemoteUtil;
import tech.qihangec.api.common.wei.bo.*;
import tech.qihangec.api.common.wei.service.OrderApiService;
import tech.qihangec.api.common.wei.service.RefundApiService;
import tech.qihangec.api.common.wei.vo.*;
import tech.qihangec.api.domain.*;
import tech.qihangec.api.service.SysShopPullLasttimeService;
import tech.qihangec.api.service.SysShopPullLogsService;
import tech.qihangec.api.service.WeiRefundService;

import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RequestMapping("/shop/refund")
@RestController
@AllArgsConstructor
public class RefundApiController {
    private final ApiCommon apiCommon;
    private final WeiRefundService refundService;
    private final SysShopPullLogsService pullLogsService;
    private final SysShopPullLasttimeService pullLasttimeService;

    @RequestMapping(value = "/pull_list", method = RequestMethod.POST)
    public AjaxResult pullList(@RequestBody PullRequest params) throws Exception {
        if (params.getShopId() == null || params.getShopId() <= 0) {
            return AjaxResult.error(HttpStatus.PARAMS_ERROR, "参数错误，没有店铺Id");
        }

        Date currDateTime = new Date();
        long beginTime = System.currentTimeMillis();

        var checkResult = apiCommon.checkBefore(params.getShopId());
        if (checkResult.getCode() != ResultVoEnum.SUCCESS.getIndex()) {
            return AjaxResult.error(checkResult.getCode(), checkResult.getMsg(),checkResult.getData());
        }
        String accessToken = checkResult.getData().getAccessToken();
        String serverUrl = checkResult.getData().getServerUrl();
        String appKey = checkResult.getData().getAppKey();
        String appSecret = checkResult.getData().getAppSecret();

        // 获取最后更新时间
        LocalDateTime startTime = null;
        LocalDateTime  endTime = null;
        SysShopPullLasttime lasttime = pullLasttimeService.getLasttimeByShop(params.getShopId(), "REFUND");
        if(lasttime == null){
            endTime = LocalDateTime.now();
            startTime = endTime.minusDays(1);
        }else{
            startTime = lasttime.getLasttime().minusHours(1);//取上次结束一个小时前
            endTime = startTime.plusDays(1);//取24小时
            if(endTime.isAfter(LocalDateTime.now())){
                endTime = LocalDateTime.now();
            }
        }


        RefundApiService remoting = RemoteUtil.Remoting(serverUrl, RefundApiService.class);
        RefundListBo apiBo = new RefundListBo();
        Long begin = startTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli() / 1000;
        Long end = endTime.toInstant(ZoneOffset.ofHours(8)).toEpochMilli() / 1000;
        apiBo.setBegin_create_time(begin.intValue());
        apiBo.setEnd_create_time(end.intValue());


        RefundListVo refundList = remoting.getRefundList(accessToken, apiBo);
        int insertSuccess = 0;//新增成功的订单
        int totalError = 0;
        int hasExistOrder = 0;//已存在的订单数

        if(refundList.getErrcode() == 0) {
            // 拉取到了数据 拉取详情
            if(refundList.getAfter_sale_order_id_list()!=null&&refundList.getAfter_sale_order_id_list().length>0) {
                for (var refundId : refundList.getAfter_sale_order_id_list()) {
                    RefundDetailBo bo = new RefundDetailBo();
                    bo.setAfter_sale_order_id(refundId.toString());
                    RefundDetailVo refundDetail = remoting.getRefundDetail(accessToken, bo);
                    String s="";
                    if(refundDetail.getErrcode() == 0){
                        WeiRefund refund = new WeiRefund();
                        refund.setOrderId(refundDetail.getAfter_sale_order().getOrder_id());
                        refund.setAfterSaleOrderId(refundDetail.getAfter_sale_order().getAfter_sale_order_id());
                        refund.setShopId(params.getShopId());
                        refund.setStatus(refundDetail.getAfter_sale_order().getStatus());
                        refund.setOpenid(refundDetail.getAfter_sale_order().getOpenid());
                        refund.setUnionid(refundDetail.getAfter_sale_order().getUnionid());
                        refund.setProductId(refundDetail.getAfter_sale_order().getProduct_info().getString("product_id"));
                        refund.setSkuId(refundDetail.getAfter_sale_order().getProduct_info().getString("sku_id"));
                        refund.setCount(refundDetail.getAfter_sale_order().getProduct_info().getInteger("count"));
                        refund.setFastRefund(refundDetail.getAfter_sale_order().getProduct_info().getString("fast_refund"));
                        refund.setRefundAmount(refundDetail.getAfter_sale_order().getRefund_info().getInteger("amount"));
                        refund.setRefundReason(refundDetail.getAfter_sale_order().getRefund_info().getInteger("refund_reason"));
                        refund.setReturnWaybillId(refundDetail.getAfter_sale_order().getReturn_info().getString("waybill_id"));
                        refund.setReturnDeliveryName(refundDetail.getAfter_sale_order().getReturn_info().getString("delivery_name"));
                        refund.setReturnDeliveryId(refundDetail.getAfter_sale_order().getReturn_info().getString("delivery_id"));
                        refund.setMerchantUploadInfo(JSONObject.toJSONString(refundDetail.getAfter_sale_order().getMerchant_upload_info()));
                        refund.setCreateTime(refundDetail.getAfter_sale_order().getCreate_time());
                        refund.setUpdateTime(refundDetail.getAfter_sale_order().getUpdate_time());
                        refund.setReason(refundDetail.getAfter_sale_order().getReason());
                        refund.setReasonText(refundDetail.getAfter_sale_order().getReason_text());
                        refund.setType(refundDetail.getAfter_sale_order().getType());
                        refund.setComplaintId(refundDetail.getAfter_sale_order().getComplaint_id());
                        refund.setRefundResp(JSONObject.toJSONString(refundDetail.getAfter_sale_order().getRefund_resp()));
                        refund.setDetails(JSONObject.toJSONString(refundDetail.getAfter_sale_order().getDetails()));

                        var result = refundService.saveRefund(params.getShopId(),refund);
                        if (result.getCode() == ResultVoEnum.DataExist.getIndex()) {
                            //已经存在
                            hasExistOrder++;
                        } else if (result.getCode() == ResultVoEnum.SUCCESS.getIndex()) {
                            insertSuccess++;
                        } else {
                            totalError++;
                        }
                    }
                }
            }

        }
        // 更新时间
        if(lasttime == null){
            // 新增
            SysShopPullLasttime insertLasttime = new SysShopPullLasttime();
            insertLasttime.setShopId(params.getShopId());
            insertLasttime.setCreateTime(new Date());
            insertLasttime.setLasttime(endTime);
            insertLasttime.setPullType("REFUND");
            pullLasttimeService.save(insertLasttime);

        }else {
            // 修改
            SysShopPullLasttime updateLasttime = new SysShopPullLasttime();
            updateLasttime.setId(lasttime.getId());
            updateLasttime.setUpdateTime(new Date());
            updateLasttime.setLasttime(endTime);
            pullLasttimeService.updateById(updateLasttime);
        }

        SysShopPullLogs logs = new SysShopPullLogs();
        logs.setShopType(EnumShopType.WEI.getIndex());
        logs.setShopId(params.getShopId());
        logs.setPullType("REFUND");
        logs.setPullWay("主动拉取");
        logs.setPullParams("{startTime:"+startTime+",endTime:"+endTime+"}");
        logs.setPullResult("{insert:"+insertSuccess+",update:"+hasExistOrder+",fail:"+totalError+"}");
        logs.setPullTime(currDateTime);
        logs.setDuration(System.currentTimeMillis() - beginTime);
        pullLogsService.save(logs);

        return AjaxResult.success();
    }
}
