package com.exam.mapper;

import com.exam.entity.PaperManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PaperManageMapper {
//    int insert(PaperManage record);
//    int insertSelective(PaperManage record);

    //查询试卷管理表的所有信息
    List<PaperManage> findAll();

    //根据id查询属于该id所有信息
    List<PaperManage> findById(Integer paperId);

    //添加一条数据
    int add( PaperManage paperManage);
}