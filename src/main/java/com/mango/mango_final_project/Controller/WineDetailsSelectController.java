package com.mango.mango_final_project.Controller;

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

    // 상품 검색, 와인 detail, 검색 order
    @RequestMapping(value = "/wine/wineDetailsSelect/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineDetailsSelect(HttpServletRequest request, @PathVariable String currentPage, @RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        String[] WINE_SCOPE_LIST = request.getParameterValues("WINE_SCOPE");
        String[] WINE_TYPE_LIST = request.getParameterValues("WINE_TYPE");
        String[] WINE_COUNTRY_LIST = request.getParameterValues("WINE_COUNTRY");
        String[] WINE_REGION_LIST = request.getParameterValues("WINE_REGION");
        String[] WINE_VARIETY_LIST = request.getParameterValues("WINE_VARIETY");
        String[] WINE_FOOD_PAIRING_LIST = request.getParameterValues("WINE_FOOD_PAIRING");

        float wine_scope_min = 0;
        float wine_scope_max = 0;

        if(WINE_SCOPE_LIST != null){
            wine_scope_max = Float.parseFloat(WINE_SCOPE_LIST[0]);
            wine_scope_min = Float.parseFloat(WINE_SCOPE_LIST[0]);
            if(WINE_SCOPE_LIST.length == 1) {
                for(int i = 0; i < WINE_SCOPE_LIST.length; i ++){
                    if(wine_scope_max < Float.parseFloat(WINE_SCOPE_LIST[i])){
                        wine_scope_max = Float.parseFloat(WINE_SCOPE_LIST[i]);
                    }
                }
                wine_scope_max = wine_scope_max + 1;
            } else {
                for(int i = 0; i < WINE_SCOPE_LIST.length; i ++){
                    if(wine_scope_max < Float.parseFloat(WINE_SCOPE_LIST[i])){
                        wine_scope_max = Float.parseFloat(WINE_SCOPE_LIST[i]);
                    }
                    if(wine_scope_min > Float.parseFloat(WINE_SCOPE_LIST[i])){
                        wine_scope_min = Float.parseFloat(WINE_SCOPE_LIST[i]);
                    }
                }
                wine_scope_max = wine_scope_max + 1;
            }
        }


        params.put("WINE_SCOPE_LIST", WINE_SCOPE_LIST);
        params.put("WINE_TYPE_LIST", WINE_TYPE_LIST);
        params.put("WINE_COUNTRY_LIST", WINE_COUNTRY_LIST);
        params.put("WINE_REGION_LIST", WINE_REGION_LIST);
        params.put("WINE_VARIETY_LIST", WINE_VARIETY_LIST);
        params.put("WINE_FOOD_PAIRING_LIST", WINE_FOOD_PAIRING_LIST);
        params.put("currentPage", Integer.parseInt(currentPage));

        if(WINE_SCOPE_LIST != null){
            params.put("WINE_SCOPE_MAX", wine_scope_max);
            params.put("WINE_SCOPE_MIN", wine_scope_min);
        }

        // WINE_SCOPE 출력 확인용
        // for(int i = 0; i < WINE_SCOPE_LIST.length; i++ ){
        //     System.out.println(WINE_SCOPE_LIST[i]);
        // }
        Object resultMap = wineDetailsSelectService.getWinDetailsSelectWithPagination(params);
        Object searchName = params.get("WINESEARCH_NAME");
        Object searchWineOrder = params.get("selectKeyField");  // select option 상태
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("searchName", searchName);
        modelAndView.addObject("searchWineOrder", searchWineOrder);
        // checkbox checked를 위해 체크한 값 보내기
        modelAndView.addObject("params", params);
        // modelAndView.addObject("wineTypeList", WINE_TYPE_LIST);
        // modelAndView.addObject("wineCountryList", WINE_COUNTRY_LIST);
        // modelAndView.addObject("wineRegionList", WINE_REGION_LIST);
        // modelAndView.addObject("wineVarietyList", WINE_VARIETY_LIST);
        // modelAndView.addObject("wineFoodPairingList", WINE_FOOD_PAIRING_LIST);
        modelAndView.setViewName("wine/wine_details_select");
        return modelAndView;
    }
}
