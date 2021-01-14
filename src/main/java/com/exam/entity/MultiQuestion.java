package com.exam.entity;

import lombok.Data;

import java.util.Date;
@Data
public class MultiQuestion {
    private Integer questionId;

    private String subject;

    private String question;

    private String answerA;

    private String answerB;

    private String answerC;

    private String answerD;

    private String rightAnswer;

    private String analysis;

    private Integer score;

    private String section;

    private String level;

    private String questionSetter;

    private Date updateTime;

    private Integer state;

    private Integer wrongCount;
}