package cn.ecut.assetmana.mapper;

import cn.ecut.assetmana.bean.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {

    List<Menu> queryAllMenus();

    List<Menu> queryMenusByRole(Long rid);

    List<Menu> queryMenusByParent(Long parentId);

    Menu queryMenuById(Long id);
}
