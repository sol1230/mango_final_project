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

  public Object wineInfoList(Object dataMap){
    String sqlMapId = "WineInfo.wineInfo";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }
  public Object wineStoreInfoList(Object dataMap){
    String sqlMapId = "WineInfo.wineStoreInfo";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineReviewInfoList(Object dataMap){
    String sqlMapId = "WineInfo.wineReviewInfo";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineQNAInfoList(Object dataMap){
    String sqlMapId = "WineInfo.wineQNAInfo";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  public Object wineInfoWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineInfoTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineInfoList(dataMap));
    return result;
  }
  public Object wineInfoTotal(Object dataMap){
  String sqlMapId = "WineInfo.wineInfoTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }
}
