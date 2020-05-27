package com.lzhpo.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lzhpo.admin.entity.business.RecordTable2;
import com.lzhpo.admin.entity.business.RecordTable3;
import com.lzhpo.admin.mapper.BusiMapper;
import com.lzhpo.admin.mapper.BusiResignedEmpMapper;
import com.lzhpo.admin.service.RecordTable2Service;
import com.lzhpo.admin.service.RecordTable3Service;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * <p> Author：lzhpo </p>
 * <p> Title：</p>
 * <p> Description：</p>
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class RecordTable3Impl extends ServiceImpl<BusiResignedEmpMapper, RecordTable3> implements RecordTable3Service {


    @Override
    public List<RecordTable3> getRecordTable3(String sequence) {
        return baseMapper.queryResignEmp(sequence);
    }
}
