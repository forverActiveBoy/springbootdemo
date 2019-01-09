package com.yunkan.controller;


import com.yunkan.entity.BmAgent;
import com.yunkan.service.BmAgentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import java.util.HashMap;
import java.util.Map;

@RestController

@RequestMapping("/bmAgent")
public class BmAgentController {
    private static final long serialVersionUID = 1L;
    @Autowired
    private BmAgentService bmAgentService;



    @RequestMapping("/test.html")
    public String test(){
        return "hello SpringBoot!";
    }
    //easy-UI框架将自动将当前页码（page）和每页显示多少条(rows)发往后台
    @RequestMapping("/selectByPage.do")
    public @ResponseBody Map selectByPage(int page, int rows){
        Map map = bmAgentService.findByPage(page,rows);
        return map;
    }
    @RequestMapping("/addAgent.do")
    public Map addAgent(BmAgent bmAgent){
        Map map = new HashMap();
        try{
            int number = bmAgentService.addBmAgent(bmAgent);
            if(number > 0){
                map.put("isAdd", true);
            }
        }catch(Exception e){
            e.printStackTrace();
            map.put("isAdd", false);
            map.put("errMessage", "添加失败");
        }
        return map;
    }
    @RequestMapping("/updateAgent.do")
    public Map update2(BmAgent bmAgent){
        Map map  = new HashMap();
        int number = bmAgentService.modifyBmAgentById(bmAgent);
        if(number > 0){
            map.put("isAdd", true);
        }else{
            map.put("isAdd", false);
            map.put("errMessage", "修改失败");
        }
        return map;
    }
    @RequestMapping("/deleteMany.do")
    public Map deleteMany(int[] ids){
        Map map  = new HashMap();
        int number = bmAgentService.removeMany(ids);
        if(number > 0){
            map.put("isDelete", true);
        }else{
            map.put("isDelete", false);
            map.put("errMessage", "删除失败");
        }
        return map;
    }
}
