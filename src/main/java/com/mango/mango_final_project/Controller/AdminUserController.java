package com.mango.mango_final_project.Controller;

import com.mango.mango_final_project.service.AdminUserService;
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
public class AdminUserController {
  @Autowired
  AdminUserService adminUserService;

  // -- USER --
  //list
  // @RequestMapping(value = "/admin_users", method = RequestMethod.GET)
  // public ModelAndView list(
  //   @RequestParam Map<String, Object> params,
  //   ModelAndView modelAndView
  // ) {
  //   Object resultMap = adminOneService.getList(params);
  //   modelAndView.addObject("resultMap", resultMap);
  //   modelAndView.setViewName("admin/admin_users");
  //   return modelAndView;
  // }

  // user list
  @RequestMapping(
    value = "/admin_users/{currentPage}",
    method = RequestMethod.GET
  )
  public ModelAndView userList(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    params.put("pageScale", 10);
    Object resultMap = adminUserService.userWithPagination(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_users");
    return modelAndView;
  }

  // user update
  @RequestMapping(
    value = "/admin_users_edit/{uniqueId}",
    method = RequestMethod.POST
  )
  public ModelAndView userEdit(
    @RequestParam Map<String, Object> params,
    @PathVariable String uniqueId,
    ModelAndView modelAndView
  ) {
    params.put("USER_UID", uniqueId);
    Object resultMap = adminUserService.getOne(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_users_modify");
    return modelAndView;
  }

  // user update complete
  @RequestMapping(value = "/admin_users_update", method = RequestMethod.POST)
  public ModelAndView userUpdate(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    Object resultMap = adminUserService.updateAndGetList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_users");
    return modelAndView;
  }

  // user delete
  @RequestMapping(
    value = "/admin_users_delete/{uniqueId}",
    method = RequestMethod.POST
  )
  public ModelAndView userDelete(
    @RequestParam Map<String, Object> params,
    @PathVariable String uniqueId,
    ModelAndView modelAndView
  ) {
    params.put("USER_UID", uniqueId);
    Object resultMap = adminUserService.deleteAndGetList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_users");
    return modelAndView;
  }

  // user insert
  @RequestMapping(value = "/admin_users_insert", method = RequestMethod.GET)
  public ModelAndView userInsert(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    modelAndView.setViewName("admin/admin_users_add");
    return modelAndView;
  }

  // user insert complete
  @RequestMapping(
    value = "/admin_users_insert_done/{currentPage}",
    method = RequestMethod.POST
  )
  public ModelAndView userInsertDone(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminUserService.insertAndGetList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_users");
    return modelAndView;
  }
}
