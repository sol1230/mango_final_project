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

  // ADMIN COUPON
  // admin coupon list
  public Object getCouponList(Object dataMap) {
    String sqlMapId = "AdminCoupon.adminCoupon";
    Object result = commonDao.getList(sqlMapId, dataMap);
    return result;
  }

  // coupon with UID
  public Object getCouponUID(Object dataMap) {
    String sqlMapId = "AdminCoupon.selectCouponUID";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }

  // insert coupon
  public Object insertCoupon(Object dataMap) {
    String sqlMapId = "AdminCoupon.insertCoupon";
    Object result = commonDao.insert(sqlMapId, dataMap);
    return result;
  }

  // update coupon
  public Object updateCoupon(Object dataMap) {
    String sqlMapId = "AdminCoupon.updateCoupon";
    Object result = commonDao.update(sqlMapId, dataMap);
    return result;
  }

  // delete coupon
  public Object deleteCoupon(Object dataMap) {
    String sqlMapId = "AdminCoupon.deleteCoupon";
    Object result = commonDao.delete(sqlMapId, dataMap);
    return result;
  }

  // 동작 후 list로 돌아가기

  // insert and get coupon list
  public Object insertCouponAndGetList(Object dataMap) {
    Object result = this.insertCoupon(dataMap);
    result = this.getCouponList(dataMap);
    return result;
  }

  // update and get coupon list
  public Object updateCouponAndGetList(Object dataMap) {
    Object result = this.updateCoupon(dataMap);
    result = this.getCouponList(dataMap);
    return result;
  }

  // delete and get coupon list
  public Object deleteCouponAndGetList(Object dataMap) {
    Object result = this.deleteCoupon(dataMap);
    result = this.getCouponList(dataMap);
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
    result.put("resultList", this.getCouponList(dataMap));
    return result;
  }

  // 전체 쿠폰 갯수
  public Object getCouponTotal(Object dataMap) {
    String sqlMapId = "AdminCoupon.selectCouponTotal";
    Object result = commonDao.getOne(sqlMapId, dataMap);
    return result;
  }
}
