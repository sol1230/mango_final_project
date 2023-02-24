package com.mango.mango_final_project.Controller;

import com.mango.mango_final_project.service.AdminCouponService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/admin")
public class AdminCouponController {
  @Autowired
  AdminCouponService adminCouponService;

  // -- ADMIN COUPON --
  // admin coupon list
  @RequestMapping(
    value = "/admin_coupon/{currentPage}",
    method = RequestMethod.GET
  )
  public ModelAndView adminCouponList(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    params.put("pageScale", 10);
    Object resultMap = adminCouponService.couponWithPagination(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon");
    return modelAndView;
  }

  // coupon insert
  @RequestMapping(value = "/admin_coupon_insert", method = RequestMethod.GET)
  public ModelAndView couponInsert(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    modelAndView.setViewName("admin/admin_coupon_add");
    return modelAndView;
  }

  // coupon insert complete
  @RequestMapping(
    value = "/admin_coupon_insert_done",
    method = RequestMethod.POST
  )
  public ModelAndView couponInsertDone(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    Object resultMap = adminCouponService.insertCouponAndGetList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon");
    return modelAndView;
  }

  // coupon update
  @RequestMapping(
    value = "/admin_coupon_edit/{uniqueId}",
    method = RequestMethod.GET
  )
  public ModelAndView couponEdit(
    @RequestParam Map<String, Object> params,
    @PathVariable String uniqueId,
    ModelAndView modelAndView
  ) {
    params.put("COUPON_UID", uniqueId);
    Object resultMap = adminCouponService.getCouponUID(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon_modify");
    return modelAndView;
  }

  // coupon update complete
  @RequestMapping(value = "/admin_coupon_update", method = RequestMethod.POST)
  public ModelAndView couponUpdate(
    @RequestParam Map<String, Object> parmas,
    ModelAndView modelAndView
  ) {
    Object resultMap = adminCouponService.updateCouponAndGetList(parmas);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon");
    return modelAndView;
  }

  // coupon delete
  @RequestMapping(
    value = "/admin_coupon_delete/{uniqueId}",
    method = RequestMethod.POST
  )
  public ModelAndView couponDelete(
    @RequestParam Map<String, Object> params,
    @PathVariable String uniqueId,
    ModelAndView modelAndView
  ) {
    params.put("COUPON_UID", uniqueId);
    Object resultMap = adminCouponService.deleteCouponAndGetList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon");
    return modelAndView;
  }
}
