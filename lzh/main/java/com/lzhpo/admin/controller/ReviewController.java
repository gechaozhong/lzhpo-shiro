package com.lzhpo.admin.controller;

import com.lzhpo.admin.service.BusinessService;
import com.lzhpo.admin.service.RecordTable1Service;
import com.lzhpo.admin.service.RecordTable2Service;
import com.lzhpo.admin.service.RecordTable3Service;
import com.lzhpo.common.annotation.SysLog;
import com.lzhpo.common.realm.AuthRealm;
import com.lzhpo.common.util.ResponseEntity;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import static org.apache.shiro.SecurityUtils.getSubject;

@Api
@Controller
@RequestMapping("admin/system/review")
public class ReviewController {

    @Autowired
    RecordTable1Service recordTable1Service;

    @Autowired
    RecordTable2Service recordTable2Service;

    @Autowired
    RecordTable3Service recordTable3Service3;

    @Autowired
    BusinessService businessService;

    AuthRealm.ShiroUser user;

    @GetMapping("pendingApprovalData")
    @SysLog("获取待审核数据")
    @ResponseBody// 加上该注解，被认为是restful接口，
    public ResponseEntity pendingApprovalData(){
        user =  (AuthRealm.ShiroUser)getSubject().getPrincipal();
        ResponseEntity res = ResponseEntity.success("ok");
        res.put("msg","success");
        res.put("code","0");
        res.put("data",recordTable1Service.getAppendingCase());
        return res;
    }

    @GetMapping("pendingApproval")
    @SysLog("跳转到待审查页面")
    public String trunToAppendingApprovalPage(){ return "admin/approval/pendingApproval";}


    @GetMapping("recordTable2Data")
    @SysLog("获取备案表2的数据")
    // 加上该注解，被认为是restful接口，
    @ResponseBody
    public ResponseEntity getRecordTable2(String seq){

        user =  (AuthRealm.ShiroUser)getSubject().getPrincipal();

        ResponseEntity res2 = ResponseEntity.success("ok");

        res2.put("msg","success");
        res2.put("code","0");
        res2.put("data",recordTable2Service.getRecordTable2("1",user.getId()));
        return res2;
    }


    @GetMapping("recordTable3Data")
    @SysLog("获取备案表3的数据")
    @ResponseBody// 加上该注解，被认为是restful接口，
    public ResponseEntity getRecordTable3(String seq){
        user =  (AuthRealm.ShiroUser)getSubject().getPrincipal();
        ResponseEntity res = ResponseEntity.success("ok");
        res.put("msg","success");
        res.put("code","0");
        res.put("data",recordTable3Service3.getRecordTable3(user.getId()));
        return res;
    }




}
