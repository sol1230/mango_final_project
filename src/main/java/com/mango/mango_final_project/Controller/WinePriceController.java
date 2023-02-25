package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    @RequestMapping(value = "/wine/wine_price_3", method = RequestMethod.GET)
    public ModelAndView wineFrance(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = winePriceService.winePrice3List(params);
        modelAndView.addObject("resultMap",resultMap);
        modelAndView.setViewName("/wine/wine_price");
        return modelAndView;
    }
}
