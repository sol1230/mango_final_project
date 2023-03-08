package com.mango.mango_final_project.user.Controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.util.ArrayList;

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
      user.getPHONE1() + "-" + user.getPHONE2() + "-" + user.getPHONE3();
    user.setPHONE(phone);

    String encPwd = bcryptPasswordEncoder.encode(user.getPASSWORD());

    user.setPASSWORD(encPwd);

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
   
    if (!bcryptPasswordEncoder.matches(user.getPASSWORD(), loginUser.getPASSWORD())){
      return "F1";
    }
    

    String phone = user.getPHONE1() + "-" + user.getPHONE2() + "-" + user.getPHONE3();
    user.setPHONE(phone);
    if(user.getPASSWORD1() != null && user.getPASSWORD1() != ""){
      String encPwd = bcryptPasswordEncoder.encode(user.getPASSWORD1());
      user.setPASSWORD(encPwd);
    }else{
      user.setPASSWORD(null);
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

  @ResponseBody
  @RequestMapping("delete")
  public String deleteUser(User user,HttpSession session) {
    String encPwd = ((User) session.getAttribute("loginUser")).getPASSWORD();

    if (bcryptPasswordEncoder.matches(user.getPASSWORD(), encPwd)) {
      int result = uService.deleteUser(user.getUSER_UID());

      if(result > 0) {
				session.removeAttribute("loginUser");
				
				return "S";
			} else { 
				
				return "F1";
			}
		}else { // 비밀번호가 다른 경우 => 사용자에게 알리고 마이페이지 
			
			return "F2";
		}
  }

  @RequestMapping("myPage")
  public String myPage(HttpSession session) {
    User user = new User();
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
   
    User reviewCount = uService.reviewCount(user);
    ((User) session.getAttribute("loginUser")).setREVIEWCOUNT(reviewCount.getREVIEWCOUNT());

    User qnaCount = uService.qnaCount(user);
    ((User) session.getAttribute("loginUser")).setQNACOUNT(qnaCount.getQNACOUNT());
    return "/user/myPage";
  }

  @ResponseBody
	@RequestMapping("idCheck")
	public String idCheck(String checkId) {
		int count = uService.idCheck(checkId);
		

		return count > 0 ? "NNNNN" : "NNNNY";
	}
  
  @ResponseBody
  @RequestMapping("findIdCheck")
  public User findIdCheck(User user) {
	  
	String phone = user.getPHONE1() + "-" + user.getPHONE2() + "-" + user.getPHONE3();
	user.setPHONE(phone);
	
	User res =  uService.findIdCheck(user);
	
    return res;    
  }

  @ResponseBody
  @RequestMapping("findPwdCheck")
  public User findUserPwd(User user, HttpSession session){

    String phone = user.getPHONE1() + "-" + user.getPHONE2() + "-" + user.getPHONE3();
    user.setPHONE(phone);

    User res = uService.findUserPwd(user);

    if(res != null){
      session.setAttribute("pwd", res);
    }

    return res;
  }

  @ResponseBody
  @RequestMapping("changePwd")
  public String changePwd(User user, HttpSession session) {   
    String encPwd = bcryptPasswordEncoder.encode(user.getPASSWORD());
      user.setPASSWORD(encPwd);
      
    int result = uService.changePwd(user);

    if (result > 0) { // 수정성공

      return "S";
    } else {
      
      return "F2";
    }
  }

  @RequestMapping("myReview")
  public ModelAndView myReview(ModelAndView mv, HttpSession session){
    User user = new User();
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
    ArrayList<User> list = uService.selectReview(user);

    mv.addObject("list", list)
    .setViewName("user/user_review_modify");
    
    return mv;
  }

  @RequestMapping("myQna")
  public ModelAndView myQna(ModelAndView mv, HttpSession session){
    User user = new User();
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
    ArrayList<User> qna = uService.selectQna(user);

    mv.addObject("qna", qna)
    .setViewName("user/user_qna");

    return mv;
  }
	
}
