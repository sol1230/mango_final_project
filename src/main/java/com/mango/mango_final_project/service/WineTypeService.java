package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class WineTypeService {
    @Autowired
    CommonDao commonDao;

      // 레드 와인
      public Object redwineList(Object dataMap){
        String sqlMapId = "WineType.redwineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
      }
      public Object redwineListWithPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.redwineTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.redwineList(dataMap));
        return result;
      }
      public Object redwineTotal(Object dataMap){
        String sqlMapId = "WineType.redwineTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
      return result;
      }

      // 화이트 와인
      public Object whitewineList(Object dataMap){
        String sqlMapId = "WineType.whitewineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
      }
      public Object whitewineListWithPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.whitewineTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.whitewineList(dataMap));
        return result;
      }
      public Object whitewineTotal(Object dataMap){
        String sqlMapId = "WineType.whitewineTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
      return result;
      }

      // 로제 와인
      public Object rosewineList(Object dataMap){
        String sqlMapId = "WineType.rosewineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
      }
      public Object rosewineListWithPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.rosewineTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.rosewineList(dataMap));
        return result;
      }
      public Object rosewineTotal(Object dataMap){
        String sqlMapId = "WineType.rosewineTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
      return result;
      }

      // 스파클링 와인
      public Object sparklingwineList(Object dataMap){
        String sqlMapId = "WineType.sparklingwineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
      }
      public Object sparklingwineListWithPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.sparklingwineTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.sparklingwineList(dataMap));
        return result;
      }
      public Object sparklingwineTotal(Object dataMap){
        String sqlMapId = "WineType.sparklingwineTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
      return result;
      }
}
