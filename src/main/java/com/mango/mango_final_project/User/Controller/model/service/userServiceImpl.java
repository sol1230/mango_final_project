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
        int result = uDao.insertUser(sqlSession, user);
        return result;
    }

    @Override
    public int updateUser(User user) {
        return uDao.updateUser(sqlSession, user);
    }

    @Override
    public int deleteUser(String user_uid) {
        return uDao.deleteUser(sqlSession, user_uid);
    }

    @Override
    public int idCheck(String checkId) {
        return uDao.idCheck(sqlSession, checkId);
    }
    
}
