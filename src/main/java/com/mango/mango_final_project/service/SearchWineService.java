package com.mango.mango_final_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;

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

    // 상단 menu 검색바 와인 상품 검색 리스트 count
    public Object getSearchWineListCount(Object dataMap) {
        String sqlMapId = "SearchWine.wineListCount";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 상단 menu 검색바 와인 상품 검색 리스트 출력 + count
}
