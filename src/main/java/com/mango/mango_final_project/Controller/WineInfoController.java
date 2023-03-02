package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.WineInfoService;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class WineInfoController {
    @Autowired
    WineInfoService wineInfoService;

    @Autowired
    CommonUtils commonUtils;

    // 와인 정보
    @RequestMapping(value = "/wine/wine_info/{wineName}", method = RequestMethod.GET)
    public ModelAndView wineInfo(@RequestParam Map<String, Object> params
    , @PathVariable String wineName, ModelAndView modelAndView) {
        params.put("WINE_NAME_EN", wineName);
        Object resultMap = wineInfoService.wineInfoList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("wine/wine_info");
        return modelAndView;
    }

    // // 와인 리뷰
    // @RequestMapping(value = { "/wine/wine_info/{wineName}" }, method = RequestMethod.GET)
    // public ModelAndView wineReviewList(@RequestParam Map<String, Object> params
    //         , @PathVariable String wineName, ModelAndView modelAndView) {
    //     params.put("wineName", Integer.parseInt(wineName));
    //     params.put("pageScale", 10);
    //     Object resultMap = wineInfoService.wineReviewWithPagination(params);
    //     modelAndView.addObject("resultMap", resultMap);
    //     modelAndView.setViewName("wine/wine_info");
    //     return modelAndView;
    // }
    
    
}
