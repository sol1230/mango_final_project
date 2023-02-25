package com.mango.mango_final_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;

@Service
public class AdminBoardService {

    @Autowired
    CommonDao commonDao;

    // Qna 리스트 출력
    public Object getListQna(Object dataMap) {
        String sqlMapId = "AdminBoard.selectQna";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    // Qna 리스트 검색
    public Object getSearchListQna(Object dataMap) {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        String sqlMapId = "AdminBoard.selectQnaSearch";
        Object result = commonDao.getList(sqlMapId, dataMap);
        resultMap.put("resultList", result);
        return resultMap;
    }

    // Qna 내용 출력
    public Object getQnaContent(Object dataMap) {
        String sqlMapId = "AdminBoard.selectQnaContent";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // Qna 답변 update
    public Object updateQnaAnswer(Object dataMap) {
        String sqlMapId = "AdminBoard.updateQnaAnswer";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    // Qna 답변 update 후 리스트 출력 + 페이지네이션
    public Object updateQnaAnswerAndGetQnaList(Object dataMap) {
        Object result = this.updateQnaAnswer(dataMap);
        result = this.getQnaListWithPagination(dataMap);
        return result;
    }

    // Qna delete
    public Object deleteQna(Object dataMap) {
        String sqlMapId = "AdminBoard.deleteQna";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    // Qna delete 후 리스트 출력 + 페이지네이션
    public Object deleteQnaAndGetQnaList(Object dataMap) {
        Object result = this.deleteQna(dataMap);
        result = this.getQnaListWithPagination(dataMap);
        return result;
    }

    // Qna 리스트 출력 + 페이지네이션
    public Object getQnaListWithPagination (Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getQnaTotalWithPagination(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        ((Map<String, Object>) dataMap).put("pageScale", paginations.getPageScale());
        result.put("resultList", this.getListQna(dataMap));
        return result;
    }

    // Qna 페이지네이션 total
    public Object getQnaTotalWithPagination(Object dataMap) {
        String sqlMapId = "AdminBoard.selectQnaTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // ----------------------- 공지 -----------------------------------

    // 공지 리스트 출력
    public Object getListNotice(Object dataMap) {
        String sqlMapId = "AdminBoard.selectNotice";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    // 공지 리스트 출력 + 페이지네이션
    public Object getNoticeListWithPagination (Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getNoticeTotalWithPagination(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        ((Map<String, Object>) dataMap).put("pageScale", paginations.getPageScale());
        result.put("resultList", this.getListNotice(dataMap));
        return result;
    }

    // 공지 페이지네이션 total
    public Object getNoticeTotalWithPagination(Object dataMap) {
        String sqlMapId = "AdminBoard.selectNoticeTotal";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 공지 수정 화면 출력
    public Object getNoticeContent(Object dataMap) {
        String sqlMapId = "AdminBoard.selectNoticeContent";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 공지 update
    public Object updateNotice(Object dataMap) {
        String sqlMapId = "AdminBoard.updateNotice";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    // 공지 update 후 리스트 출력 + 페이지네이션
    public Object updateNoticeAndGetNoticeList(Object dataMap) {
        Object result = this.updateNotice(dataMap);
        result = this.getNoticeListWithPagination(dataMap);
        return result;
    }

    // 공지 delete
    public Object deleteNotice(Object dataMap) {
        String sqlMapId = "AdminBoard.deleteNotice";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    // 공지 delete 후 리스트 출력 + 페이지네이션
    public Object deleteNoticeAndGetNoticeList(Object dataMap) {
        Object result = this.deleteNotice(dataMap);
        result = this.getNoticeListWithPagination(dataMap);
        return result;
    }

    // 공지 insert + File insert
    public Object insertNoticeWithFile(Object dataMap) {
        String sqlMapId = "AdminBoard.insertNoticeWithFile";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    // 공지 insert 후 리스트 출력 + 페이지네이션 + File insert
    public Object insertNoticeWithFileAndGetNoticeList(Object dataMap) {
        Object result = this.insertNoticeWithFile(dataMap);
        result = this.getNoticeListWithPagination(dataMap);
        return result;
    }

    // 공지 insert
}
