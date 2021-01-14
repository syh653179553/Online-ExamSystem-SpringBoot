package com.exam.mapper;

import com.exam.entity.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AdminMapper {
//    int deleteByPrimaryKey(Integer adminid);
//
//    int insert(Admin record);
//
//    int insertSelective(Admin record);
//
//    Admin selectByPrimaryKey(Integer adminid);
//
//    int updateByPrimaryKeySelective(Admin record);
//
//    int updateByPrimaryKey(Admin record);
    //查询所有admin用户
    public List<Admin> findAll();

    //根据id查询admin用户
    public Admin findById(Integer adminId);

    //根据id删除admin用户
    public int deleteById(Integer adminId);

    //更新admin用户信息
    public int update(Admin admin);

    //添加admin用户信息
    public int add(Admin admin);



}