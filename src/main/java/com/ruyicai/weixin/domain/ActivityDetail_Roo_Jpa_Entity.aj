// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.ActivityDetail;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect ActivityDetail_Roo_Jpa_Entity {
    
    declare @type: ActivityDetail: @Entity;
    
    declare @type: ActivityDetail: @Table(name = "ActivityDetail");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ActivityDetail.id;
    
    @Version
    @Column(name = "version")
    private Integer ActivityDetail.version;
    
    public Long ActivityDetail.getId() {
        return this.id;
    }
    
    public void ActivityDetail.setId(Long id) {
        this.id = id;
    }
    
    public Integer ActivityDetail.getVersion() {
        return this.version;
    }
    
    public void ActivityDetail.setVersion(Integer version) {
        this.version = version;
    }
    
}
