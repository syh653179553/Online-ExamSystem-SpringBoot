package com.exam.serviceimpl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.Subject;
import com.exam.mapper.SectionMapper;
import com.exam.mapper.SubjectMapper;
import com.exam.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubjectServiceImpl implements SubjectService {
    @Autowired
    private SubjectMapper subjectMapper;
    @Autowired
    private SectionMapper sectionMapper;

    @Override
    public IPage<Subject> findAll(Page<Subject> page) {
        return subjectMapper.findAll(page);
    }

    @Override
    public Subject findById(Integer subjectid) {
        return subjectMapper.findById(subjectid);
    }

    @Override
    public int deleteById(Integer subjectid) {
        return subjectMapper.deleteById(subjectid)+sectionMapper.deleteBySubjectId(subjectid);
    }

    @Override
    public int update(Subject subject) {
        return subjectMapper.updateSubject(subject);
    }

    @Override
    public int add(Subject subject) {
        return subjectMapper.insert(subject);
    }
}
