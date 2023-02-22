package com.mango.mango_final_project.User.Controller;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



public class UserController {
    
    
// 로그인
    @RequestMapping("login")
	public ModelAndView loginUser(ModelAndView modelAndView){
        modelAndView.setViewName("/signup_N_login/login");
        return modelAndView;
    }

// 회원가입
    @RequestMapping(value="/signup_form")
    public ModelAndView signup_form(@RequestParam Map<String, Object> params, ModelAndView modelAndView){
    modelAndView.setViewName("/signup_N_login/signup_form");
    return modelAndView;
    }

}
