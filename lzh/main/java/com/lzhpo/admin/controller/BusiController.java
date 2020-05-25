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
@RequestMapping("admin/system/busi")
public class BusiController {

    @Autowired
    RecordTable2Service recordTable2;

    @GetMapping("recordTable2")
    @SysLog("获取备案表2的数据")
    public List<RecordTable2> getRecordTable2(String seq){
        System.out.println("***********"+recordTable2.getRecordTable2("1").size());
        return recordTable2.getRecordTable2("1");
    }


}
