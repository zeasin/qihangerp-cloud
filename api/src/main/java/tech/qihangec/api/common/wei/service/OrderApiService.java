package tech.qihangec.api.common.wei.service;


import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.HttpExchange;
import org.springframework.web.service.annotation.PostExchange;
import tech.qihangec.api.common.wei.bo.OrderDetailBo;
import tech.qihangec.api.common.wei.bo.OrderListBo;
import tech.qihangec.api.common.wei.vo.OrderDetailVo;
import tech.qihangec.api.common.wei.vo.OrderListVo;

@HttpExchange
public interface OrderApiService {
    @PostExchange("/channels/ec/order/list/get")
    OrderListVo getOrderList(@RequestParam String access_token, @RequestBody OrderListBo bo);
    @PostExchange("/channels/ec/order/get")
    OrderDetailVo getOrderDetail(@RequestParam String access_token, @RequestBody OrderDetailBo bo);
}
