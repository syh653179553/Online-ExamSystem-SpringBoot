package com.exam.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.Subject;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SubjectMapper {
    IPage<Subject> findAll(Page page);

    Subject findById(Integer subjectid);

    int insert(Subject record);

    int insertSelective(Subject record);

    int deleteById(Integer subjectid);

    int updateSubject(Subject subject);


}