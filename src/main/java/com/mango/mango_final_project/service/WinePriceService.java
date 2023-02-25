package com.mango.mango_final_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;

@Service
public class WinePriceService {
  @Autowired
  CommonDao commonDao;

  public Object winePrice3List(Object dataMap){
    String sqlMapId = "WinePrice.winePrice3List";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }
}
