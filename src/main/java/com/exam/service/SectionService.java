package com.exam.service;


import com.exam.entity.Section;

import java.util.List;

public interface SectionService {
    List<Section> findBySubjectId(Integer subjectid);

    int deleteById(Integer sectionId);

    int add(Section section);
}
