// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.PuntList;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect PuntList_Roo_DbManaged {
    
    @Column(name = "punt_id")
    private Integer PuntList.puntId;
    
    @Column(name = "betcode", length = 20)
    private String PuntList.betcode;
    
    @Column(name = "orderid", length = 32)
    private String PuntList.orderid;
    
    @Column(name = "batchcode", length = 16)
    private String PuntList.batchcode;
    
    @Column(name = "createtime")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar PuntList.createtime;
    
    @Column(name = "opentime")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar PuntList.opentime;
    
    @Column(name = "orderprizeamt")
    private Integer PuntList.orderprizeamt;
    
    public Integer PuntList.getPuntId() {
        return puntId;
    }
    
    public void PuntList.setPuntId(Integer puntId) {
        this.puntId = puntId;
    }
    
    public String PuntList.getBetcode() {
        return betcode;
    }
    
    public void PuntList.setBetcode(String betcode) {
        this.betcode = betcode;
    }
    
    public String PuntList.getOrderid() {
        return orderid;
    }
    
    public void PuntList.setOrderid(String orderid) {
        this.orderid = orderid;
    }
    
    public String PuntList.getBatchcode() {
        return batchcode;
    }
    
    public void PuntList.setBatchcode(String batchcode) {
        this.batchcode = batchcode;
    }
    
    public Calendar PuntList.getCreatetime() {
        return createtime;
    }
    
    public void PuntList.setCreatetime(Calendar createtime) {
        this.createtime = createtime;
    }
    
    public Calendar PuntList.getOpentime() {
        return opentime;
    }
    
    public void PuntList.setOpentime(Calendar opentime) {
        this.opentime = opentime;
    }
    
    public Integer PuntList.getOrderprizeamt() {
        return orderprizeamt;
    }
    
    public void PuntList.setOrderprizeamt(Integer orderprizeamt) {
        this.orderprizeamt = orderprizeamt;
    }
    
}
