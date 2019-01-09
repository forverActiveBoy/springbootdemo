package com.yunkan.entity;

import java.io.Serializable;

public class Log implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;//主键
    private String operator;//操作员
    private String time;//时间
    private String doWhat;//做了什么事
    public Log() {
        super();
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOperator() {
        return this.operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }


    public String getDoWhat() {
        return this.doWhat;
    }

    public void setDoWhat(String doWhat) {
        this.doWhat = doWhat;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", operator='" + operator + '\'' +
                ", time='" + time + '\'' +
                ", doWhat='" + doWhat + '\'' +
                '}';
    }
}
