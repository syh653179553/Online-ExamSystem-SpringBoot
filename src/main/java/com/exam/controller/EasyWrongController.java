package com.exam.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.ApiResult;
import com.exam.entity.FillQuestion;
import com.exam.entity.JudgeQuestion;
import com.exam.entity.MultiQuestion;
import com.exam.service.FillQuestionService;
import com.exam.service.JudgeQuestionService;
import com.exam.service.MultiQuestionService;
import com.exam.util.ApiResultHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EasyWrongController {
    @Autowired
    FillQuestionService fillQuestionService;

    @Autowired
    JudgeQuestionService judgeQuestionService;

    @Autowired
    MultiQuestionService multiQuestionService;

    @GetMapping("/getQuestion/{subject}/{qtype}/{page}/{size}")
    public ApiResult getQuestion(@PathVariable String subject, @PathVariable String qtype,
                                 @PathVariable Integer page,@PathVariable Integer size){
        ApiResult apiResult = new ApiResult();
        if("填空题".equals(qtype)){
            Page<FillQuestion> fillQuestionPage = new Page<>(page,size);
            IPage<FillQuestion> fillQuestions = fillQuestionService.findBySub(fillQuestionPage,subject);
            apiResult = ApiResultHandler.buildApiResult(200,"请求成功",fillQuestions);
        }else if("选择题".equals(qtype)){
            Page<MultiQuestion> multiQuestionPage = new Page<>(page,size);
            IPage<MultiQuestion> multiQuestionIPage = multiQuestionService.findBySub(multiQuestionPage,subject);
            apiResult = ApiResultHandler.buildApiResult(200,"请求成功",multiQuestionIPage);
        }else if("判断题".equals(qtype)){
            Page<JudgeQuestion> judgeQuestionPage = new Page<>(page,size);
            IPage<JudgeQuestion> judgeQuestionIPage = judgeQuestionService.findBySub(judgeQuestionPage,subject);
            apiResult = ApiResultHandler.buildApiResult(200,"请求成功",judgeQuestionIPage);
        }
        return apiResult;
    }
}
