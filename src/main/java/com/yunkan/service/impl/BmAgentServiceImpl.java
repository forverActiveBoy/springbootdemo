package com.yunkan.service.impl;



import com.yunkan.annotation.LogAnnotation;
import com.yunkan.dao.BmAgentDao;
import com.yunkan.entity.BmAgent;
import com.yunkan.service.BmAgentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Transactional
@Service
public class BmAgentServiceImpl implements BmAgentService{
    private static final long serialVersionUID = 1L;
    @Autowired
    private BmAgentDao bmAgentDao;
    @Override
    public long getBmAgentRowCount(){
        return bmAgentDao.getBmAgentRowCount();
    }

    @Override
    public List<BmAgent> selectBmAgent(){
        return bmAgentDao.selectBmAgent();
    }
    @Override
    public BmAgent selectBmAgentByObj(BmAgent obj){
        return bmAgentDao.selectBmAgentByObj(obj);
    }

    @Override
    public BmAgent selectBmAgentById(Long id){
        return bmAgentDao.selectBmAgentById(id);
    }
    @LogAnnotation("添加商会")
    @Override
    public int addBmAgent(BmAgent value){
        int a = 0;
        try{
            a = bmAgentDao.insertBmAgent(value);
            /*throw new RuntimeException();*/
        }catch(Exception e){
            e.printStackTrace();
            //手动回滚事物
           TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
        }
        return a;
    }
    @Override
    public int insertNonEmptyBmAgent(BmAgent value){
        return bmAgentDao.insertNonEmptyBmAgent(value);
    }
    @Override
    public int deleteBmAgentById(Long id){
        return bmAgentDao.deleteBmAgentById(id);
    }
    @LogAnnotation("修改商会")
    @Override
    public int modifyBmAgentById(BmAgent enti){
        return bmAgentDao.updateBmAgentById(enti);
    }
    @Override
    public int updateNonEmptyBmAgentById(BmAgent enti){
        return bmAgentDao.updateNonEmptyBmAgentById(enti);
    }
    @LogAnnotation("分页查询商会")
    @Override
    public Map findByPage(int page, int rows) {
        //计算每页开始条数和结束条数
        int start = (page-1)*rows+1;
        //获得数据的总条数
        Long total = bmAgentDao.getBmAgentRowCount();
        List<BmAgent> list = bmAgentDao.getAllByPage(start, rows);
        Map map = new HashMap();
        //easy-UI框架会自动去找total代表总条数
        //rows代表当前页的数据
        map.put("total", total);
        map.put("rows", list);
        return map;
    }
    @LogAnnotation("删除商会")
    @Override
    public int removeMany(int[] ids) {
        int i = bmAgentDao.deleteMany(ids);
        return i;
    }


}