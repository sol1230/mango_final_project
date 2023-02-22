package com.mango.mango_final_project.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminBoardController {

  // 답변등록
  @RequestMapping(value = "/admin/admin_boards_qna", method = RequestMethod.GET)
  public ModelAndView adminQNA(ModelAndView modelAndView) {
    return modelAndView;
  }
}
