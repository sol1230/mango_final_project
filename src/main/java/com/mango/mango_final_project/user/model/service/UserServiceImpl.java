package com.mango.mango_final_project.user.model.service;
import com.mango.mango_final_project.user.model.dao.UserDao;
import com.mango.mango_final_project.user.model.vo.User;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


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

    @Override
    public ArrayList<User> selectReview(User user) {
        ArrayList<User> selectReview = uDao.selectReview(sqlSession, user);
        return selectReview;
    }

    @Override
    public ArrayList<User> selectQna(User user) {
        ArrayList<User> selectQna = uDao.selectQna(sqlSession, user);
        return selectQna;
    }

    @Override
    public User reviewCount(User user) {
        User reviewCount = uDao.reviewCount(sqlSession, user);
        return reviewCount;
    }

    @Override
    public User qnaCount(User user) {
        User qnaCount = uDao.qnaCount(sqlSession, user);
        return qnaCount;
    }

    @Override
    public ArrayList<User> selectWishlist(User user) {
        ArrayList<User> selectWishlist = uDao.selectWishlist(sqlSession, user);
        return selectWishlist;
    }

    @Override
    public User wishlistCount(User user) {
        User wishlistCount = uDao.wishlistCount(sqlSession, user);
        return wishlistCount;
    }

    @Override
    public int deleteWishlist(User user) {
        return uDao.deleteWishlist(sqlSession, user);
    }

    @Override
    public int deleteAllWishlist(User user) {
        return uDao.deleteAllWishlist(sqlSession, user);
    }

   

   


   
    

}
