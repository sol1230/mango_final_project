package com.mango.mango_final_project.Controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.WineInfoService;
import com.mango.mango_final_project.user.model.vo.User;
import com.mango.mango_final_project.utils.CommonUtils;

@Controller
public class WineInfoController {
    @Autowired
    WineInfoService wineInfoService;

    @Autowired
    CommonUtils commonUtils;

    // 와인 정보
    @RequestMapping(value = "/wine/wine_info/{wineName}/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineInfo(@RequestParam Map<String, Object> params
    , @PathVariable String wineName, @PathVariable String currentPage, ModelAndView modelAndView, HttpSession session) {
        User user = new User();
        params.put("WINE_NAME_EN", wineName);
        params.put("currentPage", Integer.parseInt(currentPage));
        Object wishlistChcek = null;
        if((User) session.getAttribute("loginUser") != null){
            user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
            params.put("USER_UID", user.getUSER_UID());
            wishlistChcek = wineInfoService.wineWishlistCheck(params);
        }
        Object resultMap = wineInfoService.wineInfoList(params);
        Object resultStoreList = wineInfoService.wineStoreInfoList(params);
        Object resultReviewList = wineInfoService.wineReviewWithPagination(params);
        Object resultQNAList = wineInfoService.wineQNAWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("resultStoreList", resultStoreList);
        modelAndView.addObject("resultReviewList", resultReviewList);
        modelAndView.addObject("resultQNAList", resultQNAList);
        modelAndView.setViewName("wine/wine_info");
        if((User) session.getAttribute("loginUser") != null){
            modelAndView.addObject("wishlistChcek", wishlistChcek);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/wine/wine_info/insert/{wineName}/{currentPage}", method = RequestMethod.POST)
    public ModelAndView wineQNAInsert(@RequestParam Map<String, Object> params
    , @PathVariable String wineName, @PathVariable String currentPage, ModelAndView modelAndView, HttpSession session) {
        User user = new User();
        params.put("WINE_NAME_EN", wineName);
        params.put("currentPage", Integer.parseInt(currentPage));
        Object wishlistChcek = null;
        if((User) session.getAttribute("loginUser") != null){
            user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
            params.put("USER_UID", user.getUSER_UID());
            wishlistChcek = wineInfoService.wineWishlistCheck(params);
        }
        Object resultMap = wineInfoService.wineInfoList(params);
        Object resultStoreList = wineInfoService.wineStoreInfoList(params);
        Object resultReviewList = wineInfoService.wineReviewWithPagination(params);
        Object resultQNAList = wineInfoService.wineQNAInsertAndList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("resultStoreList", resultStoreList);
        modelAndView.addObject("resultReviewList", resultReviewList);
        modelAndView.addObject("resultQNAList", resultQNAList);
        if((User) session.getAttribute("loginUser") != null){
            modelAndView.addObject("wishlistChcek", wishlistChcek);
        }
        modelAndView.setViewName("wine/wine_info");
        return modelAndView;
    }
    @RequestMapping(value = "/wine/wine_info/review_insert/{wineName}/{currentPage}", method = RequestMethod.POST)
    public ModelAndView wineReviewInsert(@RequestParam Map<String, Object> params
    , @PathVariable String wineName, @PathVariable String currentPage, ModelAndView modelAndView, HttpSession session) {
        User user = new User();
        params.put("WINE_NAME_EN", wineName);
        params.put("currentPage", Integer.parseInt(currentPage));
        Object wishlistChcek = null;
        if((User) session.getAttribute("loginUser") != null){
            user.setUSER_UID(((User) session.getAttribute("loginUser")).getUSER_UID());
            params.put("USER_UID", user.getUSER_UID());
            wishlistChcek = wineInfoService.wineWishlistCheck(params);
        }
        Object resultMap = wineInfoService.wineInfoList(params);
        Object resultStoreList = wineInfoService.wineStoreInfoList(params);
        Object resultReviewList = wineInfoService.wineReviewInsertAndList(params);
        Object resultQNAList = wineInfoService.wineQNAWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("resultStoreList", resultStoreList);
        modelAndView.addObject("resultReviewList", resultReviewList);
        modelAndView.addObject("resultQNAList", resultQNAList);
        if((User) session.getAttribute("loginUser") != null){
            modelAndView.addObject("wishlistChcek", wishlistChcek);
        }
        modelAndView.setViewName("wine/wine_info");
        return modelAndView;
    }

}
