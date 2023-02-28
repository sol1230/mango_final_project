package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class SearchWineService {
    
    @Autowired
    CommonDao commonDao;

    // 상단 menu 검색바 와인 상품 검색 리스트 출력
    public Object getSearchWineList(Object dataMap) {
        String sqlMapId = "SearchWine.wineList";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    // 상단 menu 검색바 와인 상품 검색 리스트 출력 + 페이지네이션
    public Object getSearchWineListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getSearchWineListTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        ((Map<String, Object>) dataMap).put("pageScale", paginations.getPageScale());
        result.put("resultList", this.getSearchWineList(dataMap));
        return result;
    }

    // 상단 menu 검색바 와인 상품 검색 리스트 정렬 + 페이지네이션
    public Object getSearchWineListOrderWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getSearchWineListTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        ((Map<String, Object>) dataMap).put("pageScale", paginations.getPageScale());
        result.put("resultList", this.getSearchWineListOrder(dataMap));
        return result;
    }

    // 상단 menu 검색바 와인 상품 검색 리스트 count
    public Object getSearchWineListTotal(Object dataMap) {
        String sqlMapId = "SearchWine.wineListCount";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 상단 menu 검색바 와인 상품 검색 정렬
    public Object getSearchWineListOrder(Object dataMap) {
        String sqlMapId = "SearchWine.selectWineListSearchWithOrder";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

}
