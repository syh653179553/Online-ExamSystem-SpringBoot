package com.exam.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.JudgeQuestion;

import java.util.List;

public interface JudgeQuestionService {

    List<JudgeQuestion> findByIdAndType(Integer paperId);

    IPage<JudgeQuestion> findAll(Page<JudgeQuestion> page);

    JudgeQuestion findOnlyQuestionId();

    int add(JudgeQuestion judgeQuestion);

    List<Integer> findBySubject(String subject,Integer pageNo);
    List<Integer> findBySubjectSimply(String subject,Integer pageNo);
    List<Integer> findBySubjectCommon(String subject,Integer pageNo);
    List<Integer> findBySubjectDiff(String subject,Integer pageNo);

    IPage<JudgeQuestion> findBySub(Page page,String subject);
}
