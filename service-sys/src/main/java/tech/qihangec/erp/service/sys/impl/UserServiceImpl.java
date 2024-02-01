package tech.qihangec.erp.service.sys.impl;

import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Service;
import tech.qihangec.erp.domain.User;
import tech.qihangec.erp.service.UserService;

@DubboService
@Service
public class UserServiceImpl implements UserService {
    @Override
    public User getUserById(Long id) {
        User user = new User();
        user.setId("1000");
        user.setName("admin");
        return user;
    }
}
