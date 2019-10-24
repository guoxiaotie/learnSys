package com.xafdy.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xafdy.model.StudentFile;
import com.xafdy.model.StudentFileExample;

public interface StudentFileMapper {
	void saveEntity(StudentFile studentFile);
	void deleteEntity(Integer id);
	void searchEntity(StudentFile studentFile);
	void deleteEntity(int id);
    long countByExample(StudentFileExample example);
    int deleteByExample(StudentFileExample example);   
    int deleteByPrimaryKey(Integer id);  
    int insert(StudentFile record); 
    int insertSelective(StudentFile record);
    List<StudentFile> selectByExample(StudentFileExample example);
    StudentFile selectByPrimaryKey(Integer id);
    int updateByExampleSelective(@Param("record") StudentFile record, @Param("example") StudentFileExample example);
    int updateByExample(@Param("record") StudentFile record, @Param("example") StudentFileExample example);
    int updateByPrimaryKeySelective(StudentFile record);  
    int updateByPrimaryKey(StudentFile record);
    List<StudentFile> searchEntity(int id);
    List<StudentFile> searchAllEntity(int id);//查询所有学生文件
    StudentFile searchEntityById(Integer id);
}