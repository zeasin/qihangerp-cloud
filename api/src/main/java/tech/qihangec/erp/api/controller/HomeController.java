package tech.qihangec.erp.api.controller;

import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import tech.qihangec.erp.service.UserService;

@RestController
public class HomeController {

    @DubboReference
    private UserService userService;
    @GetMapping("/home")
    public Object home(){
//        return "HOME";
        return userService.getUserById(1L);
    }
}
