package cn.ecut.assetmana.mapper;

import cn.ecut.assetmana.bean.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleMapper {

    List<Role> queryAllRoles();

    boolean insertRole(Role role);

    List<Long> queryRolesIdByUser(Long uid);

    boolean deleteRoleByIds(@Param("ids") List<Long> ids);

    boolean deleteRoleUserByIds(@Param("ids") List<Long> ids);

    boolean deleteRoleMenuByIds(@Param("ids") List<Long> ids);

    Role queryRoleByName(String name);

    boolean updateRole(Role role);

    boolean insertRoleMenus(Long rid,List<Long> mids);
}
