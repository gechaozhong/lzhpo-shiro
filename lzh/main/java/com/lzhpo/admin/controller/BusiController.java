package com.lzhpo.admin.controller;


import com.lzhpo.admin.entity.business.RecordTable2;

import com.lzhpo.admin.service.RecordTable2Service;
import com.lzhpo.common.annotation.SysLog;
import com.lzhpo.common.util.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import java.util.List;

/**
 * <p> Author：lzhpo </p>
 * <p> Title：</p>
 * <p> Description：</p>
 */
@Controller
@RequestMapping("admin/system/business")
public class BusiController {


    @Autowired
    RecordTable2Service recordTable2Service;

    @GetMapping("recordTable2Data")
    @SysLog("获取备案表2的数据")
    @ResponseBody// 加上该注解，被认为是restful接口，
    public ResponseEntity getRecordTable2(String seq){
        ResponseEntity res = ResponseEntity.success("ok");
        res.put("msg","success");
        res.put("code","0");
        res.put("data",recordTable2Service.getRecordTable2("1"));
        System.out.println("***********"+recordTable2Service.getRecordTable2("1").size());
        return res;
    }

}
