package tech.qihangec.api.common.wei.service;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.HttpExchange;
import org.springframework.web.service.annotation.PostExchange;
import tech.qihangec.api.common.wei.bo.GoodsDetailApiBo;
import tech.qihangec.api.common.wei.bo.GoodsListApiBo;
import tech.qihangec.api.common.wei.vo.GoodsDetailVo;
import tech.qihangec.api.common.wei.vo.GoodsListVo;

@HttpExchange
public interface GoodsApiService {
    @PostExchange("/channels/ec/product/list/get")
    GoodsListVo getGoodsList(@RequestParam String access_token, @RequestBody GoodsListApiBo bo);
    @PostExchange("/channels/ec/product/get")
    GoodsDetailVo getGoodsDetail(@RequestParam String access_token, @RequestBody GoodsDetailApiBo bo);
}
