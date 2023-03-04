package com.mango.mango_final_project.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.WineDetailsSelectService;

@Controller
public class WineDetailsSelectController {
    
    @Autowired
    WineDetailsSelectService wineDetailsSelectService;

    // Event 수정 화면 출력
    @RequestMapping(value = "/wine/wineDetailsSelect/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineDetailsSelect(HttpServletRequest request, @PathVariable String currentPage, @RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        String[] WINE_TYPE_LIST = request.getParameterValues("WINE_TYPE");
        String[] WINE_COUNTRY_LIST = request.getParameterValues("WINE_COUNTRY");
        String[] WINE_REGION_LIST = request.getParameterValues("WINE_REGION");
        String[] WINE_VARIETY_LIST = request.getParameterValues("WINE_VARIETY");
        String[] WINE_FOOD_PAIRING_LIST = request.getParameterValues("WINE_FOOD_PAIRING");

        params.put("WINE_TYPE_LIST", WINE_TYPE_LIST);
        params.put("WINE_COUNTRY_LIST", WINE_COUNTRY_LIST);
        params.put("WINE_REGION_LIST", WINE_REGION_LIST);
        params.put("WINE_VARIETY_LIST", WINE_VARIETY_LIST);
        params.put("WINE_FOOD_PAIRING_LIST", WINE_FOOD_PAIRING_LIST);
        params.put("currentPage", Integer.parseInt(currentPage));

        // WINE_SCOPE 출력 확인용
        // for(int i = 0; i < WINE_SCOPE_LIST.length; i++ ){
        //     System.out.println(WINE_SCOPE_LIST[i]);
        // }
        Object resultMap = wineDetailsSelectService.getWinDetailsSelectWithPagination(params);
        Object searchName = params.get("WINESEARCH_NAME");
        Object searchNameStatus = params.get("selectKeyField");  // select option 상태
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("searchName", searchName);
        modelAndView.addObject("searchNameStatus", searchNameStatus);
        modelAndView.setViewName("wine/wine_details_select");
        return modelAndView;
    }
}
