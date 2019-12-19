package cn.ecut.assetmana.service;

import cn.ecut.assetmana.bean.User;
import cn.ecut.assetmana.mapper.UserMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;

    public User findUserById(String userId) {
        return userMapper.queryUserById(Long.valueOf(userId));
    }

    public User findByUsername( String name) {
        return userMapper.queryUserByName(name);
    }
}
