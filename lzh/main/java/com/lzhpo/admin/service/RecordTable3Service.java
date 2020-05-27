package com.lzhpo.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.lzhpo.admin.entity.business.RecordTable3;
import java.util.List;


public interface RecordTable3Service extends IService<RecordTable3> {
     List<RecordTable3> getRecordTable3(String sequence);
}
