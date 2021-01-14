package com.exam.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.Subject;

public interface SubjectService {
    IPage<Subject> findAll(Page<Subject> page);

    Subject findById(Integer subjectid);

    int deleteById(Integer subjectid);

    int update(Subject subject);

    int add(Subject subject);
}
