// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.PuntPacket;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect PuntPacket_Roo_Jpa_Entity {
    
    declare @type: PuntPacket: @Entity;
    
    declare @type: PuntPacket: @Table(name = "punt_packet");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer PuntPacket.id;
    
    public Integer PuntPacket.getId() {
        return this.id;
    }
    
    public void PuntPacket.setId(Integer id) {
        this.id = id;
    }
    
}
