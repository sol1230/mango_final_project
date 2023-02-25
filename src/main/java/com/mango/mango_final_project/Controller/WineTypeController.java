package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.mango.mango_final_project.service.WineTypeService;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class WineTypeController {
    @Autowired
    WineTypeService wineTypeService;

    @Autowired
    CommonUtils commonUtils;
    
    // 레드 와인 목록
    @RequestMapping(value = "/wine/wine_red", method = RequestMethod.GET)
    public ModelAndView redWine(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = wineTypeService.redWineList(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("/wine/wine_red");
        return modelAndView;
    }
    // 화이트 와인 목록
    @RequestMapping(value = "/wine/wine_white", method = RequestMethod.GET)
    public ModelAndView whiteWine(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = wineTypeService.whiteWineList(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("/wine/wine_white");
        return modelAndView;
    }
    // 로제 와인 목록
    @RequestMapping(value = "/wine/wine_rose", method = RequestMethod.GET)
    public ModelAndView roseWine(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = wineTypeService.roseWineList(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("/wine/wine_rose");
        return modelAndView;
    }
    // 스파클링 와인 목록
    @RequestMapping(value = "/wine/wine_sparkling", method = RequestMethod.GET)
    public ModelAndView sparklingWine(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = wineTypeService.sparklingWineList(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("/wine/wine_sparkling");
        return modelAndView;
    }
}
