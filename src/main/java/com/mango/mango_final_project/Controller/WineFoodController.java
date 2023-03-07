package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.WineFoodService;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class WineFoodController {
    @Autowired
    WineFoodService wineFoodService;

    @Autowired
    CommonUtils commonUtils;

    // 소고기 와인 목록
    @RequestMapping(value = "/wine/wine_beef/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineBeef(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineBeefListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_food_beef");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_beef/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineBeefSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineBeefSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_food_beef");
        return modelAndView;
    }

    // 돼지고기 와인 목록
    @RequestMapping(value = "/wine/wine_pork/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePork(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.winePorkListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_food_pork");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_pork/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePorkSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.winePorkSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_food_pork");
        return modelAndView;
    }

    // 양고기 와인 목록
    @RequestMapping(value = "/wine/wine_lamb/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineLamb(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineLambListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_food_lamb");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_lamb/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineLambSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineLambSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_food_lamb");
        return modelAndView;
    }

    // 닭고기 와인 목록
    @RequestMapping(value = "/wine/wine_chicken/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineChicken(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineChickenListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_food_chicken");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_chicken/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineChickenSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineChickenSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_food_chicken");
        return modelAndView;
    }

    // 치즈 와인 목록
    @RequestMapping(value = "/wine/wine_cheese/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineCheese(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineCheeseListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_food_cheese");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_cheese/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineCheeseSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineCheeseSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_food_cheese");
        return modelAndView;
    }

    // 버섯 와인 목록
    @RequestMapping(value = "/wine/wine_mushroom/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineMushroom(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineMushroomListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_food_mushroom");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_mushroom/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineMushroomSelect(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = wineFoodService.wineMushroomSelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_food_mushroom");
        return modelAndView;
    }
    
    
    
}
