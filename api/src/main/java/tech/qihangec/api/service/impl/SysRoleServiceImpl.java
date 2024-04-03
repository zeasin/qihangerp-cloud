//package tech.qihangec.api.service.impl;
//
//
//import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import tech.qihangec.api.common.utils.StringUtils;
//import tech.qihangec.api.domain.SysRole;
//import tech.qihangec.api.mapper.SysRoleMapper;
//import tech.qihangec.api.service.SysRoleService;
//
//import java.util.Arrays;
//import java.util.HashSet;
//import java.util.List;
//import java.util.Set;
//
///**
//* @author TW
//* @description 针对表【sys_role(角色信息表)】的数据库操作Service实现
//* @createDate 2024-03-15 16:55:10
//*/
//@Service
//public class SysRoleServiceImpl extends ServiceImpl<SysRoleMapper, SysRole>
//    implements SysRoleService {
//    @Autowired
//    private SysRoleMapper roleMapper;
//
//    @Override
//    public Set<String> selectRolePermissionByUserId(Long userId) {
//        List<SysRole> perms = roleMapper.selectRolePermissionByUserId(userId);
//        Set<String> permsSet = new HashSet<>();
//        for (SysRole perm : perms)
//        {
//            if (StringUtils.isNotNull(perm))
//            {
//                permsSet.addAll(Arrays.asList(perm.getRoleKey().trim().split(",")));
//            }
//        }
//        return permsSet;
//    }
//}
//
//
//
//
