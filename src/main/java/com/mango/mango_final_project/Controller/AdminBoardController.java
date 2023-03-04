package com.mango.mango_final_project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.AdminBoardService;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class AdminBoardController {

  @Autowired
  AdminBoardService adminBoardService;

  @Autowired
  CommonUtils commonUtils;

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
    Object searchQnaStatus = params.get("selectKeyField");
    Object searchQna = params.get("selectKeyWord");
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.addObject("searchQnaStatus", searchQnaStatus);
    modelAndView.addObject("searchQna", searchQna);
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

  // ------------ 공지 -----------------

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
  public ModelAndView adminNoticeInsert(MultipartHttpServletRequest multipartHttpServletRequest, @RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
            
    Iterator<String> fileNames = multipartHttpServletRequest.getFileNames(); // 파일 이름들 가져옴
    String absolutePath = commonUtils.getRelativeToAbsolutePath("src/main/resources/static/img/files/") ;
    
    Map attachfile = null;
    List attachfiles = new ArrayList();
    String physicalFileName = commonUtils.getUniqueSequence(); // 공통으로 사용하는 거라 while문 밖으로 빼주기
    String storePath = absolutePath + physicalFileName + File.separator;
    File newPath = new File(storePath); // 파일 클래스의 mkdir 기능 사용하기 위해
    newPath.mkdir();    // create directory
    while(fileNames.hasNext()){ //hasNext --> 다음 값이 있느냐
        String fileName = fileNames.next();
        MultipartFile multipartFile =  multipartHttpServletRequest.getFile(fileName); 
        String originalFileName = multipartFile.getOriginalFilename(); 
        
        if(originalFileName != null && multipartFile.getSize() > 0) { // 방어처리

            String storePathFileName = storePath + originalFileName; // 저장할 path 이름
            try {
                multipartFile.transferTo(new File(storePathFileName)); // relativePath 경로 설정
                
                // SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME 이 3가지를 중점적으로 넣어야 한다
                // 이걸 모아서 뭉치로 묶어 params로 넣어야 한다. 3가지를 list로 넣고 각각을 map으로
            // 1. HashMap에 넣어주기
            attachfile = new HashMap<>();
            attachfile.put("NOTICE_DATE", params.get("NOTICE_DATE"));
            attachfile.put("NOTICE_TITLE", params.get("NOTICE_TITLE"));
            attachfile.put("NOTICE_CONTENT", params.get("NOTICE_CONTENT"));
            attachfile.put("NOTICE_FILE", params.get("NOTICE_FILE"));
            attachfile.put("NOTICE_ATTACHFILE_SEQ", commonUtils.getUniqueSequence());
            attachfile.put("NOTICE_ORIGINALFILE_NAME", originalFileName);
            attachfile.put("NOTICE_PHYSICALFILE_NAME", physicalFileName);
            attachfile.put("USER_UID", params.get("USER_UID"));
            
            // 2. ArrayList로 묶기
            attachfiles.add(attachfile);
            
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    params.put("attachfiles", attachfiles);
    
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminBoardService.insertNoticeWithFileAndGetNoticeList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_notice");
    return modelAndView;
  }

}
