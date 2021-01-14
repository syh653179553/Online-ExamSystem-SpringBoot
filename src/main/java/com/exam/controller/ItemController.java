package com.exam.controller;

import com.exam.entity.ApiResult;
import com.exam.entity.PaperManage;
import com.exam.service.PaperService;
import com.exam.serviceimpl.FillQuestionServiceImpl;
import com.exam.serviceimpl.JudgeQuestionServiceImpl;
import com.exam.serviceimpl.MultiQuestionServiceImpl;
import com.exam.util.ApiResultHandler;
import com.exam.vo.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ItemController {

    @Autowired
    MultiQuestionServiceImpl multiQuestionService;

    @Autowired
    FillQuestionServiceImpl fillQuestionService;

    @Autowired
    JudgeQuestionServiceImpl judgeQuestionService;

    @Autowired
    PaperService paperService;



    @PostMapping("/item")
    public ApiResult ItemController(@RequestBody Item item) {
//        // 选择题简
//        Integer changeNumber = item.getChangeNumber();
//        // 填空题
//        Integer fillNumber = item.getFillNumber();
//        // 判断题
//        Integer judgeNumber = item.getJudgeNumber();

        //选择题简单题,一般题，困难题数量
        Integer changeNumberSimply = item.getChangeNumberSimply();
        Integer changeNumberCommon = item.getChangeNumberCommon();
        Integer changeNumberDiff = item.getChangeNumberDiff();
        //填空题简单题,一般题，困难题数量
        Integer fillNumberSimply = item.getFillNumberSimply();
        Integer fillNumberCommon = item.getFillNumberCommon();
        Integer fillNumberDiff = item.getFillNumberDiff();
        //判断题简单题,一般题，困难题数量
        Integer judgeNumberSimply = item.getJudgeNumberSimply();
        Integer judgeNumberCommon = item.getJudgeNumberCommon();
        Integer judgeNumberDiff = item.getJudgeNumberDiff();
        //出卷id
        Integer paperId = item.getPaperId();

        // 选择题数据库获取
//        List<Integer>  changeNumbers = multiQuestionService.findBySubject(item.getSubject(), changeNumber);
//        if(changeNumbers==null){
//            return ApiResultHandler.buildApiResult(400,"选择题数据库获取失败",null);
//        }
//        for (Integer number : changeNumbers) {
//            PaperManage paperManage = new PaperManage(paperId,1,number);
//            int index = paperService.add(paperManage);
//            if(index==0)
//                return ApiResultHandler.buildApiResult(400,"选择题组卷保存失败",null);
//        }

        List<Integer>  changeNumbersSimply = multiQuestionService.findBySubjectSimply(item.getSubject(), changeNumberSimply);
        if(changeNumbersSimply==null){
            return ApiResultHandler.buildApiResult(400,"选择题数据库获取失败",null);
        }
        for (Integer number : changeNumbersSimply) {
            PaperManage paperManage = new PaperManage(paperId,1,number);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"选择题组卷保存失败",null);
        }

        List<Integer>  changeNumbersCommon = multiQuestionService.findBySubjectCommon(item.getSubject(), changeNumberCommon);
        if(changeNumbersCommon==null){
            return ApiResultHandler.buildApiResult(400,"选择题数据库获取失败",null);
        }
        for (Integer number : changeNumbersCommon) {
            PaperManage paperManage = new PaperManage(paperId,1,number);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"选择题组卷保存失败",null);
        }

        List<Integer>  changeNumbersDiff = multiQuestionService.findBySubjectDiff(item.getSubject(), changeNumberDiff);
        if(changeNumbersDiff==null){
            return ApiResultHandler.buildApiResult(400,"选择题数据库获取失败",null);
        }
        for (Integer number : changeNumbersDiff) {
            PaperManage paperManage = new PaperManage(paperId,1,number);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"选择题组卷保存失败",null);
        }



        // 填空题
//        List<Integer> fills = fillQuestionService.findBySubject(item.getSubject(), fillNumber);
//        if(fills==null)
//            return ApiResultHandler.buildApiResult(400,"填空题数据库获取失败",null);
//        for (Integer fillNum : fills) {
//            PaperManage paperManage = new PaperManage(paperId,2,fillNum);
//            int index = paperService.add(paperManage);
//            if(index==0)
//                return ApiResultHandler.buildApiResult(400,"填空题题组卷保存失败",null);
//        }
        List<Integer> fillsSimply = fillQuestionService.findBySubjectSimply(item.getSubject(), fillNumberSimply);
        if(fillsSimply==null)
            return ApiResultHandler.buildApiResult(400,"填空题数据库获取失败",null);
        for (Integer fillNum : fillsSimply) {
            PaperManage paperManage = new PaperManage(paperId,2,fillNum);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"填空题题组卷保存失败",null);
        }

        List<Integer> fillsCommon = fillQuestionService.findBySubjectCommon(item.getSubject(), fillNumberCommon);
        if(fillsCommon==null)
            return ApiResultHandler.buildApiResult(400,"填空题数据库获取失败",null);
        for (Integer fillNum : fillsCommon) {
            PaperManage paperManage = new PaperManage(paperId,2,fillNum);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"填空题题组卷保存失败",null);
        }

        List<Integer> fillsDiff = fillQuestionService.findBySubjectDiff(item.getSubject(), fillNumberDiff);
        if(fillsDiff==null)
            return ApiResultHandler.buildApiResult(400,"填空题数据库获取失败",null);
        for (Integer fillNum : fillsDiff) {
            PaperManage paperManage = new PaperManage(paperId,2,fillNum);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"填空题题组卷保存失败",null);
        }








        // 判断题
//        List<Integer> judges = judgeQuestionService.findBySubject(item.getSubject(), judgeNumber);
//        if(fills==null)
//            return ApiResultHandler.buildApiResult(400,"判断题数据库获取失败",null);
//        for (Integer judge : judges) {
//            PaperManage paperManage = new PaperManage(paperId,3,judge);
//            int index = paperService.add(paperManage);
//            if(index==0)
//                return ApiResultHandler.buildApiResult(400,"判断题题组卷保存失败",null);
//        }
        List<Integer> judgesSimply = judgeQuestionService.findBySubjectSimply(item.getSubject(), judgeNumberSimply);
        if(judgesSimply==null)
            return ApiResultHandler.buildApiResult(400,"判断题数据库获取失败",null);
        for (Integer judge : judgesSimply) {
            PaperManage paperManage = new PaperManage(paperId,3,judge);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"判断题题组卷保存失败",null);
        }

        List<Integer> judgesCommon = judgeQuestionService.findBySubjectCommon(item.getSubject(), judgeNumberCommon);
        if(judgesCommon==null)
            return ApiResultHandler.buildApiResult(400,"判断题数据库获取失败",null);
        for (Integer judge : judgesCommon) {
            PaperManage paperManage = new PaperManage(paperId,3,judge);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"判断题题组卷保存失败",null);
        }

        List<Integer> judgesDiff = judgeQuestionService.findBySubjectDiff(item.getSubject(), judgeNumberDiff);
        if(judgesDiff==null)
            return ApiResultHandler.buildApiResult(400,"判断题数据库获取失败",null);
        for (Integer judge : judgesDiff) {
            PaperManage paperManage = new PaperManage(paperId,3,judge);
            int index = paperService.add(paperManage);
            if(index==0)
                return ApiResultHandler.buildApiResult(400,"判断题题组卷保存失败",null);
        }




        return ApiResultHandler.buildApiResult(200,"试卷组卷成功",null);

    }
}
