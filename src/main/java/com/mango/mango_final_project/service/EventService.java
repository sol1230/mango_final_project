package com.mango.mango_final_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;

@Service
public class EventService {

    @Autowired
    CommonDao commonDao;

    // 이벤트 리스트 출력
    public Object getEventList(Object dataMap) {
        String sqlMapId = "Event.selectEventList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }
    
    // 진행중, 종료 이벤트 검색 
    public Object getEventListSearchWithDate(Object dataMap) {
        String sqlMapId = "Event.selectEventListSearchWithDate";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }
}
