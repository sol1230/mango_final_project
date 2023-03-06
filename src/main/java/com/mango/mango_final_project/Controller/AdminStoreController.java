package com.mango.mango_final_project.controller;

import com.mango.mango_final_project.service.AdminStoreService;
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
public class AdminStoreController {
  @Autowired
  AdminStoreService adminStoreService;

  // ADMIN STORE
  // store list
  @RequestMapping(
    value = "/admin_stores/{currentPage}",
    method = RequestMethod.GET
  )
  public ModelAndView adminStoreList(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    params.put("pageScale", 10);
    Object resultMap = adminStoreService.storeWithPagination(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_stores");
    return modelAndView;
  }

  // store insert
  @RequestMapping(value = "/admin_stores_insert", method = RequestMethod.GET)
  public ModelAndView storeInsert(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    modelAndView.setViewName("admin/admin_stores_add");
    return modelAndView;
  }

  // store insert complete
  @RequestMapping(
    value = "admin_stores_insert_done/{currentPage}",
    method = RequestMethod.POST
  )
  public ModelAndView storeInsertDone(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminStoreService.insertStoreAndGetList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_stores");
    return modelAndView;
  }

  // store delete
  @RequestMapping(
    value = "/admin_stores_delete/{currentPage}",
    method = RequestMethod.POST
  )
  public ModelAndView storeDelete(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminStoreService.deleteStoreAndGetList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_stores");
    return modelAndView;
  }
}
