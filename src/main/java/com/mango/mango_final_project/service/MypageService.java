package com.mango.mango_final_project.service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.user.model.dao.UserDao;
import com.mango.mango_final_project.user.model.vo.User;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MypageService {
  @Autowired
  CommonDao commonDao;

  @Autowired
  UserDao userDao;

  SqlSessionTemplate sqlSession;
  User user;

  // REVIEW
  // 리뷰 수정 페이지
  public Object getMyReviewInfo(Object dataMap) {
    String sqlMapId = "userMapper.selectReviewInfo";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 리뷰 수정 완료
  public Object updateMyReview(Object dataMap) {
    String sqlMapId = "userMapper.updateReview";
    Object result = commonDao.update(sqlMapId, dataMap);
    return result;
  }

  // 리뷰 수정 완료 후 리뷰 페이지
  public Object updateMyReviewAndGetMyReview(Object dataMap) {
    Object result = this.updateMyReview(dataMap);
    result = userDao.selectReview(sqlSession, user);
    return result;
  }

  // 리뷰 삭제 페이지
  public Object deleteMyReview(Object dataMap) {
    String sqlMapId = "userMapper.deleteReview";
    Object result = commonDao.delete(sqlMapId, dataMap);
    return result;
  }

  // 리뷰 삭제 후 리뷰 페이지
  public Object deleteMyReviewAndGetMyReview(Object dataMap) {
    Object result = this.deleteMyReview(dataMap);
    result = userDao.selectReview(sqlSession, user);
    return result;
  }

  // QNA
  // 문의 수정 페이지
  public Object getMyQnaInfo(Object dataMap) {
    String sqlMapId = "userMapper.selectQnaInfo";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 문의 수정 완료
  public Object updateMyQna(Object dataMap) {
    String sqlMapId = "userMapper.updateQna";
    Object result = commonDao.update(sqlMapId, dataMap);
    return result;
  }

  // 문의 수정 후 문의 페이지
  public Object updateMyQnaAndGetMyQna(Object dataMap) {
    Object result = this.updateMyQna(dataMap);
    result = userDao.selectQna(sqlSession, user);
    return result;
  }

  // 문의 삭제 페이지
  public Object deleteMyQna(Object dataMap) {
    String sqlMapId = "userMapper.deleteQna";
    Object result = commonDao.delete(sqlMapId, dataMap);
    return result;
  }

  // 리뷰 삭제 후 리뷰 페이지
  public Object deleteMyQnaAndGetMyQna(Object dataMap) {
    Object result = this.deleteMyQna(dataMap);
    result = userDao.selectQna(sqlSession, user);
    return result;
  }
}
