package com.bean;

public class TPermission {
    private Integer perId;

    private String url;

    private String description;

    private Integer roleid;

    private Integer perStatus;

    public Integer getPerId() {
        return perId;
    }

    public void setPerId(Integer perId) {
        this.perId = perId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public Integer getPerStatus() {
        return perStatus;
    }

    public void setPerStatus(Integer perStatus) {
        this.perStatus = perStatus;
    }
}