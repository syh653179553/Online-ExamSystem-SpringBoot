package com.exam.entity;

import lombok.Data;

public class Score {
    private Integer scoreId;

    private Integer examCode;

    private Integer studentId;

    private String subject;

    private Integer ptScore;

    private Integer etScore;

    private Integer score;

    private String answerDate;

    public Integer getScoreId() {
        return scoreId;
    }

    public void setScoreId(Integer scoreId) {
        this.scoreId = scoreId;
    }

    public Integer getExamCode() {
        return examCode;
    }

    public void setExamCode(Integer examCode) {
        this.examCode = examCode;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Integer getPtScore() {
        return ptScore;
    }

    public void setPtScore(Integer ptScore) {
        this.ptScore = ptScore;
    }

    public Integer getEtScore() {
        return etScore;
    }

    public void setEtScore(Integer etScore) {
        this.etScore = etScore;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getAnswerDate() {
        return answerDate;
    }

    public void setAnswerDate(String answerDate) {
        this.answerDate = answerDate;
    }

    public Score(Integer scoreId, Integer examCode, Integer studentId, String subject, Integer ptScore, Integer etScore, Integer score, String answerDate) {
        this.scoreId = scoreId;
        this.examCode = examCode;
        this.studentId = studentId;
        this.subject = subject;
        this.ptScore = ptScore;
        this.etScore = etScore;
        this.score = score;
        this.answerDate = answerDate;
    }
}