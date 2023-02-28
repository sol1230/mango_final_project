package com.mango.mango_final_project.Controller;

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

import com.mango.mango_final_project.service.AdminEventService;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class AdminEventController {

    @Autowired
    AdminEventService adminEventService;

    @Autowired
    CommonUtils commonUtils;

    // admin Event 화면 출력
    @RequestMapping(value = "/admin/adminEvent/{currentPage}", method = RequestMethod.GET)
    public ModelAndView adminEvent(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminEventService.getEventListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_events");
        return modelAndView;
    }

    // Event 추가 + 페이지네이션
    @RequestMapping(value = "/admin/adminEventInsert/{currentPage}", method = RequestMethod.POST)
    public ModelAndView adminEventInsert(MultipartHttpServletRequest multipartHttpServletRequest, @RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        
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
                attachfile.put("EVENT_UID", params.get("EVENT_UID"));
                attachfile.put("EVENT_START", params.get("EVENT_START"));
                attachfile.put("EVENT_END", params.get("EVENT_END"));
                attachfile.put("EVENT_FILE", params.get("EVENT_FILE"));
                attachfile.put("EVENT_ATTACHFILE_SEQ", commonUtils.getUniqueSequence());
                attachfile.put("EVENT_ORIGINALFILE_NAME", originalFileName);
                attachfile.put("EVENT_PHYSICALFILE_NAME", physicalFileName);
                attachfile.put("EVENT_TITLE", params.get("EVENT_TITLE"));
                attachfile.put("EVENT_DATE", params.get("EVENT_DATE"));
                attachfile.put("EVENT_CONTENT", params.get("EVENT_CONTENT"));
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
        Object resultMap = adminEventService.insertEventWithFileAndGetEventList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_events");
        return modelAndView;
    }

    // Event 삭제 + 페이지네이션
    @RequestMapping(value = "/admin/adminEventDelete/{currentPage}", method = RequestMethod.POST)
    public ModelAndView adminEventDelete(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminEventService.deleteEventAndGetEventList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_events");
        return modelAndView;
    }
    
    // Event 수정 화면 출력
    @RequestMapping(value = "/admin/adminEventModify", method = RequestMethod.POST)
    public ModelAndView adminEventModify(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = adminEventService.getEventContent(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_event_modify");
      return modelAndView;
    }

    // Event 수정 업데이트 + 페이지네이션
    @RequestMapping(value = "/admin/adminEventModify/{currentPage}", method = RequestMethod.POST)
    public ModelAndView adminEventUpdate(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminEventService.updateEventAndGetEventList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_events");
        return modelAndView;
    }
}
