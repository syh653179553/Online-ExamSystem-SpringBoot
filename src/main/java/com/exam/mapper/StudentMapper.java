package com.exam.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface StudentMapper {
//    int deleteByPrimaryKey(Integer studentid);
//
//    int insert(Student record);
//
//    int insertSelective(Student record);
//
//    Student selectByPrimaryKey(Integer studentid);
//
//    int updateByPrimaryKeySelective(Student record);
//
//    int updateByPrimaryKey(Student record);

    //分页查询所有学生
    IPage<Student> findAll( Page page);

    //根据id查询学生信息
    Student findById(Integer studentId);

    //根据id删除学生信息
    int deleteById(Integer studentId);

    //更新学生信息
    int update( Student student);

    //更新密码
    int updatePwd( Student student);

    //添加一条学生信息
    int add(Student student);

}