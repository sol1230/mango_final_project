package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.WineListService;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class WineListController {
    @Autowired
    WineListService wineService;

    @Autowired
    CommonUtils commonUtils;

    // 전체 와인 목록
    @RequestMapping(value = { "/wine/{currentPage}" }, method = RequestMethod.GET)
    public ModelAndView wineList(@RequestParam Map<String, Object> params
            , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = wineService.wineListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("wine/wine_list");
        return modelAndView;
    }

    // 최신순, 가격순, 인기순 나열
    @RequestMapping(value = { "/wine/wineSelect/{currentPage}" }, method = RequestMethod.GET)
    public ModelAndView wineSelectList(@RequestParam Map<String, Object> params
            , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineService.wineSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("selectName", selectName);
        modelAndView.setViewName("wine/wine_list");
        return modelAndView;
    }
    
    
}
