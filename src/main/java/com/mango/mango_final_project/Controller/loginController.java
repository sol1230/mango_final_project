package com.mango.mango_final_project.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class loginController {

  // 로그인
  @RequestMapping(value = "/login")
  public ModelAndView login(ModelAndView modelAndView) {
    modelAndView.setViewName("/signup_N_login/login");
    return modelAndView;
  }
}
