package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class WineCountryService {
  @Autowired
  CommonDao commonDao;

  // 프랑스
  public Object wineFranceList(Object dataMap){
    String sqlMapId = "WineCountry.wineFranceList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineFranceSelectList(Object dataMap){
    String sqlMapId = "WineCountry.wineFranceSelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineFranceListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineFranceTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineFranceList(dataMap));
    return result;
  }
  public Object wineFranceSelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineFranceTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineFranceSelectList(dataMap));
    return result;
  }
  public Object wineFranceTotal(Object dataMap){
  String sqlMapId = "WineCountry.wineFranceTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }

  // 스페인
  public Object wineSpainList(Object dataMap){
    String sqlMapId = "WineCountry.wineSpainList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineSpainSelectList(Object dataMap){
    String sqlMapId = "WineCountry.wineSpainSelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineSpainListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineSpainTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineSpainList(dataMap));
    return result;
  }
  public Object wineSpainSelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineSpainTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineSpainSelectList(dataMap));
    return result;
  }
  public Object wineSpainTotal(Object dataMap){
  String sqlMapId = "WineCountry.wineSpainTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }

  // 이탈리아
  public Object wineItalyList(Object dataMap){
    String sqlMapId = "WineCountry.wineItalyList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineItalySelectList(Object dataMap){
    String sqlMapId = "WineCountry.wineItalySelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineItalyListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineItalyTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineItalyList(dataMap));
    return result;
  }
  public Object wineItalySelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineItalyTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineItalySelectList(dataMap));
    return result;
  }
  public Object wineItalyTotal(Object dataMap){
  String sqlMapId = "WineCountry.wineItalyTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }

  // 독일
  public Object wineGermanyList(Object dataMap){
    String sqlMapId = "WineCountry.wineGermanyList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineGermanySelectList(Object dataMap){
    String sqlMapId = "WineCountry.wineGermanySelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineGermanyListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineGermanyTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineGermanyList(dataMap));
    return result;
  }
  public Object wineGermanySelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineGermanyTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineGermanySelectList(dataMap));
    return result;
  }
  public Object wineGermanyTotal(Object dataMap){
  String sqlMapId = "WineCountry.wineGermanyTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }

  // 칠레
  public Object wineChileList(Object dataMap){
    String sqlMapId = "WineCountry.wineChileList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineChileSelectList(Object dataMap){
    String sqlMapId = "WineCountry.wineChileSelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineChileListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineChileTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineChileList(dataMap));
    return result;
  }
  public Object wineChileSelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineChileTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineChileSelectList(dataMap));
    return result;
  }
  public Object wineChileTotal(Object dataMap){
  String sqlMapId = "WineCountry.wineChileTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }

  // 미국
  public Object wineUsaList(Object dataMap){
    String sqlMapId = "WineCountry.wineUsaList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineUsaSelectList(Object dataMap){
    String sqlMapId = "WineCountry.wineUsaSelectList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
  public Object wineUsaListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineUsaTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineUsaList(dataMap));
    return result;
  }
  public Object wineUsaSelectListWithPagination(Object dataMap){
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.wineUsaTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
    result.put("resultList", this.wineUsaSelectList(dataMap));
    return result;
  }
  public Object wineUsaTotal(Object dataMap){
  String sqlMapId = "WineCountry.wineUsaTotal";
  Object result = commonDao.getOne(sqlMapId, dataMap);
  return result;
  }
}
