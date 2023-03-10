package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.EventService;

@Controller
public class EventController {
    
    @Autowired
    EventService eventService;

    // Event 수정 화면 출력
    @RequestMapping(value = "/event/event", method = RequestMethod.GET)
    public ModelAndView eventPage(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = eventService.getEventList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("event/event");
        return modelAndView;
    }

    // Event 진행중, 종료 이벤트 검색
    @RequestMapping(value = "/event/eventSearchWithDate", method = RequestMethod.GET)
    public ModelAndView eventSearchWithDate(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = eventService.getEventListSearchWithDate(params);
        modelAndView.addObject("resultMap", resultMap);
        Object eventStatus = params.get("selectKeyField");  // select option 상태
        modelAndView.addObject("eventStatus", eventStatus);
        modelAndView.setViewName("event/event");
        return modelAndView;
    }

    // Event 내용 출력
    @RequestMapping(value = "/event/eventContent/{uniqueId}", method = RequestMethod.GET)
    public ModelAndView eventPage(@RequestParam Map<String, Object> params, @PathVariable String uniqueId, ModelAndView modelAndView) {
        params.put("EVENT_UID", uniqueId);
        Object resultMap = eventService.getEventContentWithUID(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("event/event_content");
        return modelAndView;
    }
}
