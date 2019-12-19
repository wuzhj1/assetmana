package cn.ecut.assetmana.service;

import cn.ecut.assetmana.bean.Menu;
import cn.ecut.assetmana.mapper.MenuMapper;
import cn.ecut.assetmana.mapper.RoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MenuService {

    @Autowired
    MenuMapper menuMapper;
    @Autowired
    RoleMapper roleMapper;

    public List<Menu> getMenuByUser(Long uid){
        List<Long> roles=roleMapper.queryRolesIdByUser(uid);
        List<Menu> list=new ArrayList<>();
        for(Long i:roles){
            list.addAll(menuMapper.queryMenusByRole(i));
        }
        return list;
    }

    public List<Menu> getMenuByParentId(Long parentid){
        return menuMapper.queryMenusByParent(parentid);
    }

    public List<Menu> getMenuByRole(Long rid) {
        return menuMapper.queryMenusByRole(rid);
    }
}
