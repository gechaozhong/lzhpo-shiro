package com.lzhpo.admin.controller;

import com.lzhpo.admin.entity.business.RecordTable3;
import com.lzhpo.admin.service.BusinessService;
import com.lzhpo.admin.service.RecordTable1Service;
import com.lzhpo.admin.service.RecordTable2Service;
import com.lzhpo.admin.service.RecordTable3Service;
import com.lzhpo.common.annotation.SysLog;
import com.lzhpo.common.util.ResponseEntity;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

@Api
@Controller
@RequestMapping("admin/system/business")
public class BusiController {

    @Autowired
    RecordTable1Service recordTable1Service;

    @Autowired
    RecordTable2Service recordTable2Service;

    @Autowired
    RecordTable3Service recordTable3Service3;

    @Autowired
    BusinessService businessService;



    @GetMapping("recordTable1Data")
    @SysLog("获取备案表1的数据")
    @ResponseBody// 加上该注解，被认为是restful接口，
    public ResponseEntity getRecordTable1(String seq){
        ResponseEntity res = ResponseEntity.success("ok");
        res.put("msg","success");
        res.put("code","0");
        res.put("data",recordTable1Service.getRecordTable1("1"));
        return res;
    }

    @GetMapping("recordTable2Data")
    @SysLog("获取备案表2的数据")
    @ResponseBody// 加上该注解，被认为是restful接口，
    public ResponseEntity getRecordTable2(String seq){
        ResponseEntity res2 = ResponseEntity.success("ok");
        res2.put("msg","success");
        res2.put("code","0");
        res2.put("data",recordTable2Service.getRecordTable2("1"));
        System.out.println("***********"+recordTable2Service.getRecordTable2("1").size());
        return res2;
    }


    @GetMapping("recordTable3Data")
    @SysLog("获取备案表3的数据")
    @ResponseBody// 加上该注解，被认为是restful接口，
    public ResponseEntity getRecordTable3(String seq){
        ResponseEntity res = ResponseEntity.success("ok");
        res.put("msg","success");
        res.put("code","0");
        List<RecordTable3> reList =  recordTable3Service3.getRecordTable3("1");
        res.put("data",recordTable3Service3.getRecordTable3("1"));
        System.out.println("***********"+recordTable3Service3.getRecordTable3("1").size());
        return res;
    }


    @PostMapping("upload")
    @ResponseBody
    @SysLog("上传execl")
    public ResponseEntity uploadExecl(@RequestParam("file") MultipartFile file){

        ResponseEntity res = ResponseEntity.success("ok");
        String name=file.getOriginalFilename();
        String extString = name.substring(name.lastIndexOf("."));
        if(!extString.equals(".xlsx")&&!extString.equals(".xls")){
            List<Object>li=new ArrayList<>();
            res.put("msg","文件格式错误");
            res.put("code","-1");
            return res;
        }

        businessService.uploadExeclService(file);
        res.put("msg","success");
        res.put("code","0");
        return res;
    }

}
