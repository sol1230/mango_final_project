package com.mango.mango_final_project.Controller;

import com.mango.mango_final_project.service.NoticeService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/notice")
public class NoticeController {
  @Autowired
  NoticeService noticeService;

  // NOTICE
  // notice list
  @RequestMapping(value = "/notice/{currentPage}", method = RequestMethod.GET)
  public ModelAndView noticeList(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    params.put("pageScale", 10);
    Object resultMap = noticeService.noticeWithPagenation(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("notice_N_qna/notice");
    return modelAndView;
  }

  // notice content
  @RequestMapping(
    value = "/notice_content/{uniqueId}",
    method = RequestMethod.GET
  )
  public ModelAndView noticeContent(
    @RequestParam Map<String, Object> params,
    @PathVariable String uniqueId,
    ModelAndView modelAndView
  ) {
    params.put("NOTICE_UID", uniqueId);
    Object resultMap = noticeService.getNoticeUID(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("notice_N_qna/notice_content");
    return modelAndView;
  }

  // notice faq
  @RequestMapping(value = "/notice_faq", method = RequestMethod.GET)
  public ModelAndView noticefaq(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    modelAndView.setViewName("notice_N_qna/notice_questions");
    return modelAndView;
  }
}
