package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class WineDetailsSelectService {
    
    @Autowired
    CommonDao commonDao;

    // 와인 detail 검색 출력
    public Object getWineDetailsSelectList(Object dataMap) {
        String sqlMapId = "WineDetailsSelect.selectWineDetails";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    // 와인 detail 검색 출력 + 페이지네이션
    public Object getWinDetailsSelectWithPagination (Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getWinDetailsSelectTotalWithPagination(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        ((Map<String, Object>) dataMap).put("pageScale", paginations.getPageScale());
        result.put("resultList", this.getWineDetailsSelectList(dataMap));
        return result;
    }

    // 와인 detail 페이지네이션 total
    public Object getWinDetailsSelectTotalWithPagination(Object dataMap) {
        String sqlMapId = "WineDetailsSelect.selectWineDetailsTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }
}
