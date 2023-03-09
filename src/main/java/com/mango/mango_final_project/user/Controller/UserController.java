package com.mango.mango_final_project.user.Controller;

import com.mango.mango_final_project.service.MypageService;
import com.mango.mango_final_project.user.model.service.UserService;
import com.mango.mango_final_project.user.model.vo.User;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/user")
public class UserController {
  @Autowired
  private UserService uService;

  @Autowired
  MypageService mypageService;

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

  @RequestMapping("user_qna_modify")
  public String user_qna_modify(HttpSession session, Model model) {

    User user = new User();
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());

  // 유저 서비스를 이용해 Q&A 정보 리스트 가져오기
  ArrayList<User> qnaList = uService.selectQna(user);

  // 리스트에서 가장 최근에 작성한 Q&A 정보 가져오기
  User latestQna = qnaList.get(qnaList.size() - 1);

  // 가져온 Q&A 정보를 세션에 담기
  session.setAttribute("qnaTitle", latestQna.getQNA_TITLE());
  session.setAttribute("qnaContent", latestQna.getQNA_CONTENT());



    return "user/user_qna_modify";
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

    if (
      !bcryptPasswordEncoder.matches(
        user.getPASSWORD(),
        loginUser.getPASSWORD()
      )
    ) {
      return "F1";
    }

    String phone =
      user.getPHONE1() + "-" + user.getPHONE2() + "-" + user.getPHONE3();
    user.setPHONE(phone);
    if (user.getPASSWORD1() != null && user.getPASSWORD1() != "") {
      String encPwd = bcryptPasswordEncoder.encode(user.getPASSWORD1());
      user.setPASSWORD(encPwd);
    } else {
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
  public String deleteUser(User user, HttpSession session) {
    String encPwd = ((User) session.getAttribute("loginUser")).getPASSWORD();

    if (bcryptPasswordEncoder.matches(user.getPASSWORD(), encPwd)) {
      int result = uService.deleteUser(user.getUSER_UID());

      if (result > 0) {
        session.removeAttribute("loginUser");

        return "S";
      } else {
        return "F1";
      }
    } else { // 비밀번호가 다른 경우 => 사용자에게 알리고 마이페이지
      return "F2";
    }
  }

  @RequestMapping("myPage")
  public String myPage(HttpSession session) {
    User user = new User();
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());

    User reviewCount = uService.reviewCount(user);
    ((User) session.getAttribute("loginUser")).setREVIEWCOUNT(
        reviewCount.getREVIEWCOUNT()
      );

    User qnaCount = uService.qnaCount(user);
    ((User) session.getAttribute("loginUser")).setQNACOUNT(
        qnaCount.getQNACOUNT()
      );

    User wishlistCount = uService.wishlistCount(user);
    ((User) session.getAttribute("loginUser")).setWISHLISTCOUNT(
        wishlistCount.getWISHLISTCOUNT()
      );

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
    String phone =
      user.getPHONE1() + "-" + user.getPHONE2() + "-" + user.getPHONE3();
    user.setPHONE(phone);

    User res = uService.findIdCheck(user);

    return res;
  }

  @ResponseBody
  @RequestMapping("findPwdCheck")
  public User findUserPwd(User user, HttpSession session) {
    String phone =
      user.getPHONE1() + "-" + user.getPHONE2() + "-" + user.getPHONE3();
    user.setPHONE(phone);

    User res = uService.findUserPwd(user);

    if (res != null) {
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
  public ModelAndView myReview(ModelAndView mv, HttpSession session) {
    User user = new User();
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
    ArrayList<User> list = uService.selectReview(user);

    mv.addObject("list", list).setViewName("user/user_review");

    return mv;
  }

  @RequestMapping("myQna")
  public ModelAndView myQna(ModelAndView mv, HttpSession session) {
    User user = new User();
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
    ArrayList<User> qna = uService.selectQna(user);

    mv.addObject("qna", qna).setViewName("user/user_qna");

    return mv;
  }

  // sol
  // user review update 페이지
  // @RequestMapping("myReview_edit")
  // public ModelAndView myReviewEdit(
  //   ModelAndView modelAndView,
  //   HttpSession session
  // ) {
  //   User user = new User();
  //   user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
  //   User result = uService.getMyReviewInfo(user);

  //   if (result > 0) { // 수정성공
  //     return "S";
  //   } else {
  //     return "F2";
  //   }
  //   modelAndView.setViewName("user/user_review_modify");
  //   return modelAndView;
  // }

  //user review update complete 페이지
  @RequestMapping(value = "/myReview_update", method = RequestMethod.POST)
  public ModelAndView myReviewUpdate(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    Object resultMap = mypageService.updateMyReviewAndGetMyReview(params);
    modelAndView.addObject("list", resultMap);
    modelAndView.setViewName("user/user_review");
    return modelAndView;
  }

  // user review delete 페이지
  // @RequestMapping(value = "/myReview_delete", method = RequestMethod.POST)
  // public ModelAndView myReviewDelete(
  //   @RequestParam Map<String, Object> params,
  //   ModelAndView modelAndView
  // ) {
  //   Object resultMap = mypageService.deleteMyReviewAndGetMyReview(params);
  //   modelAndView.addObject("list", resultMap);
  //   modelAndView.setViewName("user/user_review");
  //   return modelAndView;
  // }

  @ResponseBody
  @RequestMapping(value = "deleteMyReview")
  public ArrayList<Object> deleteMyReview(
    HttpSession session,
    HttpServletRequest request,
    Model model,
    User user
  ) {
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());

     ArrayList<Object> result = uService.deleteMyReview(user);

    return result.size() > 0 ? result : new ArrayList<Object>();
  }

 
  // user qna update 페이지
  @ResponseBody
  @RequestMapping(value = "myQnaUpdate", method = RequestMethod.POST)
  public String myQnaUpdate(HttpSession session, User user) {
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
    int result = uService.myQnaUpdate(user);

    return result >= 1 ? "success" : "fail";
  }

  /*
  //user qna update complete 페이지
  @RequestMapping(value = "/myQna_update", method = RequestMethod.POST)
  public ModelAndView myQnaUpdate(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    Object resultMap = mypageService.updateMyQnaAndGetMyQna(params);
    modelAndView.addObject("qna", resultMap);
    modelAndView.setViewName("user/user_qna");
    return modelAndView;
  }
*/
 

  @RequestMapping("myWishlist")
  public ModelAndView myWishlist(ModelAndView mv, HttpSession session) {
    User user = new User();
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
    ArrayList<User> wishlist = uService.selectWishlist(user);

    mv.addObject("wishlist", wishlist).setViewName("user/user_wishlist");

    return mv;
  }

  @ResponseBody
  @RequestMapping(value = "deleteWishlist")
  public String deleteWishlist(
    HttpSession session,
    HttpServletRequest request,
    Model model,
    User user
  ) {
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());

    int result = uService.deleteWishlist(user);

    return result > 0 ? "success" : "fail";
  }

  @ResponseBody
  @RequestMapping(value = "deleteQna")
  public String deleteQna(
    HttpSession session,
    HttpServletRequest request,
    Model model,
    User user
  ) {
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());

    int result = uService.deleteQna(user);

    return result > 0 ? "success" : "fail";
  }

  @ResponseBody
  @RequestMapping(value = "deleteAllWishlist")
  public String deleteAllWishlist(
    HttpSession session,
    HttpServletRequest request,
    Model model,
    User user
  ) {
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());

    int result = uService.deleteAllWishlist(user);

    return result > 0 ? "success" : "fail";
  }

  @ResponseBody
  @RequestMapping(value = "insertWishlist")
  public String insertWishlist(HttpSession session, HttpServletRequest request, Model model, User user){
    user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());


    int result = 0;
    int count = uService.wishlistCheck(user);
    String message = "";
    if(count > 0) {
      // 삭제
      result = uService.deleteWishlist(user);
      message = "delete";
    } else {
      // 추가
      result = uService.insertWishlist(user);
      message = "success";
    }

    return message;
  }

}
