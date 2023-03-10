package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
    @RequestMapping(value = "/wine/wine_red/{currentPage}", method = RequestMethod.GET)
    public ModelAndView redWine(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineTypeService.redwineListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_red");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_red/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView redWineSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineTypeService.redwineSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_red");
        return modelAndView;
    }
    // 화이트 와인 목록
    @RequestMapping(value = "/wine/wine_white/{currentPage}", method = RequestMethod.GET)
    public ModelAndView whiteWine(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineTypeService.whitewineListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_white");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_white/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView whiteWineSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineTypeService.whitewineSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_white");
        return modelAndView;
    }
    // 로제 와인 목록
    @RequestMapping(value = "/wine/wine_rose/{currentPage}", method = RequestMethod.GET)
    public ModelAndView roseWine(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineTypeService.rosewineListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_rose");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_rose/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView roseWineSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineTypeService.rosewineSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_rose");
        return modelAndView;
    }
    // 스파클링 와인 목록
    @RequestMapping(value = "/wine/wine_sparkling/{currentPage}", method = RequestMethod.GET)
    public ModelAndView sparklingWine(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineTypeService.sparklingwineListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_sparkling");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_sparkling/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView sparklingWineSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineTypeService.sparklingwineSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_sparkling");
        return modelAndView;
    }
}
