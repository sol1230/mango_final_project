package com.mango.mango_final_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mango.mango_final_project.dao.CommonDao;

@Service
public class AttachFileService {
    
    @Autowired
    CommonDao commonDao;
    
    // 비즈니스
    // delete를 하면서 List를 뱉어내는 function
    public Object deleteAndGetList(Object dataMap) {
        Object result = this.delete(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    // deleteMulti를 하면서 List를 뱉어내는 function
    public Object deleteMultiAndGetList(Object dataMap) {
        Object result = this.deleteMulti(dataMap); 
        result = this.getList(dataMap);
        return result;
    }

    // update를 하면서 List를 뱉어내는 function
    public Object updateAndGetList(Object dataMap) {
        Object result = this.updateOne(dataMap); 
        result = this.getList(dataMap);
        return result;
    }

    // insert를 하면서 List를 뱉어내는 function
    public Object insertAndGetList(Object dataMap) {
        Object result = this.insertOne(dataMap); 
        result = this.getList(dataMap);
        return result;
    }

    // 파일업로드하고 List를 뱉어내는 function
    public Object insertWithFilesAndGetList(Object dataMap) {
        // insert files
        Object result = this.insertOne(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    public Object getList(Object dataMap) {
        String sqlMapId = "AttachFile.selectListByUID"; 
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getOne(Object dataMap) {
        String sqlMapId = "AttachFile.selectByUID";
        Object result = commonDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object updateOne(Object dataMap) {
        String sqlMapId = "AttachFile.updateByUID";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object insertOne(Object dataMap) {
        String sqlMapId = "AttachFile.insertWithUID";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertMulti(Object dataMap) {
        String sqlMapId = "AttachFile.insertMulti";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object delete(Object dataMap) {
        String sqlMapId = "AttachFile.deleteByUID";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    // dao는 재활용
    public Object deleteMulti(Object dataMap) {
        String sqlMapId = "AttachFile.deleteMultiByUIDs";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }
}
