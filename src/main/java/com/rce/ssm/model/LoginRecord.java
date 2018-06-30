package com.rce.ssm.model;

import java.util.Date;

public class LoginRecord {
    private Integer loginid;

    private Integer userid;

    private Date logintime;

    private String loginip;

    private Integer loginsrc;

    private String loginremark;

    public Integer getLoginid() {
        return loginid;
    }

    public void setLoginid(Integer loginid) {
        this.loginid = loginid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getLogintime() {
        return logintime;
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }

    public String getLoginip() {
        return loginip;
    }

    public void setLoginip(String loginip) {
        this.loginip = loginip == null ? null : loginip.trim();
    }

    public Integer getLoginsrc() {
        return loginsrc;
    }

    public void setLoginsrc(Integer loginsrc) {
        this.loginsrc = loginsrc;
    }

    public String getLoginremark() {
        return loginremark;
    }

    public void setLoginremark(String loginremark) {
        this.loginremark = loginremark == null ? null : loginremark.trim();
    }
}