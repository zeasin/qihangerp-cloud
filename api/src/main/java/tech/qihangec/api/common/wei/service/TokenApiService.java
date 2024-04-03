package tech.qihangec.api.common.wei.service;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;
import tech.qihangec.api.common.wei.vo.Token;

@HttpExchange
public interface TokenApiService {

    @GetExchange("/cgi-bin/token")
    Token getToken(@RequestParam String grant_type, @RequestParam String appid, @RequestParam String secret);
}
