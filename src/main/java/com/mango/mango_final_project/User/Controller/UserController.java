package com.mango.mango_final_project.user.Controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mango.mango_final_project.user.model.service.UserService;
import com.mango.mango_final_project.user.model.vo.User;

@Controller
@RequestMapping(value = "/user")
public class UserController {
  @Autowired
  private UserService uService;

  @Autowired
  private BCryptPasswordEncoder bcryptPasswordEncoder;

  @RequestMapping("logout")
  public String logoutUser(HttpSession session) {
    session.invalidate();
    return "redirect:/";
  }

  @RequestMapping("signUp")
  public String signUp() {
    return "signup_N_login/signup_form";
  }

  @ResponseBody
  @RequestMapping("insertUser")
  public String insertUser(User user, Model model, HttpSession session) {
    String phone =
      user.getPhone1() + "-" + user.getPhone2() + "-" + user.getPhone3();
    user.setPhone(phone);

    String encPwd = bcryptPasswordEncoder.encode(user.getPassword());

    user.setPassword(encPwd);

    int result = uService.insertUser(user);

    if (result > 0) { // 성공 > 메인페이지 url 재요청
      
      return "S";
    } else { 
     
      return "F";
    }
  }

  @ResponseBody
  @RequestMapping("changeUser")
  public String updateUser(User user, HttpSession session) {
    User loginUser = uService.loginUser(user);    
   
    if (!bcryptPasswordEncoder.matches(user.getPassword(), loginUser.getPassword())){
      return "F1";
    }
    

    String phone = user.getPhone1() + "-" + user.getPhone2() + "-" + user.getPhone3();
    user.setPhone(phone);
    if(user.getPassword1() != null && user.getPassword1() != ""){
      String encPwd = bcryptPasswordEncoder.encode(user.getPassword1());
      user.setPassword(encPwd);
    }else{
      user.setPassword(null);
    }
    int result = uService.updateUser(user);

    if (result > 0) { // 수정성공
      loginUser = uService.loginUser(user);   
      session.setAttribute("loginUser", loginUser);
      return "S";
    } else {
      
      return "F2";
    }
  }

  @RequestMapping("delete")
  public String deleteUser(
    String password,
    String user_uid,
    HttpSession session,
    Model model
  ) {
    String encPwd = ((User) session.getAttribute("loginUser")).getPassword();

    if (bcryptPasswordEncoder.matches(password, encPwd)) {
      int result = uService.deleteUser(user_uid);

      if (result > 0) {
        session.removeAttribute("loginUser");
        session.setAttribute(
          "alretMsg",
          "탈퇴 처리 되었습니다. 이용해주셔서 감사합니다."
        );
        return "redirect:/";
      } else {
        model.addAttribute("errorMsg", "탈퇴 처리에 실패하였습니다.");
        return "common/errorPage";
      }
    } else {
      session.setAttribute(
        "alertMsg",
        "비밀번호가 맞지 않습니다. 다시 입력해주세요."
      );
      return "redirect:myPage";
    }
  }

  @RequestMapping("myPage")
  public String myPage() {
    return "/user/myPage";
  }

  @ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(String checkId) {
		int count = uService.idCheck(checkId);
		

		return count > 0 ? "NNNNN" : "NNNNY";
	}
	
}
