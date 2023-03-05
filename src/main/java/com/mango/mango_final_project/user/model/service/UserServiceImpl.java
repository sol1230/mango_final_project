package com.mango.mango_final_project.user.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mango.mango_final_project.user.model.dao.UserDao;
import com.mango.mango_final_project.user.model.vo.User;

@Transactional
@Service
public class UserServiceImpl implements UserService {

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
    
    @Override
    public User findIdCheck(User user) {
        User findIdCheck = uDao.findIdCheck(sqlSession, user);
        return findIdCheck;
    }

    @Override
    public User findUserPwd(User user) {
        User findUserPwd = uDao.findUserPwd(sqlSession, user);
        return findUserPwd;
    }

    @Override
    public int changePwd(User user) {
        int changePwd = uDao.changePwd(sqlSession, user);
        return changePwd;
    }
    

}