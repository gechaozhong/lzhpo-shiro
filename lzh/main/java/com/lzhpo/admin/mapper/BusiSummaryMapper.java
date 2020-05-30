package com.lzhpo.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.lzhpo.admin.entity.business.RecordTable1;

import java.util.List;

/**
 * <p> Author：lzhpo </p>
 * <p> Title：</p>
 * <p> Description：</p>
 */

public interface BusiSummaryMapper extends BaseMapper<RecordTable1> {

    List<RecordTable1> querySummaryCompany(String sequence);
    void insertSummaryCompany(RecordTable1 rd);
}