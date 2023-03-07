package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class WineListService {
  @Autowired
  CommonDao commonDao;

  public Object wineList(Object dataMap){
    String sqlMapId = "WineList.wineList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  public Object wineSelectList(Object dataMap){
    String sqlMapId = "WineList.wineSelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  public Object wineListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineList(dataMap));
    return result;
  }
  public Object wineSelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineSelectList(dataMap));
    return result;
  }

  public Object wineTotal(Object dataMap){
  String sqlMapId = "WineList.wineTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }
}
