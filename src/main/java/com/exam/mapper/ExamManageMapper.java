package com.exam.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.ExamManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ExamManageMapper {
    //查询所有考试信息
    List<ExamManage> findAll();

    //分页查询所有考试信息
    IPage<ExamManage> findAllPage( Page page);

    //分页按考试类型查询所有考试信息
    IPage<ExamManage> findByType( Page page,String type);

    //根据id查询考试信息
    ExamManage findById(Integer examCode);

    //根据id删除考试信息
    int delete(Integer examCode);

    //更新考试信息
    int update(ExamManage exammanage);

    //添加考试信息
    int add(ExamManage exammanage);


    ExamManage findOnlyPaperId();


}