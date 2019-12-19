package cn.ecut.assetmana.mapper;

import cn.ecut.assetmana.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserMapper {

    User queryUserByNameAndPwd(String name, String password);

    User queryUserById(Long id);

    List<User> queryAllUsers();


    User queryUserByName(@Param("name") String name);
}
