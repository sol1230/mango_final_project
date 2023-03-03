package com.mango.mango_final_project.service;

import com.mango.mango_final_project.dao.CommonDao;
import com.mango.mango_final_project.utils.Paginations;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminCouponService {
  @Autowired
  CommonDao commonDao;

  // admin coupon list
  public Object getCouponList(Object dataMap) {
    String sqlMapId = "AdminCoupon.adminCoupon";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // pagination
  public Object couponWithPagination(Object dataMap) {
    Map<String, Object> result = new HashMap<String, Object>();
    int totalCount = (int) this.getCouponTotal(dataMap);
    int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
    Paginations paginations = new Paginations(totalCount, currentPage);
    result.put("paginations", paginations);
    ((Map<String, Object>) dataMap).put(
        "pageBegin",
        paginations.getPageBegin()
      );
    ((Map<String, Object>) dataMap).put(
        "pageScale",
        paginations.getPageScale()
      );
    result.put("resultList", this.getCouponList(dataMap));
    return result;
  }

  // 전체 쿠폰 갯수
  public Object getCouponTotal(Object dataMap) {
    String sqlMapId = "AdminCoupon.selectCouponTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // insert coupon + file
  public Object insertCouponWithFile(Object dataMap) {
    String sqlMapId = "AdminCoupon.insertCouponWithFile";
    Object result = commonDao.insert(sqlMapId, dataMap);
    return result;
  }

  // insert file and get coupon list
  public Object insertCouponWithFileAndGetList(Object dataMap) {
    Object result = this.insertCouponWithFile(dataMap);
    result = this.couponWithPagination(dataMap);
    return result;
  }

  //UPDATE
  // update page
  public Object getCouponInfo(Object dataMap) {
    String sqlMapId = "AdminCoupon.selectCouponCont";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // update coupon
  public Object updateCoupon(Object dataMap) {
    String sqlMapId = "AdminCoupon.updateCoupon";
    Object result = commonDao.update(sqlMapId, dataMap);
    return result;
  }

  // update and get coupon list
  public Object updateCouponAndGetList(Object dataMap) {
    Object result = this.updateCoupon(dataMap);
    result = this.couponWithPagination(dataMap);
    return result;
  }

  //DELETE
  // delete coupon
  public Object deleteCoupon(Object dataMap) {
    String sqlMapId = "AdminCoupon.deleteCoupon";
    Object result = commonDao.delete(sqlMapId, dataMap);
    return result;
  }

  // delete and get coupon list
  public Object deleteCouponAndGetList(Object dataMap) {
    Object result = this.deleteCoupon(dataMap);
    result = this.couponWithPagination(dataMap);
    return result;
  }
}
