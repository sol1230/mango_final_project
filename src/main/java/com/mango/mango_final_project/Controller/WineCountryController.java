package com.mango.mango_final_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
    @RequestMapping(value = "/wine/wine_france/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineFrance(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineCountryService.wineFranceListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_country_france");
        return modelAndView;
    }

    // 스페인 와인 목록
    @RequestMapping(value = "/wine/wine_spain/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineSpain(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineCountryService.wineSpainListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_country_spain");
        return modelAndView;
    }

    // 이탈리아 와인 목록
    @RequestMapping(value = "/wine/wine_italy/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineItaly(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineCountryService.wineItalyListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_country_italy");
        return modelAndView;
    }

    // 독일 와인 목록
    @RequestMapping(value = "/wine/wine_germany/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineGermany(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineCountryService.wineGermanyListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_country_germany");
        return modelAndView;
    }

    // 칠레 와인 목록
    @RequestMapping(value = "/wine/wine_chile/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineChile(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineCountryService.wineChileListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_country_chile");
        return modelAndView;
    }

    // 미국 와인 목록
    @RequestMapping(value = "/wine/wine_usa/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineUsa(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineCountryService.wineUsaListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_country_usa");
        return modelAndView;
    }
    
    
    
}
