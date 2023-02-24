package com.mango.mango_final_project.User.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.User.Controller.model.service.userService;
import com.mango.mango_final_project.User.Controller.model.vo.User;

@Controller
public class UserController {
    
@Autowired
private userService uService;

@Autowired
private BCryptPasswordEncoder bcryptPasswordEncoder;

@RequestMapping("login.me")
public ModelAndView loginUser(User user, HttpSession session, ModelAndView mv){

    User loginUser = uService.loginUser(user);

    if(loginUser != null && bcryptPasswordEncoder.matches(user.getPassword(), loginUser.getPassword())){
        //로그인 성공
        session.setAttribute("loginUser", loginUser);
        mv.setViewName("redirect:/");
    } else{
        // 로그인 실패
        mv.addObject("errorMsg", "로그인 실패");
        mv.setViewName("common/errorPage");
    }
    return mv;
}

@RequestMapping("logout")
public String logoutUser(HttpSession session) {
    session.invalidate();
    return "redirect:/";
}

@RequestMapping("signUp")
public String signUp(){
    return "signup_N_login/signup_form";
}

@RequestMapping("insertUser")
public String insertUser(User user, Model model, HttpSession session){
    String encPwd = bcryptPasswordEncoder.encode(user.getPassword());

    user.setPassword(encPwd);

    int result = uService.insertUser(user);
    
    if(result > 0 ) { // 성공 > 메인페이지 url 재요청
        session.setAttribute("alertMsg", "회원가입을 축하드립니다.");
        return "redirect:/";
    } else{ // 실패 => 에러페이지 포워딩
        model.addAttribute("errorMsg", "회원가입에 실패하였습니다.");
        return "common/errorPage";
    }
}

@RequestMapping("updateUser")
public String updateUser(User user, Model model, HttpSession session) {
    int result = uService.updateUser(user);

    if(result > 0){ // 수정 정송
        session.setAttribute("loginUser", uService.loginUser(user));
        
        session.setAttribute("alertMsg", "회원정보가 변경되었습니다.");

        return "redirect:myPage";
    } else{
        model.addAttribute("errorMsg", "회원정보 수정에 실패하였습니다.");
        return "common/errorPage";
    }
}

@RequestMapping("delete")
public String deleteUser(String password, String user_uid, HttpSession session, Model model){
    
    String encPwd = ((User)session.getAttribute("loginUser")).getPassword();

    if(bcryptPasswordEncoder.matches(password, encPwd)) {

        int  result = uService.deleteUser(user_uid);

        if(result> 0) {
            session.removeAttribute("loginUser");
            session.setAttribute("alretMsg", "탈퇴 처리 되었습니다. 이용해주셔서 감사합니다.");
            return "redirect:/";
        } else {
            model.addAttribute("errorMsg", "탈퇴 처리에 실패하였습니다.");
            return "common/errorPage";
        } 
    } else{
        session.setAttribute("alertMsg", "비밀번호가 맞지 않습니다. 다시 입력해주세요.");
        return "redirect:myPage";
    }
}

@ResponseBody
@RequestMapping("idCheck")
public String idCheck(String checkId){
    int count = uService.idCheck(checkId);

    return count > 0 ? "NNNNN" : "NNNNY";
}

}
