// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.ChancesDetail;
import com.ruyicai.weixin.domain.ChancesDetailPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ChancesDetail_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ChancesDetail.entityManager;
    
    public static final EntityManager ChancesDetail.entityManager() {
        EntityManager em = new ChancesDetail().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ChancesDetail.countChancesDetails() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ChancesDetail o", Long.class).getSingleResult();
    }
    
    public static List<ChancesDetail> ChancesDetail.findAllChancesDetails() {
        return entityManager().createQuery("SELECT o FROM ChancesDetail o", ChancesDetail.class).getResultList();
    }
    
    public static ChancesDetail ChancesDetail.findChancesDetail(ChancesDetailPK id) {
        if (id == null) return null;
        return entityManager().find(ChancesDetail.class, id);
    }
    
    public static List<ChancesDetail> ChancesDetail.findChancesDetailEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ChancesDetail o", ChancesDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ChancesDetail.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ChancesDetail.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ChancesDetail attached = ChancesDetail.findChancesDetail(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ChancesDetail.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ChancesDetail.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ChancesDetail ChancesDetail.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ChancesDetail merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
