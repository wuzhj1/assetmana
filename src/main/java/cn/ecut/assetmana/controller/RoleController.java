package cn.ecut.assetmana.controller;


import cn.ecut.assetmana.bean.ResponData;
import cn.ecut.assetmana.bean.Role;
import cn.ecut.assetmana.service.RoleService;
import cn.ecut.assetmana.token.UserLoginToken;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    RoleService roleService;

    @UserLoginToken
    @GetMapping("/allroles")
    public ResponData getAllRoles(){
        Map<String,Object> data=new HashMap<>();
        data.put("roles",roleService.findAllRoles());
        ResponData resp=new ResponData();
        resp.setCode(20000);
        resp.setMsg("获取成功");
        resp.setData(data);
        return resp;
    }
    @UserLoginToken
    @PostMapping("/addrole")
    public ResponData addRole(@RequestBody Map<String,String> params){

        Role role =new Role();
        try {
            //json转换成javabean
            BeanUtils.populate(role,params);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        //判断角色是否添加，保证角色唯一
        boolean isExist=roleService.isRoleExist(role.getName());
        ResponData resp=new ResponData();
        resp.setCode(20000);
        if(isExist){
            resp.setSuccess(false);
            resp.setMsg("添加失败，已有该角色: "+role.getName());
        }else {
            roleService.addRole(role);
            resp.setSuccess(true);
            resp.setMsg("添加成功");
        }

        return resp;
    }

    @UserLoginToken
    @PostMapping ("/delete")
    public ResponData deleteRole(@RequestBody List<Long> ids){
        roleService.deleteRole(ids);
        ResponData resp=new ResponData();
        resp.setCode(20000);
        resp.setMsg("删除成功");
        Map<String,Object> data=new HashMap<>();
        return resp;
    }

    @UserLoginToken
    @PostMapping ("/update")
    public ResponData updateRole(@RequestBody Map<String,String> params){
        Role role =new Role();
        try {
            //json转换成javabean
            BeanUtils.populate(role,params);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        boolean success=roleService.updateRole(role);

        ResponData resp=new ResponData();
        resp.setCode(20000);
        resp.setMsg("更新成功");
        resp.setSuccess(true);
        return resp;
    }
}
