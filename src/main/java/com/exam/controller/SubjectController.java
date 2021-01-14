package com.exam.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.entity.ApiResult;
import com.exam.entity.Subject;
import com.exam.service.SubjectService;
import com.exam.serviceimpl.SubjectServiceImpl;
import com.exam.util.ApiResultHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class SubjectController {
    @Autowired
    private SubjectService subjectService;

    @GetMapping("/subjects/{page}/{size}")
    public ApiResult findAll(@PathVariable Integer page, @PathVariable Integer size){
        Page<Subject> subjectPage = new Page<>(page,size);
        IPage<Subject> res = subjectService.findAll(subjectPage);
        return ApiResultHandler.buildApiResult(200,"分页查询所有学科",res);
    }

    @GetMapping("/subject/{subjectid}")
    public ApiResult findById(@PathVariable("subjectid") Integer subjectid){
        Subject res = subjectService.findById(subjectid);
        if(res!=null){
            return ApiResultHandler.buildApiResult(200,"请求成功",res);
        }else {
            return ApiResultHandler.buildApiResult(404,"查询用户不存在",null);
        }
    }

    @DeleteMapping("/subject/{subjectid}")
    public ApiResult deleteById(@PathVariable("subjectid") Integer subjectid){
        return ApiResultHandler.buildApiResult(200,"删除成功",subjectService.deleteById(subjectid));
    }

    @PutMapping("/subject")
    public ApiResult update(@RequestBody Subject subject){
        int res = subjectService.update(subject);
        if (res!=0){
            return ApiResultHandler.buildApiResult(200,"更新成功",res);
        }
        return ApiResultHandler.buildApiResult(400,"更新失败",null);
    }

    @PostMapping("/subject")
    public ApiResult add(@RequestBody Subject subject){
        int res = subjectService.add(subject);
        if (res!=0){
            return ApiResultHandler.buildApiResult(200,"添加成功",res);
        }
        return ApiResultHandler.buildApiResult(400,"添加失败",null);
    }
}
