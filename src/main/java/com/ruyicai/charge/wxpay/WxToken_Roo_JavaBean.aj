// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.charge.wxpay;

import java.lang.String;
import java.util.Date;

privileged aspect WxToken_Roo_JavaBean {
    
    public String WxToken.getAccessToken() {
        return this.accessToken;
    }
    
    public void WxToken.setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }
    
    public Date WxToken.getAccessDate() {
        return this.accessDate;
    }
    
    public void WxToken.setAccessDate(Date accessDate) {
        this.accessDate = accessDate;
    }
    
    public long WxToken.getExpireTime() {
        return this.expireTime;
    }
    
    public void WxToken.setExpireTime(long expireTime) {
        this.expireTime = expireTime;
    }
    
}