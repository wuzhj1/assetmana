package cn.ecut.assetmana.controller;

import cn.ecut.assetmana.bean.Menu;
import cn.ecut.assetmana.bean.User;
import cn.ecut.assetmana.mapper.MenuMapper;
import cn.ecut.assetmana.service.MenuService;
import cn.ecut.assetmana.service.TokenService;
import cn.ecut.assetmana.service.UserService;

import cn.ecut.assetmana.token.UserLoginToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api")
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    MenuService menuService;
    @Autowired
    TokenService tokenService;
    User userForBase;
    //登录
    @PostMapping("/login")
    public Map<String,Object> login(@RequestBody Map<String,String> params){
        Map<String,Object> map=new HashMap<>();
        userForBase=userService.findByUsername(params.get("username"));
        if(userForBase==null){
            map.put("message","登录失败,用户不存在");
            return map;
        }else {
            if (!userForBase.getPassword().equals(params.get("password"))){
                map.put("message","登录失败,密码错误");
                map.put("code" ,401);
                return map;
            }else {
                String token = tokenService.getToken(userForBase);
                Map<String ,Object> data=new HashMap();
                data.put("token",token);

                map.put("code" ,20000);
                map.put("data", data);
                return map;
            }
        }
    }
    @UserLoginToken
    @GetMapping("/info")
    public Map<String,Object> getMessage(){
        Map<String, Object> map=new HashMap<>();
        Map<String ,Object> data=new HashMap();
        List<Menu> menus=menuService.getMenuByUser(userForBase.getId());
        data.put("routers",menus);
        data.put("msg","你已通过验证");
        data.put("name",userForBase.getName());
        data.put("avatar",userForBase.getUserface());
        map.put("code",20000);
        map.put("data",data);
        return map;
    }
    @UserLoginToken
    @GetMapping("/logout")
    public Map<String,Object> logout(){
        Map<String, Object> map=new HashMap<>();
        Map<String ,Object> data=new HashMap();
        data.put("msg","注销成功");
        map.put("code",20000);
        map.put("data",data);
        return map;
    }

}