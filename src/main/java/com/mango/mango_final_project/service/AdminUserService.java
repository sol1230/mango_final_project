package com.mango.mango_final_project.service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminUserService {
  @Autowired
  CommonDao commonDao;

  // ADMIN USER
  // user list
  public Object getList(Object dataMap) {
    String sqlMapId = "AdminUser.selectUserList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // pagination
  public Object userWithPagination(Object dataMap) {
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.getTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put(
        "pageBegin",
        paginations.getPageBegin()
      );
    ((Map<String, Object>) dataMap).put(
        "pageScale",
        paginations.getPageScale()
      );
    result.put("resultList", this.getList(dataMap));
    return result;
  }

  // 전체 유저의 갯수
  public Object getTotal(Object dataMap) {
    String sqlMapId = "AdminUser.selectUserTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // insert user
  public Object insertUser(Object dataMap) {
    String sqlMapId = "AdminUser.insertUser";
    Object result = commonDao.insert(sqlMapId, dataMap);
    return result;
  }

  // insert and get list + 페이지네이션(sh)
  public Object insertAndGetList(Object dataMap) {
    Object result = this.insertUser(dataMap); // --> 회원 insert 완료
    result = this.userWithPagination(dataMap); // --> 페이지네이션 + 회원 목록 리스트 출력
    return result;
  }

  // select user info 수정
  public Object getuserInfo(Object dataMap) {
    String sqlMapId = "AdminUser.selectUserInfo";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // update user info
  public Object updateUser(Object dataMap) {
    String sqlMapId = "AdminUser.updateUser";
    Object result = commonDao.update(sqlMapId, dataMap);
    return result;
  }

  // update and get list
  public Object updateAndGetList(Object dataMap) {
    Object result = this.updateUser(dataMap);
    result = this.userWithPagination(dataMap);
    return result;
  }

  // delete user
  public Object deleteUser(Object dataMap) {
    String sqlMapID = "AdminUser.deleteUser";
    Object result = commonDao.delete(sqlMapID, dataMap);
    return result;
  }

  // delete and get list
  public Object deleteAndGetList(Object dataMap) {
    Object result = this.deleteUser(dataMap);
    result = this.userWithPagination(dataMap);
    return result;
  }

  // user search
  public Object getkeyword(Object dataMap) {
    String sqlMapId = "AdminUser.serachUser";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // 검색 유저의 갯수
  public Object getSerachTotal(Object dataMap) {
    String sqlMapId = "AdminUser.searchListCount";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // user search and get list
  public Object getSearchUserAndGetList(Object dataMap) {
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.getSerachTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put(
        "pageBegin",
        paginations.getPageBegin()
      );
    ((Map<String, Object>) dataMap).put(
        "pageScale",
        paginations.getPageScale()
      );
    result.put("resultList", this.getkeyword(dataMap));
    return result;
  }
}
