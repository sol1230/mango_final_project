package com.mango.mango_final_project.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ByPassController {

  @RequestMapping(value = { "/", "/index" })
  public String byPass() {
    int i = 0;
    return "/index";
  }

  @RequestMapping(value = { "/admin/admin_notice_add" })
  public void admin_boards_add() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_boards" })
  public void admin_boards() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_boards_notice_modify" })
  public void admin_boards_notice_modify() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_boards_qna" })
  public void admin_boards_qna() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_events_add" })
  public void admin_events_add() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_events" })
  public void admin_events() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_event_modify" })
  public void admin_event_modify() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_reviews" })
  public void admin_reviews() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_stores" })
  public void admin_stores() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_stores_add" })
  public void admin_stores_add() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_users_add" })
  public void admin_users_add() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_users_modify" })
  public void admin_users_modify() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_users" })
  public void admin_users() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_coupon" })
  public void admin_coupon() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_coupon_add" })
  public void admin_coupon_add() {
    int i = 0;
  }

  @RequestMapping(value = { "/admin/admin_coupon_modify" })
  public void admin_coupon_modify() {
    int i = 0;
  }

  @RequestMapping(value = { "/etc/companyInfo" })
  public void companyInfo() {
    int i = 0;
  }

  @RequestMapping(value = { "/etc/privacy_policy" })
  public void privacy_policy() {
    int i = 0;
  }

  @RequestMapping(value = { "/etc/terms_of_use" })
  public void terms_of_use() {
    int i = 0;
  }

  @RequestMapping(value = { "/event/event" })
  public void event() {
    int i = 0;
  }

  @RequestMapping(value = { "/event/event_content01" })
  public void event_content01() {
    int i = 0;
  }

  @RequestMapping(value = { "/event/event_content02" })
  public void event_content02() {
    int i = 0;
  }

  @RequestMapping(value = { "/event/event_content03" })
  public void event_content03() {
    int i = 0;
  }

  @RequestMapping(value = { "/event/event_content04" })
  public void event_content04() {
    int i = 0;
  }

  @RequestMapping(value = { "/notice_N_qna/notice_content" })
  public void notice_content() {
    int i = 0;
  }

  @RequestMapping(value = { "/notice_N_qna/notice_questions" })
  public void notice_questions() {
    int i = 0;
  }

  @RequestMapping(value = { "/notice_N_qna/notice" })
  public void notice() {
    int i = 0;
  }

  // @RequestMapping(value = { "/notice_N_qna/notice_questions" })
  // public void q_a() {
  //   int i = 0;
  // }

  @RequestMapping(value = { "/signup_N_login/login_find_id" })
  public void login_find_id() {
    int i = 0;
  }

  @RequestMapping(value = { "/signup_N_login/login_find_id_result" })
  public void login_find_id_result() {
    int i = 0;
  }

  @RequestMapping(value = { "/signup_N_login/login_find_password" })
  public void login_find_password() {
    int i = 0;
  }

  @RequestMapping(value = { "/signup_N_login/login_find_password_result" })
  public void login_find_password_result() {
    int i = 0;
  }

  @RequestMapping(value = { "/signup_N_login/login_find" })
  public void login_find() {
    int i = 0;
  }

  @RequestMapping(value = { "/signup_N_login/login" })
  public void login() {
    int i = 0;
  }

  @RequestMapping(value = { "/signup_N_login/signup_form" })
  public void signup_form() {
    int i = 0;
  }

  @RequestMapping(value = { "/signup_N_login/signup_terms" })
  public void signup_terms() {
    int i = 0;
  }

  @RequestMapping(value = { "/user/changeInfo" })
  public void changeInfo() {
    int i = 0;
  }

  

  @RequestMapping(value = { "/user/user_coupon" })
  public void user_coupon() {
    int i = 0;
  }

  @RequestMapping(value = { "/user/user_qna" })
  public void user_qna() {
    int i = 0;
  }

  @RequestMapping(value = { "/user/user_review_modify" })
  public void user_review_modify() {
    int i = 0;
  }

  @RequestMapping(value = { "/user/user_wishlist" })
  public void user_wishlist() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_country_france" })
  public void wine_country_france() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_country_spain" })
  public void wine_country_spain() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_info" })
  public void wine_info() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_list" })
  public void wine_list() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_price" })
  public void wine_price() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_red" })
  public void wine_red() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_rose" })
  public void wine_rose() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_sparkling" })
  public void wine_sparkling() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_white" })
  public void wine_white() {
    int i = 0;
  }

  @RequestMapping(value = { "/wine/wine_kind" })
  public void wine_kind() {
    int i = 0;
  }
}
