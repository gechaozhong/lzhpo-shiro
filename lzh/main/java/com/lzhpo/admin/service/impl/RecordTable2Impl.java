package com.lzhpo.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lzhpo.admin.entity.Menu;
import com.lzhpo.admin.entity.business.RecordTable2;
import com.lzhpo.admin.mapper.BusiMapper;
import com.lzhpo.admin.mapper.MenuMapper;
import com.lzhpo.admin.service.RecordTable2Service;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p> Author：lzhpo </p>
 * <p> Title：</p>
 * <p> Description：</p>
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class RecordTable2Impl extends ServiceImpl<BusiMapper, RecordTable2> implements RecordTable2Service {

    @Override
    public List<RecordTable2> getRecordTable2(String sequenc) {
        return baseMapper.selectResignedTable2(sequenc);
    }
}