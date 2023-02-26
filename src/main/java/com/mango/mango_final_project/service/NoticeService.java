package com.mango.mango_final_project.service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {
  @Autowired
  CommonDao commonDao;

  // NOTICE
  // notice list
  public Object getNoticeList(Object dataMap) {
    String sqlMapId = "IndexNotice.selectNotice";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // notice with UID
  public Object getNoticeUID(Object dataMap) {
    String sqlMapId = "IndexNotice.selectNoticeUID";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // view notice content
  public Object viewNoticeCont(Object dataMap) {
    String sqlMapId = "IndexNotice.viewNoticeCont";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // pagination
  public Object noticeWithPagenation(Object dataMap) {
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.getNoticeTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put(
        "pageBegin",
        paginations.getPageBegin()
      );
    result.put("resultList", this.getNoticeList(dataMap));
    return result;
  }

  // 전체 공지 갯수
  public Object getNoticeTotal(Object dataMap) {
    String sqlMapId = "IndexNotice.selectNoticeTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }
}
