package com.bean;

import java.util.List;

public class TimeVO {

    private List<String> name;
    private List<Integer> value;

    public List<String> getName() {
        return name;
    }

    public void setName(List<String> name) {
        this.name = name;
    }

    public List<Integer> getValue() {
        return value;
    }

    public void setValue(List<Integer> value) {
        this.value = value;
    }
}
