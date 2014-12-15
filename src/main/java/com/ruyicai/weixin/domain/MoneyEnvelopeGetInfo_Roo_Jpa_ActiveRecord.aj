// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.MoneyEnvelopeGetInfo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MoneyEnvelopeGetInfo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MoneyEnvelopeGetInfo.entityManager;
    
    public static final List<String> MoneyEnvelopeGetInfo.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager MoneyEnvelopeGetInfo.entityManager() {
        EntityManager em = new MoneyEnvelopeGetInfo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MoneyEnvelopeGetInfo.countMoneyEnvelopeGetInfoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MoneyEnvelopeGetInfo o", Long.class).getSingleResult();
    }
    
    public static List<MoneyEnvelopeGetInfo> MoneyEnvelopeGetInfo.findAllMoneyEnvelopeGetInfoes() {
        return entityManager().createQuery("SELECT o FROM MoneyEnvelopeGetInfo o", MoneyEnvelopeGetInfo.class).getResultList();
    }
    
    public static List<MoneyEnvelopeGetInfo> MoneyEnvelopeGetInfo.findAllMoneyEnvelopeGetInfoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MoneyEnvelopeGetInfo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MoneyEnvelopeGetInfo.class).getResultList();
    }
    
    public static MoneyEnvelopeGetInfo MoneyEnvelopeGetInfo.findMoneyEnvelopeGetInfo(Integer id) {
        if (id == null) return null;
        return entityManager().find(MoneyEnvelopeGetInfo.class, id);
    }
    
    public static List<MoneyEnvelopeGetInfo> MoneyEnvelopeGetInfo.findMoneyEnvelopeGetInfoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MoneyEnvelopeGetInfo o", MoneyEnvelopeGetInfo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<MoneyEnvelopeGetInfo> MoneyEnvelopeGetInfo.findMoneyEnvelopeGetInfoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MoneyEnvelopeGetInfo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MoneyEnvelopeGetInfo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MoneyEnvelopeGetInfo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MoneyEnvelopeGetInfo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MoneyEnvelopeGetInfo attached = MoneyEnvelopeGetInfo.findMoneyEnvelopeGetInfo(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MoneyEnvelopeGetInfo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MoneyEnvelopeGetInfo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MoneyEnvelopeGetInfo MoneyEnvelopeGetInfo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MoneyEnvelopeGetInfo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
