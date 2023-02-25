package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class AdminReviewService {

    @Autowired
    CommonDao commonDao;

    // 리뷰 리스트 출력
    public Object getReviewList(Object dataMap) {
        String sqlMapId = "AdminReview.selectReview";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    // 리뷰 리스트 출력 + 페이지네이션
    public Object getReviewListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getReviewTotalWithPagination(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        ((Map<String, Object>) dataMap).put("pageScale", paginations.getPageScale());
        result.put("resultList", this.getReviewList(dataMap));
        return result;
    }

    // 리뷰 페이지네이션 total
    public Object getReviewTotalWithPagination(Object dataMap) {
        String sqlMapId = "AdminReview.selectReviewTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 리뷰 리스트 검색
    public Object getReviewSearchList(Object dataMap){
        Map<String, Object> resultMap = new HashMap<String, Object>();
        String sqlMapId = "AdminReview.selectReviewSearch";
        Object result = commonDao.getList(sqlMapId, dataMap);
        resultMap.put("resultList", result);
        return resultMap;
    }
    
    // 리뷰 삭제
    public Object deleteReview(Object dataMap) {
        String sqlMapId = "AdminReview.deleteReview";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    // 리뷰 삭제 후 리스트 출력 + 페이지네이션
    public Object deleteReviewAndGetReviewList(Object dataMap) {
        Object result = this.deleteReview(dataMap);
        result = this.getReviewListWithPagination(dataMap);
        return result;
    }
    
}
