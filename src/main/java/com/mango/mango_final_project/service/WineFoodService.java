package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class WineFoodService {
  @Autowired
  CommonDao commonDao;

  // 소고기
  public Object wineBeefList(Object dataMap){
    String sqlMapId = "WineFood.wineBeefList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineBeefListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineBeefTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineBeefList(dataMap));
    return result;
  }
  public Object wineBeefTotal(Object dataMap){
    String sqlMapId = "WineFood.wineBeefTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 돼지고기
  public Object winePorkList(Object dataMap){
    String sqlMapId = "WineFood.winePorkList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePorkListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePorkTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePorkList(dataMap));
    return result;
  }
  public Object winePorkTotal(Object dataMap){
    String sqlMapId = "WineFood.winePorkTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 양고기
  public Object wineLambList(Object dataMap){
    String sqlMapId = "WineFood.wineLambList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineLambListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineLambTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineLambList(dataMap));
    return result;
  }
  public Object wineLambTotal(Object dataMap){
    String sqlMapId = "WineFood.wineLambTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 닭고기
  public Object wineChickenList(Object dataMap){
    String sqlMapId = "WineFood.wineChickenList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineChickenListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineChickenTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineChickenList(dataMap));
    return result;
  }
  public Object wineChickenTotal(Object dataMap){
    String sqlMapId = "WineFood.wineChickenTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 치즈
  public Object wineCheeseList(Object dataMap){
    String sqlMapId = "WineFood.wineCheeseList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineCheeseListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineCheeseTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineCheeseList(dataMap));
    return result;
  }
  public Object wineCheeseTotal(Object dataMap){
    String sqlMapId = "WineFood.wineCheeseTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 버섯
  public Object wineMushroomList(Object dataMap){
    String sqlMapId = "WineFood.wineMushroomList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineMushroomListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineMushroomTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineMushroomList(dataMap));
    return result;
  }
  public Object wineMushroomTotal(Object dataMap){
    String sqlMapId = "WineFood.wineMushroomTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }
}
