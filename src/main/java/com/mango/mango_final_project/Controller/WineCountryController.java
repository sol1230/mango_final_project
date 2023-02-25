package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.WineCountryService;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class WineCountryController {
    @Autowired
    WineCountryService wineCountryService;

    @Autowired
    CommonUtils commonUtils;

    // 프랑스 와인 목록
    @RequestMapping(value = "/wine/wine_france", method = RequestMethod.GET)
    public ModelAndView wineFrance(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = wineCountryService.wineFranceList(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("/wine/wine_country_france");
        return modelAndView;
    }

    // 스페인 와인 목록
    @RequestMapping(value = "/wine/wine_spain", method = RequestMethod.GET)
    public ModelAndView wineSpain(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = wineCountryService.wineSpainList(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("/wine/wine_country_spain");
        return modelAndView;
    }
    
    
    
}
