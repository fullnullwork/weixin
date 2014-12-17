// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.AccessLog;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AccessLog_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AccessLog.entityManager;
    
    public static final List<String> AccessLog.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager AccessLog.entityManager() {
        EntityManager em = new AccessLog().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AccessLog.countAccessLogs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AccessLog o", Long.class).getSingleResult();
    }
    
    public static List<AccessLog> AccessLog.findAllAccessLogs() {
        return entityManager().createQuery("SELECT o FROM AccessLog o", AccessLog.class).getResultList();
    }
    
    public static List<AccessLog> AccessLog.findAllAccessLogs(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM AccessLog o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, AccessLog.class).getResultList();
    }
    
    public static AccessLog AccessLog.findAccessLog(Integer id) {
        if (id == null) return null;
        return entityManager().find(AccessLog.class, id);
    }
    
    public static List<AccessLog> AccessLog.findAccessLogEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AccessLog o", AccessLog.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<AccessLog> AccessLog.findAccessLogEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM AccessLog o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, AccessLog.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AccessLog.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AccessLog.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AccessLog attached = AccessLog.findAccessLog(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AccessLog.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AccessLog.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AccessLog AccessLog.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AccessLog merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}