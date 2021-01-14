package com.exam.vo;

import lombok.Data;

//题目模型
@Data
public class Item {

    private String subject;

    private Integer paperId;

    //private Integer changeNumber;
    private Integer changeNumberSimply;
    private Integer changeNumberCommon;
    private Integer changeNumberDiff;

    //private Integer fillNumber;
    private Integer fillNumberSimply;
    private Integer fillNumberCommon;
    private Integer fillNumberDiff;

    //private Integer judgeNumber;
    private Integer judgeNumberSimply;
    private Integer judgeNumberCommon;
    private Integer judgeNumberDiff;
}
