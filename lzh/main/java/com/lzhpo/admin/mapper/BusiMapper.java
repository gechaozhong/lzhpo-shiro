package com.lzhpo.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.lzhpo.admin.entity.business.RecordTable2;
import java.util.List;

/**
 * <p> Author：lzhpo </p>
 * <p> Title：</p>
 * <p> Description：</p>
 */

public interface BusiMapper extends BaseMapper<RecordTable2> {

    List<RecordTable2> laborEmployment(String sequence);
    void removeOldData(String orgCode);
}