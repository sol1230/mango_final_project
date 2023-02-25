package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.AdminBoardService;

@Controller
public class AdminBoardController {

  @Autowired
  AdminBoardService adminBoardService;

  // admin Qna(문의) 화면 출력
  @RequestMapping(value = "/admin/adminQna", method = RequestMethod.GET)
  public ModelAndView adminQna(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
    Object resultMap = adminBoardService.getListQna(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_qna");
    return modelAndView;
  }

  // admin Qna 검색 출력
  @RequestMapping(value = "/admin/adminQnaSearch/{currentPage}", method = RequestMethod.POST)
  public ModelAndView adminQnaSearch(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.getSearchListQna(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_qna");
    return modelAndView;
  }

  // admin Qna Cotent 화면 출력
  @RequestMapping(value = "/admin/adminQnaContent", method = RequestMethod.POST)
  public ModelAndView adminQnaContent(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
    Object resultMap = adminBoardService.getQnaContent(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_qna_answer");
    return modelAndView;
  }

  // admin Qna 답변 등록 완료 + 페이지네이션
  @RequestMapping(value = "/admin/adminQnaAnswer/{currentPage}", method = RequestMethod.POST)
  public ModelAndView adminQnaAnswer(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.updateQnaAnswerAndGetQnaList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_qna");
    return modelAndView;
  }

  // admin Qna 리스트 삭제 + 페이지네이션
  @RequestMapping(value = "/admin/adminQnaDelete/{currentPage}", method = RequestMethod.POST)
  public ModelAndView adminQnaDelete(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.deleteQnaAndGetQnaList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_qna");
    return modelAndView;
  }

  // admin Qna(문의) + 페이지네이션 화면 출력
  @RequestMapping(value = "/admin/adminQna/{currentPage}", method = RequestMethod.GET)
  public ModelAndView adminQnaPagination(@RequestParam Map<String, Object> params
       , @PathVariable String currentPage, ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.getQnaListWithPagination(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_qna");
    return modelAndView;
  }

  // Notice(공지) + 페이지네이션 화면 출력
  @RequestMapping(value = "/admin/adminNotice/{currentPage}", method = RequestMethod.GET)
  public ModelAndView adminNoticePagination(@RequestParam Map<String, Object> params
        , @PathVariable String currentPage, ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.getNoticeListWithPagination(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_notice");
    return modelAndView;
  }

  // 공지 수정 화면 출력
  @RequestMapping(value = "/admin/adminNoticeModify", method = RequestMethod.POST)
  public ModelAndView adminNoticeModify(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
    Object resultMap = adminBoardService.getNoticeContent(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_notice_modify");
    return modelAndView;
  }

  // 공지 수정 업데이트 + 페이지네이션
  @RequestMapping(value = "/admin/adminNoticeUpate/{currentPage}", method = RequestMethod.POST)
  public ModelAndView adminNoticeUpdate(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.updateNoticeAndGetNoticeList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_notice");
    return modelAndView;
  }

  // 공지 삭제 + 페이지네이션
  @RequestMapping(value = "/admin/adminNoticeDelete/{currentPage}", method = RequestMethod.POST)
  public ModelAndView adminNoticeDelete(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.deleteNoticeAndGetNoticeList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_notice");
    return modelAndView;
  }

  // 공지 추가 + 페이지네이션
  @RequestMapping(value = "/admin/adminNoticeInsert/{currentPage}", method = RequestMethod.POST)
  public ModelAndView adminNoticeInsert(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.insertNoticeAndGetNoticeList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_notice");
    return modelAndView;
  }

}
