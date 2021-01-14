package com.exam.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.Teacher;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TeacherMapper {
//    int deleteByPrimaryKey(Integer teacherid);
//
//    int insert(Teacher record);
//
//    int insertSelective(Teacher record);
//
//    Teacher selectByPrimaryKey(Integer teacherid);
//
//    int updateByPrimaryKeySelective(Teacher record);
//
//    int updateByPrimaryKey(Teacher record);
    //分页查询老师信息
    IPage<Teacher> findAllPage( Page page);

    //查询所有老师信息
    public List<Teacher> findAll();

    //根据id查询一名老师信息
    public Teacher findById(Integer teacherId);

    //根据id删除一名老师信息
    public int deleteById(Integer teacherId);

    //更新老师信息
    public int update( Teacher teacher);

    //添加一条老师信息
    public int add(Teacher teacher);
}