package com.exam.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.Score;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ScoreMapper {
//    int deleteByPrimaryKey(Integer scoreid);
//
//    int insert(Score record);
//
//    int insertSelective(Score record);
//
//    Score selectByPrimaryKey(Integer scoreid);
//
//    int updateByPrimaryKeySelective(Score record);
//
//    int updateByPrimaryKey(Score record);

    //添加一条成绩记录
    int add(Score score);

    //查询所有成绩记录
    List<Score> findAll();

    // 分页
    IPage<Score> findByIdPage(@Param("page") Page<?> page, @Param("studentId") Integer studentId);

    // 不分页
    List<Score> findById(Integer studentId);

    // 查询每位学生的学科分数。
    List<Score> findByExamCode(Integer examCode);
}