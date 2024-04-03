package tech.qihangec.api.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 角色信息表
 * @TableName sys_role
 */
public class SysRole extends BaseEntity {

    public SysRole()
    {

    }

    public SysRole(Long roleId)
    {
        this.roleId = roleId;
    }

    /**
     * 角色ID
     */
    private Long roleId;

    /**
     * 角色名称
     */
    private String roleName;

    /**
     * 角色权限字符串
     */
    private String roleKey;

    /**
     * 显示顺序
     */
    private Integer roleSort;

    /**
     * 数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）
     */
    private String dataScope;

    /**
     * 菜单树选择项是否关联显示
     */
    private boolean menuCheckStrictly;

    /**
     * 部门树选择项是否关联显示
     */
    private Integer deptCheckStrictly;

    /**
     * 角色状态（0正常 1停用）
     */
    private String status;

    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String delFlag;

    /**
     * 创建者
     */
    private String createBy;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新者
     */
    private String updateBy;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 备注
     */
    private String remark;

    private static final long serialVersionUID = 1L;

    public boolean isMenuCheckStrictly()
    {
        return menuCheckStrictly;
    }
    private boolean flag = false;
    public void setFlag(boolean flag)
    {
        this.flag = flag;
    }
    public boolean isAdmin()
    {
        return isAdmin(this.roleId);
    }
    public static boolean isAdmin(Long roleId)
    {
        return roleId != null && 1L == roleId;
    }
    private Long[] menuIds;
    public Long[] getMenuIds()
    {
        return menuIds;
    }
    public void setMenuIds(Long[] menuIds)
    {
        this.menuIds = menuIds;
    }

    /**
     * 角色ID
     */
    public Long getRoleId() {
        return roleId;
    }

    /**
     * 角色ID
     */
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    /**
     * 角色名称
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * 角色名称
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    /**
     * 角色权限字符串
     */
    public String getRoleKey() {
        return roleKey;
    }

    /**
     * 角色权限字符串
     */
    public void setRoleKey(String roleKey) {
        this.roleKey = roleKey;
    }

    /**
     * 显示顺序
     */
    public Integer getRoleSort() {
        return roleSort;
    }

    /**
     * 显示顺序
     */
    public void setRoleSort(Integer roleSort) {
        this.roleSort = roleSort;
    }

    /**
     * 数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）
     */
    public String getDataScope() {
        return dataScope;
    }

    /**
     * 数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）
     */
    public void setDataScope(String dataScope) {
        this.dataScope = dataScope;
    }

    /**
     * 菜单树选择项是否关联显示
     */
    public boolean getMenuCheckStrictly() {
        return menuCheckStrictly;
    }

    /**
     * 菜单树选择项是否关联显示
     */
    public void setMenuCheckStrictly(boolean menuCheckStrictly) {
        this.menuCheckStrictly = menuCheckStrictly;
    }

    /**
     * 部门树选择项是否关联显示
     */
    public Integer getDeptCheckStrictly() {
        return deptCheckStrictly;
    }

    /**
     * 部门树选择项是否关联显示
     */
    public void setDeptCheckStrictly(Integer deptCheckStrictly) {
        this.deptCheckStrictly = deptCheckStrictly;
    }

    /**
     * 角色状态（0正常 1停用）
     */
    public String getStatus() {
        return status;
    }

    /**
     * 角色状态（0正常 1停用）
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * 删除标志（0代表存在 2代表删除）
     */
    public String getDelFlag() {
        return delFlag;
    }

    /**
     * 删除标志（0代表存在 2代表删除）
     */
    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    /**
     * 创建者
     */
    public String getCreateBy() {
        return createBy;
    }

    /**
     * 创建者
     */
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    /**
     * 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 更新者
     */
    public String getUpdateBy() {
        return updateBy;
    }

    /**
     * 更新者
     */
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    /**
     * 更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

}