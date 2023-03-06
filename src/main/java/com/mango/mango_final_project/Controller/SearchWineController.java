package com.mango.mango_final_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.SearchWineService;

@Controller
public class SearchWineController {
    
    @Autowired
    SearchWineService searchWineService;

    // 상단 메뉴바 와인 상품 검색 리스트 출력
    @RequestMapping(value = "/search/searchWineList/{currentPage}", method = RequestMethod.GET)
    public ModelAndView getSearchWineList(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = searchWineService.getSearchWineListWithPagination(params);
        Object searchName = params.get("WINESEARCH_NAME");
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("searchName", searchName);
        modelAndView.setViewName("wine/menubar_wine_search");
        return modelAndView;
    }

    // 상단 메뉴바 와인 상품 검색 리스트 출력
    @RequestMapping(value = "/search/searchWineListWithOrder/{currentPage}", method = RequestMethod.GET)
    public ModelAndView getSearchWineListWithOrder(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = searchWineService.getSearchWineListOrderWithPagination(params);
        Object searchName = params.get("WINESEARCH_NAME");
        Object searchNameStatus = params.get("selectKeyField");  // select option 상태
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("searchName", searchName);
        modelAndView.addObject("searchNameStatus", searchNameStatus);
        modelAndView.setViewName("wine/menubar_wine_search");
        return modelAndView;
    }
}
