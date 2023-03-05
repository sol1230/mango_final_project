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
public class NoticeController {
  @Autowired
  NoticeService noticeService;

  //index
  @RequestMapping(value = "/index", method = RequestMethod.POST)
  public ModelAndView index(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    params.put("pageScale", 10);
    Object resultMap = noticeService.bestWineList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("index");
    return modelAndView;
  }

  // NOTICE
  // notice list
  @RequestMapping(
    value = "/notice/notice/{currentPage}",
    method = RequestMethod.GET
  )
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
    value = "/notice/notice_content/{uniqueId}",
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

  // notice search
  @RequestMapping(
    value = "/notice/notice_search/{currentPage}",
    method = RequestMethod.GET
  )
  public ModelAndView noticeSearch(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = noticeService.getSearchNoticeAndGetList(params);
    Object searchNotice = params.get("SEARCH_NOTICE");
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.addObject("searchNotice", searchNotice);
    modelAndView.setViewName("notice_N_qna/notice_search");
    return modelAndView;
  }

  // notice faq
  @RequestMapping(value = "/notice/notice_faq", method = RequestMethod.GET)
  public ModelAndView noticefaq(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    modelAndView.setViewName("notice_N_qna/notice_questions");
    return modelAndView;
  }
}
