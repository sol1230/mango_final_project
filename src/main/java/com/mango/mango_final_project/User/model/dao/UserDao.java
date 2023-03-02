package com.mango.mango_final_project.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mango.mango_final_project.user.model.vo.User;

@Repository
public class UserDao {
    
    public User loginUser(SqlSessionTemplate sqlSession, User user){
        return sqlSession.selectOne("userMapper.userLogin", user);
    }

    public int insertUser(SqlSessionTemplate sqlSession, User user){
        return sqlSession.insert("userMapper.insertUser", user);
    }

    public int updateUser(SqlSessionTemplate sqlSession, User user){
        return sqlSession.update("userMapper.changeUserInfo", user);
    }

    public int deleteUser(SqlSessionTemplate sqlSession, String user_uid){
        return sqlSession.delete("userMapper.deleteUser", user_uid);
    }

    public int idCheck(SqlSessionTemplate sqlSession, String checkId){
        return sqlSession.selectOne("userMapper.checkId", checkId);
    }

}