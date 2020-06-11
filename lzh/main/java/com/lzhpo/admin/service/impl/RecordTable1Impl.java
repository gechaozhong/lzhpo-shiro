package com.lzhpo.admin.service.impl;



import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lzhpo.admin.entity.business.RecordTable1;
import com.lzhpo.admin.mapper.BusiSummaryMapper;
import com.lzhpo.admin.service.RecordTable1Service;
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
public class RecordTable1Impl extends ServiceImpl<BusiSummaryMapper, RecordTable1> implements RecordTable1Service {


    @Override
    public List<RecordTable1> getRecordTable1(String sequence) {
        return baseMapper.querySummaryCompany(sequence);
    }

    @Override
    public List<RecordTable1> getAppendingCase() {
        return baseMapper.queryAppendingCase();
    }
}
