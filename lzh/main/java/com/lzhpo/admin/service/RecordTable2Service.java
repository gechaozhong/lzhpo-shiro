package com.lzhpo.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.lzhpo.admin.entity.business.RecordTable2;
import java.util.List;


public interface RecordTable2Service extends IService<RecordTable2> {
     List<RecordTable2> getRecordTable2(String sequenc);
}
