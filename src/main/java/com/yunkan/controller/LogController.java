package com.yunkan.controller;

import com.yunkan.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("/log")
public class LogController {
   @Autowired
   private LogService logService;
   @RequestMapping("/selectByPage.do")
   public @ResponseBody Map selectByPage(int page,int rows){
       Map map = logService.findByPage(page, rows);
       return map;
   }
}
