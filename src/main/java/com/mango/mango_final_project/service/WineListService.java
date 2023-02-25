package com.mango.mango_final_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;

@Service
public class WineListService {
  @Autowired
  CommonDao commonDao;

  public Object wineList(Object dataMap){
    String sqlMapId = "WineList.wineList";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
}
