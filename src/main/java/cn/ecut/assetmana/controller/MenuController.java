package cn.ecut.assetmana.controller;


import cn.ecut.assetmana.bean.Menu;
import cn.ecut.assetmana.mapper.MenuMapper;
import cn.ecut.assetmana.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class MenuController {

    @Autowired
    MenuService menuService;

    @GetMapping("/menus")
    public Map<String ,Object> getMenuByParent(){
        List<Menu>menus=menuService.getMenuByParentId(1L);
        Map<String,Object> map=new HashMap<>();
        map.put("data",menus);
        return map;
    }
    @GetMapping("/role/menus")
    public Map<String ,Object> getMenuByrole(){
        List<Menu>menus=menuService.getMenuByRole(1L);
        Map<String,Object> map=new HashMap<>();
        map.put("data",menus);
        return map;
    }
}
