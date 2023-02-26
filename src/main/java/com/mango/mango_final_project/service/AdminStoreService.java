package com.mango.mango_final_project.service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminStoreService {
  @Autowired
  CommonDao commonDao;

  // ADMIN STORE
  // store list
  public Object getStoreList(Object dataMap) {
    String sqlMapId = "AdminStore.adminStore";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // insert store
  public Object insertStore(Object dataMap) {
    String sqlMapId = "AdminStore.insertStore";
    Object result = commonDao.insert(sqlMapId, dataMap);
    return result;
  }

  // delte store
  public Object deleteStore(Object dataMap) {
    String sqlMapId = "AdminStore.deleteStore";
    Object result = commonDao.delete(sqlMapId, dataMap);
    return result;
  }

  // 동작 후 list로 돌아가기
  // insert and get store list
  public Object insertStoreAndGetList(Object dataMap) {
    Object result = this.insertStore(dataMap);
    result = this.storeWithPagination(dataMap);
    return result;
  }

  // delete and get store list
  public Object deleteStoreAndGetList(Object dataMap) {
    Object result = this.deleteStore(dataMap);
    result = this.storeWithPagination(dataMap);
    return result;
  }

  //pagination
  public Object storeWithPagination(Object dataMap) {
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.getStoreTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put(
        "pageBegin",
        paginations.getPageBegin()
      );
    result.put("resultList", this.getStoreList(dataMap));
    return result;
  }

  // 전체 store 갯수
  public Object getStoreTotal(Object dataMap) {
    String sqlMapId = "AdminStore.selectStoreTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }
}
