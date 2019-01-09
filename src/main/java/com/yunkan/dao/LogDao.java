package com.yunkan.dao;
import com.yunkan.entity.Log;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface LogDao{
	/**
	 * 获得Log数据的总行数
	 * @return
	 */
    long getLogRowCount();
    List<Log> selectByPage(@Param("start") int start, @Param("rows") int rows);
	int insertLog(Log value);
}