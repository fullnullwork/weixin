// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.MoneyEnvelope;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect MoneyEnvelope_Roo_Jpa_Entity {
    
    declare @type: MoneyEnvelope: @Entity;
    
    declare @type: MoneyEnvelope: @Table(name = "money_envelope");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer MoneyEnvelope.id;
    
    public Integer MoneyEnvelope.getId() {
        return this.id;
    }
    
    public void MoneyEnvelope.setId(Integer id) {
        this.id = id;
    }
    
}
