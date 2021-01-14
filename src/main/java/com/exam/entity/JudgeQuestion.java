package com.exam.entity;

import lombok.Data;

import java.util.Date;

@Data
public class JudgeQuestion {
    private Integer questionId;

    private String subject;

    private String question;

    private String answer;

    private String analysis;

    private Integer score;

    private String level;

    private String section;

    private String questionSetter;

    private Date updateTime;

    private Integer state;

    private Integer wrongCount;


}