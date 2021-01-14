package com.exam.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.FillQuestion;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface FillQuestionMapper {
//    int deleteByPrimaryKey(Integer questionid);
//    int insert(FillQuestion record);
//    int insertSelective(FillQuestion record);
//    FillQuestion selectByPrimaryKey(Integer questionid);
//    int updateByPrimaryKeySelective(FillQuestion record);
//    int updateByPrimaryKey(FillQuestion record);

    //根据试卷管理表的id查询出所有属于该试卷的所有填空题
    List<FillQuestion> findByIdAndType(Integer paperId);

    //分页查询所有填空题信息
    IPage<FillQuestion> findAll( Page page);

     //查询最后一条questionId
    FillQuestion findOnlyQuestionId();

    //添加一条填空题
    int add( FillQuestion fillQuestion);

    //根据科目随机查询出pageNo条填空题表id
    List<Integer> findBySubject(@Param("subject") String subject, @Param("pageNo") Integer pageNo);

    IPage<FillQuestion> findBySubtop(Page page,String subject);
    List<Integer> findBySubjectSimply(@Param("subject") String subject, @Param("pageNo") Integer pageNo);
    List<Integer> findBySubjectCommon(@Param("subject") String subject, @Param("pageNo") Integer pageNo);
    List<Integer> findBySubjectDiff(@Param("subject") String subject, @Param("pageNo") Integer pageNo);
}