package com.bean;

import java.math.BigDecimal;
import java.util.Date;

public class TContract {
    private Integer conNum;

    private String conAddress;

    private String conTime;

    private Date startTime;

    private Date endTime;

    private Date payTime;

    private BigDecimal monthMoney;

    private BigDecimal totalMoney;

    private BigDecimal deposit;

    private String firstParty;

    private String firstPhone;

    private String secondParty;

    private String secondPhone;

    private Integer conStatus;

    private Date conCreateTime;

    private Integer firstId;

    private Integer secondId;

    private Integer userId;

    private Integer rentoutId;

    public Integer getConNum() {
        return conNum;
    }

    public void setConNum(Integer conNum) {
        this.conNum = conNum;
    }

    public String getConAddress() {
        return conAddress;
    }

    public void setConAddress(String conAddress) {
        this.conAddress = conAddress == null ? null : conAddress.trim();
    }

    public String getConTime() {
        return conTime;
    }

    public void setConTime(String conTime) {
        this.conTime = conTime == null ? null : conTime.trim();
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public BigDecimal getMonthMoney() {
        return monthMoney;
    }

    public void setMonthMoney(BigDecimal monthMoney) {
        this.monthMoney = monthMoney;
    }

    public BigDecimal getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(BigDecimal totalMoney) {
        this.totalMoney = totalMoney;
    }

    public BigDecimal getDeposit() {
        return deposit;
    }

    public void setDeposit(BigDecimal deposit) {
        this.deposit = deposit;
    }

    public String getFirstParty() {
        return firstParty;
    }

    public void setFirstParty(String firstParty) {
        this.firstParty = firstParty == null ? null : firstParty.trim();
    }

    public String getFirstPhone() {
        return firstPhone;
    }

    public void setFirstPhone(String firstPhone) {
        this.firstPhone = firstPhone == null ? null : firstPhone.trim();
    }

    public String getSecondParty() {
        return secondParty;
    }

    public void setSecondParty(String secondParty) {
        this.secondParty = secondParty == null ? null : secondParty.trim();
    }

    public String getSecondPhone() {
        return secondPhone;
    }

    public void setSecondPhone(String secondPhone) {
        this.secondPhone = secondPhone == null ? null : secondPhone.trim();
    }

    public Integer getConStatus() {
        return conStatus;
    }

    public void setConStatus(Integer conStatus) {
        this.conStatus = conStatus;
    }

    public Date getConCreateTime() {
        return conCreateTime;
    }

    public void setConCreateTime(Date conCreateTime) {
        this.conCreateTime = conCreateTime;
    }

    public Integer getFirstId() {
        return firstId;
    }

    public void setFirstId(Integer firstId) {
        this.firstId = firstId;
    }

    public Integer getSecondId() {
        return secondId;
    }

    public void setSecondId(Integer secondId) {
        this.secondId = secondId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRentoutId() {
        return rentoutId;
    }

    public void setRentoutId(Integer rentoutId) {
        this.rentoutId = rentoutId;
    }
}