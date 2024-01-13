package com.bean;

import java.util.Date;
import java.util.Objects;

public class TOwner {
    private Integer ownerId;

    private String ownerName;

    private String ownerIdcard;

    private String ownerRoomPhoto;

    private String requestDesc;

    private Integer ownerStatus;

    private Date ownerCreateTime;

    private Integer ownerUserId;

    private Integer ownerIssuccess;

    private TUser user;

    public TUser getUser() {
        return user;
    }

    public void setUser(TUser user) {
        this.user = user;
    }

    public TOwner() {
    }

    public TOwner(Integer ownerId, String ownerName, String ownerIdcard, String ownerRoomPhoto, String requestDesc, Integer ownerStatus, Date ownerCreateTime, Integer ownerUserId, Integer ownerIssuccess, TUser user) {
        this.ownerId = ownerId;
        this.ownerName = ownerName;
        this.ownerIdcard = ownerIdcard;
        this.ownerRoomPhoto = ownerRoomPhoto;
        this.requestDesc = requestDesc;
        this.ownerStatus = ownerStatus;
        this.ownerCreateTime = ownerCreateTime;
        this.ownerUserId = ownerUserId;
        this.ownerIssuccess = ownerIssuccess;
        this.user = user;
    }

    public Integer getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Integer ownerId) {
        this.ownerId = ownerId;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName == null ? null : ownerName.trim();
    }

    public String getOwnerIdcard() {
        return ownerIdcard;
    }

    public void setOwnerIdcard(String ownerIdcard) {
        this.ownerIdcard = ownerIdcard == null ? null : ownerIdcard.trim();
    }

    public String getOwnerRoomPhoto() {
        return ownerRoomPhoto;
    }

    public void setOwnerRoomPhoto(String ownerRoomPhoto) {
        this.ownerRoomPhoto = ownerRoomPhoto == null ? null : ownerRoomPhoto.trim();
    }

    public String getRequestDesc() {
        return requestDesc;
    }

    public void setRequestDesc(String requestDesc) {
        this.requestDesc = requestDesc == null ? null : requestDesc.trim();
    }

    public Integer getOwnerStatus() {
        return ownerStatus;
    }

    public void setOwnerStatus(Integer ownerStatus) {
        this.ownerStatus = ownerStatus;
    }

    public Date getOwnerCreateTime() {
        return ownerCreateTime;
    }

    public void setOwnerCreateTime(Date ownerCreateTime) {
        this.ownerCreateTime = ownerCreateTime;
    }

    public Integer getOwnerUserId() {
        return ownerUserId;
    }

    public void setOwnerUserId(Integer ownerUserId) {
        this.ownerUserId = ownerUserId;
    }

    public Integer getOwnerIssuccess() {
        return ownerIssuccess;
    }

    public void setOwnerIssuccess(Integer ownerIssuccess) {
        this.ownerIssuccess = ownerIssuccess;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TOwner tOwner = (TOwner) o;
        return Objects.equals(ownerId, tOwner.ownerId) &&
                Objects.equals(ownerName, tOwner.ownerName) &&
                Objects.equals(ownerIdcard, tOwner.ownerIdcard) &&
                Objects.equals(ownerRoomPhoto, tOwner.ownerRoomPhoto) &&
                Objects.equals(requestDesc, tOwner.requestDesc) &&
                Objects.equals(ownerStatus, tOwner.ownerStatus) &&
                Objects.equals(ownerCreateTime, tOwner.ownerCreateTime) &&
                Objects.equals(ownerUserId, tOwner.ownerUserId) &&
                Objects.equals(ownerIssuccess, tOwner.ownerIssuccess) &&
                Objects.equals(user, tOwner.user);
    }

    @Override
    public int hashCode() {

        return Objects.hash(ownerId, ownerName, ownerIdcard, ownerRoomPhoto, requestDesc, ownerStatus, ownerCreateTime, ownerUserId, ownerIssuccess, user);
    }

    @Override
    public String toString() {
        return "TOwner{" +
                "ownerId=" + ownerId +
                ", ownerName='" + ownerName + '\'' +
                ", ownerIdcard='" + ownerIdcard + '\'' +
                ", ownerRoomPhoto='" + ownerRoomPhoto + '\'' +
                ", requestDesc='" + requestDesc + '\'' +
                ", ownerStatus=" + ownerStatus +
                ", ownerCreateTime=" + ownerCreateTime +
                ", ownerUserId=" + ownerUserId +
                ", ownerIssuccess=" + ownerIssuccess +
                ", user=" + user +
                '}';
    }
}