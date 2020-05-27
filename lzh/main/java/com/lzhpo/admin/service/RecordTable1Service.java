package com.lzhpo.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.lzhpo.admin.entity.business.RecordTable1;
import com.lzhpo.admin.entity.business.RecordTable2;

import java.util.List;


public interface RecordTable1Service extends IService<RecordTable1> {
     List<RecordTable1> getRecordTable1(String sequenc);
}
