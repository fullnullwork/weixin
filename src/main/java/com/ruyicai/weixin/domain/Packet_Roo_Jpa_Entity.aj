// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.Packet;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Packet_Roo_Jpa_Entity {
    
    declare @type: Packet: @Entity;
    
    declare @type: Packet: @Table(name = "packet");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Packet.id;
    
    public Integer Packet.getId() {
        return this.id;
    }
    
    public void Packet.setId(Integer id) {
        this.id = id;
    }
    
}
