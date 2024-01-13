package com.bean;

import java.util.Date;
import java.util.Objects;

public class TMessage {
    private Integer messageId;

    private String createName;

    private String title;

    private String content;

    private String mPhone;

    private Integer mStatus;

    private Date mCreateTime;

    private Integer userId;

    private TUser user;

    public TUser getUser() {
        return user;
    }

    public void setUser(TUser user) {
        this.user = user;
    }

    public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public String getCreateName() {
        return createName;
    }

    public void setCreateName(String createName) {
        this.createName = createName == null ? null : createName.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getmPhone() {
        return mPhone;
    }

    public void setmPhone(String mPhone) {
        this.mPhone = mPhone == null ? null : mPhone.trim();
    }

    public Integer getmStatus() {
        return mStatus;
    }

    public void setmStatus(Integer mStatus) {
        this.mStatus = mStatus;
    }

    public Date getmCreateTime() {
        return mCreateTime;
    }

    public void setmCreateTime(Date mCreateTime) {
        this.mCreateTime = mCreateTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "TMessage{" +
                "messageId=" + messageId +
                ", createName='" + createName + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", mPhone='" + mPhone + '\'' +
                ", mStatus=" + mStatus +
                ", mCreateTime=" + mCreateTime +
                ", userId=" + userId +
                ", user=" + user +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TMessage message = (TMessage) o;
        return Objects.equals(messageId, message.messageId) &&
                Objects.equals(createName, message.createName) &&
                Objects.equals(title, message.title) &&
                Objects.equals(content, message.content) &&
                Objects.equals(mPhone, message.mPhone) &&
                Objects.equals(mStatus, message.mStatus) &&
                Objects.equals(mCreateTime, message.mCreateTime) &&
                Objects.equals(userId, message.userId) &&
                Objects.equals(user, message.user);
    }

    @Override
    public int hashCode() {

        return Objects.hash(messageId, createName, title, content, mPhone, mStatus, mCreateTime, userId, user);
    }
}