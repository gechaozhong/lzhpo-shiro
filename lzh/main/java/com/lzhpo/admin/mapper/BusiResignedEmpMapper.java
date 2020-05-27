package com.lzhpo.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import com.lzhpo.admin.entity.business.RecordTable3;

import java.util.List;

/**
 * <p> Author：lzhpo </p>
 * <p> Title：</p>
 * <p> Description：</p>
 */

public interface BusiResignedEmpMapper extends BaseMapper<RecordTable3> {

    List<RecordTable3> queryResignEmp(String sequence);
}