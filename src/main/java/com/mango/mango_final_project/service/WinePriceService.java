package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class WinePriceService {
  @Autowired
  CommonDao commonDao;

  // 3만원 이하 와인
  public Object winePrice3List(Object dataMap){
    String sqlMapId = "WinePrice.winePrice3List";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice3ListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice3Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice3List(dataMap));
    return result;
  }
  public Object winePrice3SelectList(Object dataMap){
    String sqlMapId = "WinePrice.winePrice3SelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice3SelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice3Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice3SelectList(dataMap));
    return result;
  }
  public Object winePrice3Total(Object dataMap){
    String sqlMapId = "WinePrice.winePrice3Total";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }
  
  // 3만원 ~ 6만원
  public Object winePrice3_6List(Object dataMap){
    String sqlMapId = "WinePrice.winePrice3_6List";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice3_6ListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice3_6Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice3_6List(dataMap));
    return result;
  }
  public Object winePrice3_6SelectList(Object dataMap){
    String sqlMapId = "WinePrice.winePrice3_6SelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice3_6SelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice3_6Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice3_6SelectList(dataMap));
    return result;
  }
  public Object winePrice3_6Total(Object dataMap){
    String sqlMapId = "WinePrice.winePrice3_6Total";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 6만원 ~ 9만원
  public Object winePrice6_9List(Object dataMap){
    String sqlMapId = "WinePrice.winePrice6_9List";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice6_9ListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice6_9Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice6_9List(dataMap));
    return result;
  }
  public Object winePrice6_9SelectList(Object dataMap){
    String sqlMapId = "WinePrice.winePrice6_9SelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice6_9SelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice6_9Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice6_9SelectList(dataMap));
    return result;
  }
  public Object winePrice6_9Total(Object dataMap){
    String sqlMapId = "WinePrice.winePrice6_9Total";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 9만원 ~ 15만원
  public Object winePrice9_15List(Object dataMap){
    String sqlMapId = "WinePrice.winePrice9_15List";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice9_15ListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice9_15Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice9_15List(dataMap));
    return result;
  }
  public Object winePrice9_15SelectList(Object dataMap){
    String sqlMapId = "WinePrice.winePrice9_15SelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice9_15SelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice9_15Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice9_15SelectList(dataMap));
    return result;
  }
  public Object winePrice9_15Total(Object dataMap){
    String sqlMapId = "WinePrice.winePrice9_15Total";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 15만원 ~ 20만원
  public Object winePrice15_20List(Object dataMap){
    String sqlMapId = "WinePrice.winePrice15_20List";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice15_20ListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice15_20Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice15_20List(dataMap));
    return result;
  }
  public Object winePrice15_20SelectList(Object dataMap){
    String sqlMapId = "WinePrice.winePrice15_20SelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice15_20SelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice15_20Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice15_20SelectList(dataMap));
    return result;
  }
  public Object winePrice15_20Total(Object dataMap){
    String sqlMapId = "WinePrice.winePrice15_20Total";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // 20만원 이상
  public Object winePrice20List(Object dataMap){
    String sqlMapId = "WinePrice.winePrice20List";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice20ListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice20Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice20List(dataMap));
    return result;
  }
  public Object winePrice20SelectList(Object dataMap){
    String sqlMapId = "WinePrice.winePrice20SelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object winePrice20SelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.winePrice20Total(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.winePrice20SelectList(dataMap));
    return result;
  }
  public Object winePrice20Total(Object dataMap){
    String sqlMapId = "WinePrice.winePrice20Total";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }
}
