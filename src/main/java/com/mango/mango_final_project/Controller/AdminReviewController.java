package com.mango.mango_final_project.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mango.mango_final_project.service.AdminReviewService;

@Controller
public class AdminReviewController {

    @Autowired
    AdminReviewService adminReviewService;

    // admin 리뷰 리스트 출력
    @RequestMapping(value = "/admin/adminReview/{currentPage}", method = RequestMethod.GET)
    public ModelAndView adminReview(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminReviewService.getReviewListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_reviews");
        return modelAndView;
    }

    // admin 리뷰 검색
    @RequestMapping(value = "/admin/adminReviewSearch", method = RequestMethod.POST)
    public ModelAndView adminReviewSearch(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = adminReviewService.getReviewSearchList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_reviews");
        return modelAndView;
    }

    // admin 리뷰 삭제
    @RequestMapping(value = "/admin/adminReviewDelete/{currentPage}", method = RequestMethod.GET)
    public ModelAndView adminReviewDelete(@RequestParam Map<String, Object> params, @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = adminReviewService.deleteReviewAndGetReviewList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_reviews");
        return modelAndView;
    }
}
