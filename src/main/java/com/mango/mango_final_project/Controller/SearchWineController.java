package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.SearchWineService;

@Controller
public class SearchWineController {
    
    @Autowired
    SearchWineService searchWineService;

    @RequestMapping(value = "/search/searchWineList", method = RequestMethod.GET)
    public ModelAndView getSearchWineList(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = searchWineService.getSearchWineList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("wine/menubar_wine_search");
        return modelAndView;
    }
}
