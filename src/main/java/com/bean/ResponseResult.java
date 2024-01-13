package com.bean;

import java.util.Objects;

public class ResponseResult<T> {

    private int state;

    private String message;

    public ResponseResult() {
    }

    public ResponseResult(int state, String message) {
        this.state = state;
        this.message = message;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ResponseResult<?> that = (ResponseResult<?>) o;
        return state == that.state &&
                Objects.equals(message, that.message);
    }

    @Override
    public int hashCode() {

        return Objects.hash(state, message);
    }

    @Override
    public String toString() {
        return "ResponseResult{" +
                "state=" + state +
                ", message='" + message + '\'' +
                '}';
    }
}
