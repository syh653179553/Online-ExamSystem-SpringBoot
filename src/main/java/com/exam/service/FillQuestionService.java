package com.exam.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.FillQuestion;

import java.util.List;

public interface FillQuestionService {

    List<FillQuestion> findByIdAndType(Integer paperId);

    IPage<FillQuestion> findAll(Page<FillQuestion> page);

    FillQuestion findOnlyQuestionId();

    int add(FillQuestion fillQuestion);

    List<Integer> findBySubject(String subject,Integer pageNo);
    List<Integer> findBySubjectSimply(String subject,Integer pageNo);
    List<Integer> findBySubjectCommon(String subject,Integer pageNo);
    List<Integer> findBySubjectDiff(String subject,Integer pageNo);

    IPage<FillQuestion> findBySub(Page page,String sub);
}
