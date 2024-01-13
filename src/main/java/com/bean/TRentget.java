package com.bean;

import java.util.Date;
import java.util.Objects;

public class TRentget {
    private Integer rgId;

    private String rgName;

    private String rgPhone;

    private String rgTitle;

    private Double minPrice;

    private Double maxPrice;

    private Date liveTime;

    private String roomAddress;

    private String roomDesc;

    private Integer roomArea;

    private Integer renovationint;

    private Integer getStatus;

    private Date getCreateTime;

    private Integer userId;

    private TUser user;

    public TUser getUser() {
        return user;
    }

    public void setUser(TUser user) {
        this.user = user;
    }

    public Integer getRgId() {
        return rgId;
    }

    public void setRgId(Integer rgId) {
        this.rgId = rgId;
    }

    public String getRgName() {
        return rgName;
    }

    public void setRgName(String rgName) {
        this.rgName = rgName == null ? null : rgName.trim();
    }

    public String getRgPhone() {
        return rgPhone;
    }

    public void setRgPhone(String rgPhone) {
        this.rgPhone = rgPhone == null ? null : rgPhone.trim();
    }

    public String getRgTitle() {
        return rgTitle;
    }

    public void setRgTitle(String rgTitle) {
        this.rgTitle = rgTitle == null ? null : rgTitle.trim();
    }

    public Double getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(Double minPrice) {
        this.minPrice = minPrice;
    }

    public Double getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(Double maxPrice) {
        this.maxPrice = maxPrice;
    }

    public Date getLiveTime() {
        return liveTime;
    }

    public void setLiveTime(Date liveTime) {
        this.liveTime = liveTime;
    }

    public String getRoomAddress() {
        return roomAddress;
    }

    public void setRoomAddress(String roomAddress) {
        this.roomAddress = roomAddress == null ? null : roomAddress.trim();
    }

    public String getRoomDesc() {
        return roomDesc;
    }

    public void setRoomDesc(String roomDesc) {
        this.roomDesc = roomDesc == null ? null : roomDesc.trim();
    }

    public Integer getRoomArea() {
        return roomArea;
    }

    public void setRoomArea(Integer roomArea) {
        this.roomArea = roomArea;
    }

    public Integer getRenovationint() {
        return renovationint;
    }

    public void setRenovationint(Integer renovationint) {
        this.renovationint = renovationint;
    }

    public Integer getGetStatus() {
        return getStatus;
    }

    public void setGetStatus(Integer getStatus) {
        this.getStatus = getStatus;
    }

    public Date getGetCreateTime() {
        return getCreateTime;
    }

    public void setGetCreateTime(Date getCreateTime) {
        this.getCreateTime = getCreateTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TRentget tRentget = (TRentget) o;
        return Objects.equals(rgId, tRentget.rgId) &&
                Objects.equals(rgName, tRentget.rgName) &&
                Objects.equals(rgPhone, tRentget.rgPhone) &&
                Objects.equals(roomArea, tRentget.roomArea) &&
                Objects.equals(renovationint, tRentget.renovationint) &&
                Objects.equals(getStatus, tRentget.getStatus) &&
                Objects.equals(getCreateTime, tRentget.getCreateTime) &&
                Objects.equals(userId, tRentget.userId) &&
                Objects.equals(user, tRentget.user);
    }

    @Override
    public int hashCode() {

        return Objects.hash(rgId, rgName, rgPhone, roomArea, renovationint, getStatus, getCreateTime, userId, user);
    }

    @Override
    public String toString() {
        return "TRentget{" +
                "rgId=" + rgId +
                ", rgName='" + rgName + '\'' +
                ", rgPhone='" + rgPhone + '\'' +
                ", rgTitle='" + rgTitle + '\'' +
                ", minPrice=" + minPrice +
                ", maxPrice=" + maxPrice +
                ", liveTime=" + liveTime +
                ", roomAddress='" + roomAddress + '\'' +
                ", roomDesc='" + roomDesc + '\'' +
                ", roomArea=" + roomArea +
                ", renovationint=" + renovationint +
                ", getStatus=" + getStatus +
                ", getCreateTime=" + getCreateTime +
                ", userId=" + userId +
                ", user=" + user +
                '}';
    }
}