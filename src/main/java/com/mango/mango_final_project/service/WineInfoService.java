package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class WineInfoService {
  @Autowired
  CommonDao commonDao;

  // 와인 상세 정보
  public Object wineInfoList(Object dataMap){
    String sqlMapId = "WineInfo.wineInfo";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 판매처 정보
  public Object wineStoreInfoList(Object dataMap){
    String sqlMapId = "WineInfo.wineStoreInfo";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // 리뷰 목록
  public Object wineReviewInfoList(Object dataMap){
    String sqlMapId = "WineInfo.wineReviewInfo";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  // 리뷰 total
  public Object wineReviewTotal(Object dataMap){
    String sqlMapId = "WineInfo.wineReviewTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
    }
  
  // 리뷰 insert
  public Object wineReviewInsert(Object dataMap) {
    String sqlMapId = "WineInfo.wineReviewInsert";
    Object result = commonDao.insert(sqlMapId, dataMap);
    return result;
  }
  
  // 리뷰 pagination
  public Object wineReviewWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineReviewTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineReviewInfoList(dataMap));
    return result;
  }
  
  // 리뷰 insert + pagination
  public Object wineReviewInsertAndList(Object dataMap){
    Object result = this.wineReviewInsert(dataMap);
    result = this.wineReviewWithPagination(dataMap);
    return result;
  }

  // QNA 목록
  public Object wineQNAInfoList(Object dataMap){
    String sqlMapId = "WineInfo.wineQNAInfo";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // QNA total
  public Object wineQNATotal(Object dataMap){
  String sqlMapId = "WineInfo.wineQNATotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }

  // QNA insert
  public Object wineQNAInsert(Object dataMap) {
    String sqlMapId = "WineInfo.wineQNAInsert";
    Object result = commonDao.insert(sqlMapId, dataMap);
    return result;
  }

  // QNA pagination
  public Object wineQNAWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineQNATotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineQNAInfoList(dataMap));
    return result;
  }

  // QNA insert + pagination
  public Object wineQNAInsertAndList(Object dataMap){
    Object result = this.wineQNAInsert(dataMap);
    result = this.wineQNAWithPagination(dataMap);
    return result;
  }

  // Wishlist 목록
  public Object wineWishlistCheck(Object dataMap){
    String sqlMapId = "WineInfo.wishlistCheck";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }
}
