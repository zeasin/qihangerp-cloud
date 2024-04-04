package tech.qihangec.api.common.wei.service;


import com.alibaba.fastjson2.JSONObject;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.HttpExchange;
import org.springframework.web.service.annotation.PostExchange;
import tech.qihangec.api.common.wei.bo.OrderDetailBo;
import tech.qihangec.api.common.wei.bo.OrderListBo;
import tech.qihangec.api.common.wei.bo.RefundDetailBo;
import tech.qihangec.api.common.wei.bo.RefundListBo;
import tech.qihangec.api.common.wei.vo.OrderDetailVo;
import tech.qihangec.api.common.wei.vo.OrderListVo;
import tech.qihangec.api.common.wei.vo.RefundDetailVo;
import tech.qihangec.api.common.wei.vo.RefundListVo;

@HttpExchange
public interface RefundApiService {
    @PostExchange("/channels/ec/aftersale/getaftersalelist")
    RefundListVo getRefundList(@RequestParam String access_token, @RequestBody RefundListBo bo);
    @PostExchange("/channels/ec/aftersale/getaftersaleorder")
    RefundDetailVo getRefundDetail(@RequestParam String access_token, @RequestBody RefundDetailBo bo);
}
