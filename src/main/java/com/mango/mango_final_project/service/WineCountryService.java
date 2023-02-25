package com.mango.mango_final_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;

@Service
public class WineCountryService {
  @Autowired
  CommonDao commonDao;

  public Object wineFranceList(Object dataMap){
    String sqlMapId = "WineCountry.wineFranceList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  public Object wineSpainList(Object dataMap){
    String sqlMapId = "WineCountry.wineSpainList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
}
