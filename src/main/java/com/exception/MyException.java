package com.exception;

import java.io.Serializable;

public class MyException extends RuntimeException implements Serializable {

    //异常信息
    private String message;

    //构造函数
    public MyException(String message) {
        super(message);
        this.message = message;
    }

}
