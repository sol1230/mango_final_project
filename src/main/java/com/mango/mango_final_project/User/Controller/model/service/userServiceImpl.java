package com.mango.mango_final_project.User.Controller.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.User.Controller.model.dao.UserDao;
import com.mango.mango_final_project.User.Controller.model.vo.User;

@Service
public class userServiceImpl implements userService {

    @Autowired
    private UserDao uDao;

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public User loginUser(User user) {
        User loginUser = uDao.loginUser(sqlSession, user);
        return loginUser;
    }

    @Override
    public int insertUser(User user) {
        throw new UnsupportedOperationException("Unimplemented method 'insertUser'");
    }

    @Override
    public int updateUser(User user) {
        throw new UnsupportedOperationException("Unimplemented method 'updateUser'");
    }

    @Override
    public int deleteUser(String user_uid) {
        throw new UnsupportedOperationException("Unimplemented method 'deleteUser'");
    }

    @Override
    public int idCheck(String checkId) {
        throw new UnsupportedOperationException("Unimplemented method 'idCheck'");
    }
    
}
