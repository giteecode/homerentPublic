package com.bean;

import java.util.List;
import java.util.Map;

public class TimeDO {

    private List<String> months;
    private List<Integer> counts;
    private List<TimeVO> timeVOS;

    public List<TimeVO> getTimeVOS() {
        return timeVOS;
    }

    public void setTimeVOS(List<TimeVO> timeVOS) {
        this.timeVOS = timeVOS;
    }

    public List<String> getMonths() {
        return months;
    }

    public void setMonths(List<String> months) {
        this.months = months;
    }

    public List<Integer> getCounts() {
        return counts;
    }

    public void setCounts(List<Integer> counts) {
        this.counts = counts;
    }

    @Override
    public String toString() {
        return "TimeDO{" +
                "months=" + months +
                ", counts=" + counts +
                ", timeVOS=" + timeVOS +
                '}';
    }
}
