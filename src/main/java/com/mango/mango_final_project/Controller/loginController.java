package com.mango.mango_final_project.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mango.mango_final_project.user.model.service.UserService;
import com.mango.mango_final_project.user.model.vo.User;


@Controller
public class loginController {

	@Autowired
	private UserService uService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@ResponseBody
	@RequestMapping("login")
	public String loginUser(User user, HttpSession session){
		
	    User loginUser = uService.loginUser(user);

	    if(loginUser != null && bcryptPasswordEncoder.matches(user.getPassword(), loginUser.getPassword())){
	        //로그인 성공
	        session.setAttribute("loginUser", loginUser);
	        return "S";
	    } else{
	        // 로그인 실패
	    	session.setAttribute("alertMsg", "로그인에 실패했습니다.");
	    	return "F";
	    }
	    
	}
}
