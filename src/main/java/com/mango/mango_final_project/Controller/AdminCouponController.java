package com.mango.mango_final_project.Controller;

import com.mango.mango_final_project.service.AdminCouponService;
import com.mango.mango_final_project.utils.CommonUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/admin")
public class AdminCouponController {
  @Autowired
  AdminCouponService adminCouponService;

  @Autowired
  CommonUtils commonUtils;

  // -- ADMIN COUPON --
  // admin coupon list
  @RequestMapping(
    value = "/admin_coupon/{currentPage}",
    method = RequestMethod.GET
  )
  public ModelAndView adminCouponList(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    params.put("pageScale", 10);
    Object resultMap = adminCouponService.couponWithPagination(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon");
    return modelAndView;
  }

  // coupon insert
  @RequestMapping(value = "/admin_coupon_insert", method = RequestMethod.GET)
  public ModelAndView couponInsert(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    modelAndView.setViewName("admin/admin_coupon_add");
    return modelAndView;
  }

  // coupon insert complete
  @RequestMapping(
    value = "/admin_coupon_insert_done/{currentPage}",
    method = RequestMethod.POST
  )
  public ModelAndView couponInsertDone(
    MultipartHttpServletRequest multipartHttpServletRequest,
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    Iterator<String> fileNames = multipartHttpServletRequest.getFileNames(); // 파일 이름들 가져옴
    String absolutePath = commonUtils.getRelativeToAbsolutePath(
      "src/main/resources/static/files/"
    );

    Map attachfile = null;
    List attachfiles = new ArrayList();
    String physicalFileName = commonUtils.getUniqueSequence();
    String storePath = absolutePath + physicalFileName + File.separator;
    File newPath = new File(storePath);
    newPath.mkdir(); // create directory
    while (fileNames.hasNext()) {
      String fileName = fileNames.next();
      MultipartFile multipartFile = multipartHttpServletRequest.getFile(
        fileName
      );
      String originalFilename = multipartFile.getOriginalFilename();

      if (originalFilename != null && multipartFile.getSize() > 0) { // 방어
        String storePathFileName = storePath + originalFilename; // 저장할 path 이름
        try {
          multipartFile.transferTo(new File(storePathFileName)); // relativePath 경로

          // add SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME in HashMap
          attachfile = new HashMap<>();
          attachfile.put("COUPON_UID", params.get("COUPON_UID"));
          attachfile.put("COUPON_FILE", params.get("COUPON_FILE"));
          attachfile.put("ATTACHFILE_SEQ", commonUtils.getUniqueSequence());
          attachfile.put("ORGINALFILE_NAME", originalFilename);
          attachfile.put("PHYSICALFILE_NAME", physicalFileName);
          attachfile.put("USER_UID", params.get("USER_UID"));
          attachfile.put("COUPON_NAME", params.get("COUPON_NAME"));
          attachfile.put("COUPON_DATE", params.get("COUPON_DATE"));
          attachfile.put("COUPON_DATETIME1", params.get("COUPON_DATETIME1"));
          attachfile.put("COUPON_DATETIME2", params.get("COUPON_DATETIME2"));

          attachfiles.add(attachfile);
        } catch (IllegalStateException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
    }
    params.put("attachfiles", attachfiles);

    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminCouponService.insertCouponWithFileAndGetList(
      params
    );
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon");
    return modelAndView;
  }

  // coupon update
  @RequestMapping(value = "/admin_coupon_edit", method = RequestMethod.POST)
  public ModelAndView couponEdit(
    @RequestParam Map<String, Object> params,
    ModelAndView modelAndView
  ) {
    Object resultMap = adminCouponService.getCouponInfo(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon_modify");
    return modelAndView;
  }

  // coupon update complete
  @RequestMapping(
    value = "/admin_coupon_update/{currentPage}",
    method = RequestMethod.POST
  )
  public ModelAndView couponUpdate(
    @RequestParam Map<String, Object> parmas,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    parmas.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminCouponService.updateCouponAndGetList(parmas);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon");
    return modelAndView;
  }

  // coupon delete
  @RequestMapping(
    value = "/admin_coupon_delete/{currentPage}",
    method = RequestMethod.POST
  )
  public ModelAndView couponDelete(
    @RequestParam Map<String, Object> params,
    @PathVariable String currentPage,
    ModelAndView modelAndView
  ) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminCouponService.deleteCouponAndGetList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.setViewName("admin/admin_coupon");
    return modelAndView;
  }
}
