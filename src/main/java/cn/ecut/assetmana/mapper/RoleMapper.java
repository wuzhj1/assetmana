package cn.ecut.assetmana.mapper;

import cn.ecut.assetmana.bean.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleMapper {

    List<Role> queryAllRoles();

    List<Long> queryRolesIdByUser(Long uid);

    Role queryRoleById(Long id);
}
