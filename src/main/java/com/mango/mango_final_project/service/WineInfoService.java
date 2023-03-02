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
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  public Object wineReviewWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineReviewTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineInfoList(dataMap));
    return result;
  }
  public Object wineReviewTotal(Object dataMap){
  String sqlMapId = "WineInfo.wineReviewTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }
}
