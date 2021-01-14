package com.exam.serviceimpl;

import com.exam.entity.Section;
import com.exam.mapper.SectionMapper;
import com.exam.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SectionServiceImpl implements SectionService {
    @Autowired
    private SectionMapper sectionMapper;

    @Override
    public List<Section> findBySubjectId(Integer subjectid) {
        return sectionMapper.findBySubjectId(subjectid);
    }

    @Override
    public int deleteById(Integer sectionId) {
        return sectionMapper.deleteById(sectionId);
    }

    @Override
    public int add(Section section) {
        return sectionMapper.add(section);
    }


}
