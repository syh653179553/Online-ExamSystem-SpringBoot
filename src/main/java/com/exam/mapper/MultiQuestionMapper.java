package com.exam.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.MultiQuestion;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MultiQuestionMapper {
//    int deleteByPrimaryKey(Integer questionid);
//
//    int insert(MultiQuestion record);
//
//    int insertSelective(MultiQuestion record);
//
//    MultiQuestion selectByPrimaryKey(Integer questionid);
//
//    int updateByPrimaryKeySelective(MultiQuestion record);
//
//    int updateByPrimaryKey(MultiQuestion record);
    /**
     * select * from multiquestions where questionId in (
     * 	select questionId from papermanage where questionType = 1 and paperId = 1001
     * )
     */
    //根据试卷管理表的id查询出所有属于该试卷的所有选择题
    List<MultiQuestion> findByIdAndType(Integer PaperId);

    //分页查询所有选择题信息
    IPage<MultiQuestion> findAll( Page page);

    //查询最后一条记录的questionId
    MultiQuestion findOnlyQuestionId();

    //添加一条选择题
    int add( MultiQuestion multiQuestion);

    //根据科目随机查询出pageNo条选择题表id
    List<Integer> findBySubject(@Param("subject") String subject,@Param("pageNo") Integer pageNo);

    IPage<MultiQuestion> findBySubtop(Page page,String subject);
    //根据科目随机查询出pageNo条选择题简单题id
    List<Integer> findBySubjectSimply(@Param("subject") String subject,@Param("pageNo") Integer pageNo);
    //根据科目随机查询出pageNo条选择题一般题id
    List<Integer> findBySubjectCommon(@Param("subject") String subject,@Param("pageNo") Integer pageNo);
    //根据科目随机查询出pageNo条选择题困难题id
    List<Integer> findBySubjectDiff(@Param("subject") String subject,@Param("pageNo") Integer pageNo);
}