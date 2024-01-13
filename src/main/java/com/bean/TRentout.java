package com.bean;

import java.util.Date;
import java.util.Objects;

public class TRentout {
    private Integer rgId;

    private String rgName;

    private String rgPhone;

    private String roomAddress;

    private Double roomPrice;

    private Integer isFloor;

    private Integer allFloor;

    private Integer roomAge;

    private String roomStructure;

    private String roomDesc;

    private Integer roomArea;

    private Integer renovationint;

    private String roomPicture;

    private Integer outStatus;

    private Date outCreateTime;

    private Integer isqualified;

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

    public String getRoomAddress() {
        return roomAddress;
    }

    public void setRoomAddress(String roomAddress) {
        this.roomAddress = roomAddress == null ? null : roomAddress.trim();
    }

    public Double getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(Double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public Integer getIsFloor() {
        return isFloor;
    }

    public void setIsFloor(Integer isFloor) {
        this.isFloor = isFloor;
    }

    public Integer getAllFloor() {
        return allFloor;
    }

    public void setAllFloor(Integer allFloor) {
        this.allFloor = allFloor;
    }

    public Integer getRoomAge() {
        return roomAge;
    }

    public void setRoomAge(Integer roomAge) {
        this.roomAge = roomAge;
    }

    public String getRoomStructure() {
        return roomStructure;
    }

    public void setRoomStructure(String roomStructure) {
        this.roomStructure = roomStructure == null ? null : roomStructure.trim();
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

    public String getRoomPicture() {
        return roomPicture;
    }

    public void setRoomPicture(String roomPicture) {
        this.roomPicture = roomPicture == null ? null : roomPicture.trim();
    }

    public Integer getOutStatus() {
        return outStatus;
    }

    public void setOutStatus(Integer outStatus) {
        this.outStatus = outStatus;
    }

    public Date getOutCreateTime() {
        return outCreateTime;
    }

    public void setOutCreateTime(Date outCreateTime) {
        this.outCreateTime = outCreateTime;
    }

    public Integer getIsqualified() {
        return isqualified;
    }

    public void setIsqualified(Integer isqualified) {
        this.isqualified = isqualified;
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
        TRentout tRentout = (TRentout) o;
        return Objects.equals(rgId, tRentout.rgId) &&
                Objects.equals(rgName, tRentout.rgName) &&
                Objects.equals(rgPhone, tRentout.rgPhone) &&
                Objects.equals(roomAddress, tRentout.roomAddress) &&
                Objects.equals(roomPrice, tRentout.roomPrice) &&
                Objects.equals(isFloor, tRentout.isFloor) &&
                Objects.equals(allFloor, tRentout.allFloor) &&
                Objects.equals(roomAge, tRentout.roomAge) &&
                Objects.equals(roomStructure, tRentout.roomStructure) &&
                Objects.equals(roomDesc, tRentout.roomDesc) &&
                Objects.equals(roomArea, tRentout.roomArea) &&
                Objects.equals(renovationint, tRentout.renovationint) &&
                Objects.equals(roomPicture, tRentout.roomPicture) &&
                Objects.equals(outStatus, tRentout.outStatus) &&
                Objects.equals(outCreateTime, tRentout.outCreateTime) &&
                Objects.equals(isqualified, tRentout.isqualified) &&
                Objects.equals(userId, tRentout.userId) &&
                Objects.equals(user, tRentout.user);
    }

    @Override
    public int hashCode() {

        return Objects.hash(rgId, rgName, rgPhone, roomAddress, roomPrice, isFloor, allFloor, roomAge, roomStructure, roomDesc, roomArea, renovationint, roomPicture, outStatus, outCreateTime, isqualified, userId, user);
    }

    @Override
    public String toString() {
        return "TRentout{" +
                "rgId=" + rgId +
                ", rgName='" + rgName + '\'' +
                ", rgPhone='" + rgPhone + '\'' +
                ", roomAddress='" + roomAddress + '\'' +
                ", roomPrice=" + roomPrice +
                ", isFloor=" + isFloor +
                ", allFloor=" + allFloor +
                ", roomAge=" + roomAge +
                ", roomStructure='" + roomStructure + '\'' +
                ", roomDesc='" + roomDesc + '\'' +
                ", roomArea=" + roomArea +
                ", renovationint=" + renovationint +
                ", roomPicture='" + roomPicture + '\'' +
                ", outStatus=" + outStatus +
                ", outCreateTime=" + outCreateTime +
                ", isqualified=" + isqualified +
                ", userId=" + userId +
                ", user=" + user +
                '}';
    }
}