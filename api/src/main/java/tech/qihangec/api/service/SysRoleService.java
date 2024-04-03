package tech.qihangec.api.service;

import com.baomidou.mybatisplus.extension.service.IService;
import tech.qihangec.api.domain.SysRole;


import java.util.Set;

/**
* @author TW
* @description 针对表【sys_role(角色信息表)】的数据库操作Service
* @createDate 2024-03-15 16:55:10
*/
public interface SysRoleService extends IService<SysRole> {
    Set<String> selectRolePermissionByUserId(Long userId);
}
