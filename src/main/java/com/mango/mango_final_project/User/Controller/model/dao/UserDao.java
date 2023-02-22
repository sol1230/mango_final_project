package com.mango.mango_final_project.User.Controller.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mango.mango_final_project.User.Controller.model.vo.User;

@Repository
public class UserDao {
    
    public User loginUser(SqlSessionTemplate sqlSession, User user){
        return sqlSession.selectOne("userMapper.userLogin", user);
    }
}
