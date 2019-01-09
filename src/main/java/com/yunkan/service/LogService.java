package com.yunkan.service;
import java.util.Map;


public interface LogService{
	Map findByPage(int page, int rows);
}