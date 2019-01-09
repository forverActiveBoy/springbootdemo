package com.yunkan.service.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yunkan.dao.LogDao;
import com.yunkan.entity.Log;
import com.yunkan.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class LogServiceImpl implements LogService{
    @Autowired
    private LogDao logDao;
    @Override
    public Map findByPage(int page, int rows) {
        int start = (page-1)*rows+1;
        List<Log> list = logDao.selectByPage(start, rows);
        long count = logDao.getLogRowCount();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total",count);
        map.put("rows",list);
        return map;
    }
}