package cn.ecut.assetmana.service;

import cn.ecut.assetmana.bean.Role;
import cn.ecut.assetmana.mapper.RoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RoleService {

    @Autowired
    RoleMapper roleMapper;

    /**
     * 查找所有角色
     * @return
     */
    public List<Role> findAllRoles(){
        return roleMapper.queryAllRoles();
    }

    public boolean isRoleExist(String name){
        boolean exist=roleMapper.queryRoleByName(name)==null? false:true;
        System.out.println(exist);

        return exist;
    }

    /**
     * 增加角色
     * @param role
     * @return
     */
    public boolean addRole(Role role){
        return roleMapper.insertRole(role);
    }

    /**
     * 角色删除，关联表也一并删除，需加入事务控制
     * @param ids
     * @return
     */
    @Transactional
    public boolean deleteRole(List<Long> ids){
        return  roleMapper.deleteRoleByIds(ids)
                &&roleMapper.deleteRoleMenuByIds(ids)
                &&roleMapper.deleteRoleUserByIds(ids);
    }


    public boolean updateRole(Role role){
        return  roleMapper.updateRole(role);
    }


}
