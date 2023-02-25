package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class AdminEventService {
    
    @Autowired
    CommonDao commonDao;

    @Autowired
    AttachFileService attachFileService;

    // 이벤트 리스트 출력
    public Object getEventList(Object dataMap) {
        String sqlMapId = "AdminEvent.selectEvent";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    // 이벤트 리스트 출력 + 페이지네이션
    public Object getEventListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getEventTotalWithPagination(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        ((Map<String, Object>) dataMap).put("pageScale", paginations.getPageScale());
        result.put("resultList", this.getEventList(dataMap));
        return result;
    }

    // 이벤트 페이지네이션 total
    public Object getEventTotalWithPagination(Object dataMap) {
        String sqlMapId = "AdminEvent.selectEventTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 이벤트 insert
    public Object insertEvent(Object dataMap) {
        String sqlMapId = "AdminEvent.insertEvent";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    // 이벤트 insert 후 리스트 출력 + 페이지네이션
    public Object insertEventAndGetEventList(Object dataMap) {
        Object result = this.insertEvent(dataMap);
        result = this.getEventListWithPagination(dataMap);
        return result;
    }

    // 이벤트 insert + File insert
    public Object insertEventWithFile(Object dataMap) {
        String sqlMapId = "AdminEvent.insertEventWithFile";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    // 이벤트 insert 후 리스트 출력 + 페이지네이션 + File insert
    public Object insertEventWithFileAndGetEventList(Object dataMap) {
        Object result = this.insertEventWithFile(dataMap);
        result = this.getEventListWithPagination(dataMap);
        return result;
    }

    // 이벤트 delete
    public Object deleteEvent(Object dataMap) {
        String sqlMapId = "AdminEvent.deleteEvent";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    // 이벤트 delete 후 리스트 출력 + 페이지네이션
    public Object deleteEventAndGetEventList(Object dataMap) {
        Object result = this.deleteEvent(dataMap);
        result = this.getEventListWithPagination(dataMap);
        return result;
    }

    // 이벤트 수정 화면 출력
    public Object getEventContent(Object dataMap) {
        String sqlMapId = "AdminEvent.selectEventContent";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 이벤트 update
    public Object updateEvent(Object dataMap) {
        String sqlMapId = "AdminEvent.updateEvent";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    // 이벤트 update 후 리스트 출력 + 페이지네이션
    public Object updateEventAndGetEventList(Object dataMap) {
        Object result = this.updateEvent(dataMap);
        result = this.getEventListWithPagination(dataMap);
        return result;
    }

    // 이벤트 UID로 select
    public Object getEventListByUID(Object dataMap) {
        String sqlMapId = "AdminEvent.selectEventByUID";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

}

