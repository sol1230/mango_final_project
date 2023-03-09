package com.mango.mango_final_project.user.model.dao;

import com.mango.mango_final_project.user.model.vo.User;
import java.util.ArrayList;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserDao {

  public User loginUser(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.selectOne("userMapper.userLogin", user);
  }

  public int insertUser(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.insert("userMapper.insertUser", user);
  }

  public int updateUser(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.update("userMapper.changeUserInfo", user);
  }

  public int deleteUser(SqlSessionTemplate sqlSession, String user_uid) {
    return sqlSession.delete("userMapper.deleteUser", user_uid);
  }

  public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
    return sqlSession.selectOne("userMapper.checkId", checkId);
  }

  public User findIdCheck(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.selectOne("userMapper.findIdCheck", user);
  }

  public User findUserPwd(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.selectOne("userMapper.findUserPwd", user);
  }

  public int changePwd(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.update("userMapper.changePwd", user);
  }

  public ArrayList<User> selectReview(
    SqlSessionTemplate sqlSession,
    User user
  ) {
    return (ArrayList) sqlSession.selectList("userMapper.selectReview", user);
  }

  public ArrayList<User> selectQna(SqlSessionTemplate sqlSession, User user) {
    return (ArrayList) sqlSession.selectList("userMapper.selectQna", user);
  }

  public User reviewCount(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.selectOne("userMapper.reviewCount", user);
  }

  public User qnaCount(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.selectOne("userMapper.qnaCount", user);
  }

  public ArrayList<User> selectWishlist(
    SqlSessionTemplate sqlSession,
    User user
  ) {
    return (ArrayList) sqlSession.selectList("userMapper.selectWishlist", user);
  }

  public User wishlistCount(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.selectOne("userMapper.wishlistCount", user);
  }

  public int deleteWishlist(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.delete("userMapper.deleteWishlist", user);
  }

  public int deleteQna(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.delete("userMapper.deleteQna", user);
  }

  public int deleteAllWishlist(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.delete("userMapper.deleteAllWishlist", user);
  }

  //
  public User getMyReviewInfo(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.selectOne("userMapper.selectReviewInfo", user);
  }

  public ArrayList<Object> deleteMyReview(SqlSessionTemplate sqlSession, User user) {
    return (ArrayList<Object>) sqlSession.selectList("userMapper.deleteReview", user);
  }

  public int insertWishlist(SqlSessionTemplate sqlSession, User user){
    return sqlSession.insert("userMapper.wineWishlistInsert", user);
  }

  public int wishlistCheck(SqlSessionTemplate sqlSession, User user) {
    return sqlSession.selectOne("userMapper.checkWishlist", user);
  }

 
public int myQnaUpdate (SqlSessionTemplate sqlSession, User user){
    return sqlSession.update("userMapper.updateQna", user);
  }

}
