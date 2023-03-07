package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.WinePriceService;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class WinePriceController {
    @Autowired
    WinePriceService winePriceService;

    @Autowired
    CommonUtils commonUtils;

    // 3만원 이하 와인 목록
    @RequestMapping(value = "/wine/wine_price_3/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice3(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice3ListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_price_3");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_price_3/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice3Select(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice3SelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_price_3");
        return modelAndView;
    }
    // 3만원 ~ 6만원 와인 목록
    @RequestMapping(value = "/wine/wine_price_3_6/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice3_6(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice3_6ListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_price_3_6");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_price_3_6/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice3_6Select(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice3_6SelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_price_3_6");
        return modelAndView;
    }
    // 6만원 ~ 9만원 와인 목록
    @RequestMapping(value = "/wine/wine_price_6_9/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice6_9(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice6_9ListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_price_6_9");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_price_6_9/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice6_9Select(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice6_9SelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_price_6_9");
        return modelAndView;
    }
    // 9만원 ~ 15만원 와인 목록
    @RequestMapping(value = "/wine/wine_price_9_15/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice9_15(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice9_15ListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_price_9_15");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_price_9_15/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice9_15Select(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice9_15SelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_price_9_15");
        return modelAndView;
    }
    // 15만원 ~ 20만원 와인 목록
    @RequestMapping(value = "/wine/wine_price_15_20/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice15_20(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice15_20ListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_price_15_20");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_price_15_20/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice15_20Select(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice15_20SelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_price_15_20");
        return modelAndView;
    }
    // 20만원 이상 와인 목록
    @RequestMapping(value = "/wine/wine_price_20/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice20(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice20ListWithPagination(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("wine/wine_price_20");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_price_20/select/{currentPage}", method = RequestMethod.GET)
    public ModelAndView winePrice20Select(@RequestParam Map<String, Object> params
    , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = winePriceService.winePrice20SelectListWithPagination(params);
        Object selectName = params.get("select");
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.addObject("selectName",selectName);
        modelAndView.setViewName("wine/wine_price_20");
        return modelAndView;
    }
}
