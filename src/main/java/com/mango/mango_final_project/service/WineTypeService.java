package com.mango.mango_final_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;

@Service
public class WineTypeService {
    @Autowired
    CommonDao commonDao;

    public Object redWineList(Object dataMap){
        String sqlMapId = "WineType.redwineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
      }
      public Object whiteWineList(Object dataMap){
        String sqlMapId = "WineType.whitewineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
      }
      public Object roseWineList(Object dataMap){
        String sqlMapId = "WineType.rosewineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
      }
      public Object sparklingWineList(Object dataMap){
        String sqlMapId = "WineType.sparklingwineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
      }
}
