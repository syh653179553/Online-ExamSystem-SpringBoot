package com.exam.mapper;

import com.exam.entity.Section;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SectionMapper {
    List<Section> findBySubjectId(Integer subjectid);

    int deleteById(Integer sectionId);

    int deleteBySubjectId(Integer subjectid);

    int add(Section section);
}
