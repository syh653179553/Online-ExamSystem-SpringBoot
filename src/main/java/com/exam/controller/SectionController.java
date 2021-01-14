package com.exam.controller;

import com.exam.entity.ApiResult;
import com.exam.entity.Section;
import com.exam.service.SectionService;
import com.exam.serviceimpl.SectionServiceImpl;
import com.exam.util.ApiResultHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class SectionController {
    @Autowired
    private SectionService sectionService;

    @GetMapping("/sections/{subjectid}")
    public ApiResult findBySubjectId(@PathVariable("subjectid") Integer subjectid){
        List<Section> res = sectionService.findBySubjectId(subjectid);
        if (res!=null){
            return ApiResultHandler.buildApiResult(200,"请求成功",res);
        }else {
            return ApiResultHandler.buildApiResult(404,"查询结果不存在",null);
        }
    }

    @DeleteMapping("section/{sectionId}")
    public ApiResult deleteById(@PathVariable("sectionId") Integer sectionId){
        System.out.println(sectionId);
        return ApiResultHandler.buildApiResult(200,"删除成功",sectionService.deleteById(sectionId));
    }

    @PostMapping("section")
    public ApiResult add(@RequestBody Section section){
        int res = sectionService.add(section);
        if (res!=0){
            return ApiResultHandler.buildApiResult(200,"添加成功",res);
        }
        return ApiResultHandler.buildApiResult(400,"添加失败",null);
    }
}
