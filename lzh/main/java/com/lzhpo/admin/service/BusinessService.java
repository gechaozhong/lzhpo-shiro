package com.lzhpo.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.lzhpo.admin.entity.business.RecordTable2;
import org.springframework.web.multipart.MultipartFile;

public interface BusinessService extends IService<RecordTable2> {
    public void uploadExeclService (MultipartFile execlFile);

}



