package com.exam.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.JudgeQuestion;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface JudgeQuestionMapper {
//    int deleteByPrimaryKey(Integer questionid);
//
//    int insert(JudgeQuestion record);
//
//    int insertSelective(JudgeQuestion record);
//
//    JudgeQuestion selectByPrimaryKey(Integer questionid);
//
//    int updateByPrimaryKeySelective(JudgeQuestion record);
//
//    int updateByPrimaryKey(JudgeQuestion record);

    //根据试卷管理表的id查询出所有属于该试卷的所有判断题
    List<JudgeQuestion> findByIdAndType(Integer paperId);

    //分页查询所有判断题信息
    IPage<JudgeQuestion> findAll( Page page);

    //查询最后一条记录的questionId
    JudgeQuestion findOnlyQuestionId();

    //添加一条判断题
    int add( JudgeQuestion judgeQuestion);

    //根据科目随机查询出pageNo条判断题表id
    List<Integer> findBySubject(@Param("subject") String subject, @Param("pageNo") Integer pageNo);

    IPage<JudgeQuestion> findBySubtop(Page page,String subject);
    List<Integer> findBySubjectSimply(@Param("subject") String subject, @Param("pageNo") Integer pageNo);
    List<Integer> findBySubjectCommon(@Param("subject") String subject, @Param("pageNo") Integer pageNo);
    List<Integer> findBySubjectDiff(@Param("subject") String subject, @Param("pageNo") Integer pageNo);

}