package cn.ecut.assetmana.mapper;

import cn.ecut.assetmana.bean.Menu;
import cn.ecut.assetmana.bean.TreeMenu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {

    List<TreeMenu> queryAllTreeMenus();
    List<TreeMenu> queryTreeMenusByParent(Long parentId);

    List<Menu> queryMenusByRole(Long rid);

    List<Menu> queryMenusByParent(Long parentId);

    Menu queryMenuById(Long id);
}
