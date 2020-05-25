package com.lzhpo.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.lzhpo.admin.entity.Menu;
import com.lzhpo.admin.entity.business.RecordTable2;
import com.lzhpo.admin.entity.vo.ShowMenuVo;

import java.util.List;
import java.util.Map;

/**
 * <p> Author：lzhpo </p>
 * <p> Title：</p>
 * <p> Description：</p>
 */
public interface BusiMapper extends BaseMapper<RecordTable2> {

    List<RecordTable2> selectResignedTable2(String sequence);

}