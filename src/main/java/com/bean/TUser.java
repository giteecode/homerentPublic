package com.bean;

import java.util.Date;
import java.util.List;
import java.util.Objects;

public class TUser {
    private Integer id;

    private String username;

    private String password;

    private String name;

    private String phone;

    private Integer sex;

    private Integer age;

    private String idcard;

    private String hardIcon;

    private String address;

    private String job;

    private Integer isOwner;

    private Integer status;

    private Date lastlogin;

    private Date createTime;

    private List<TMessage> messages;

    private List<TRentget> rentgets;

    private List<TRentout> rentouts;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    public String getHardIcon() {
        return hardIcon;
    }

    public void setHardIcon(String hardIcon) {
        this.hardIcon = hardIcon == null ? null : hardIcon.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job == null ? null : job.trim();
    }

    public Integer getIsOwner() {
        return isOwner;
    }

    public void setIsOwner(Integer isOwner) {
        this.isOwner = isOwner;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getLastlogin() {
        return lastlogin;
    }

    public void setLastlogin(Date lastlogin) {
        this.lastlogin = lastlogin;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public List<TMessage> getMessages() {
        return messages;
    }

    public void setMessages(List<TMessage> messages) {
        this.messages = messages;
    }

    public List<TRentget> getRentgets() {
        return rentgets;
    }

    public void setRentgets(List<TRentget> rentgets) {
        this.rentgets = rentgets;
    }

    public List<TRentout> getRentouts() {
        return rentouts;
    }

    public void setRentouts(List<TRentout> rentouts) {
        this.rentouts = rentouts;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TUser user = (TUser) o;
        return Objects.equals(id, user.id) &&
                Objects.equals(username, user.username) &&
                Objects.equals(password, user.password) &&
                Objects.equals(phone, user.phone) &&
                Objects.equals(idcard, user.idcard) &&
                Objects.equals(hardIcon, user.hardIcon) &&
                Objects.equals(job, user.job) &&
                Objects.equals(status, user.status) &&
                Objects.equals(createTime, user.createTime) &&
                Objects.equals(messages, user.messages) &&
                Objects.equals(rentgets, user.rentgets) &&
                Objects.equals(rentouts, user.rentouts);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, username, password, phone, idcard, hardIcon, job, status, createTime, messages, rentgets, rentouts);
    }

    @Override
    public String toString() {
        return "TUser{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", sex=" + sex +
                ", age=" + age +
                ", idcard='" + idcard + '\'' +
                ", hardIcon='" + hardIcon + '\'' +
                ", address='" + address + '\'' +
                ", job='" + job + '\'' +
                ", isOwner=" + isOwner +
                ", status=" + status +
                ", lastlogin=" + lastlogin +
                ", createTime=" + createTime +
                ", messages=" + messages +
                ", rentgets=" + rentgets +
                ", rentouts=" + rentouts +
                '}';
    }
}