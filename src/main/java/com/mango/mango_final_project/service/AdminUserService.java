package com.mango.mango_final_project.service;

import com.mango.mango_final_project.dao.CommonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminUserService {
  @Autowired
  CommonDao commonDao;
}
