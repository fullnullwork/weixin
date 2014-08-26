// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.PuntPacket;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PuntPacket_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PuntPacket.entityManager;
    
    public static final List<String> PuntPacket.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager PuntPacket.entityManager() {
        EntityManager em = new PuntPacket().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PuntPacket.countPuntPackets() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PuntPacket o", Long.class).getSingleResult();
    }
    
    public static List<PuntPacket> PuntPacket.findAllPuntPackets() {
        return entityManager().createQuery("SELECT o FROM PuntPacket o", PuntPacket.class).getResultList();
    }
    
    public static List<PuntPacket> PuntPacket.findAllPuntPackets(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PuntPacket o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PuntPacket.class).getResultList();
    }
    
    public static PuntPacket PuntPacket.findPuntPacket(Integer id) {
        if (id == null) return null;
        return entityManager().find(PuntPacket.class, id);
    }
    
    public static List<PuntPacket> PuntPacket.findPuntPacketEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PuntPacket o", PuntPacket.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PuntPacket> PuntPacket.findPuntPacketEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PuntPacket o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PuntPacket.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PuntPacket.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PuntPacket.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PuntPacket attached = PuntPacket.findPuntPacket(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PuntPacket.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PuntPacket.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PuntPacket PuntPacket.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PuntPacket merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
	public static PuntPacket PuntPacket.findOneNotAawardPart(String packet_id) {
    	String sql = "SELECT * FROM punt_packet WHERE get_userno IS NULL AND packet_id = "+packet_id+" LIMIT 1 FOR UPDATE";
    	List<PuntPacket> lstPuntPacket = entityManager().createNativeQuery(sql, PuntPacket.class).getResultList();
    	if(lstPuntPacket.size() >0)
    		return  lstPuntPacket.get(0);
    	else
    		return null;
    }
    
    
    @SuppressWarnings("unchecked")
    @Transactional
	public static List<PuntPacket> PuntPacket.findByGetUserno(String getUserno,String packet_id) {
    	String sql = "SELECT * FROM punt_packet WHERE packet_id = '"+packet_id+"' AND get_userno = " +getUserno;
    	return entityManager().createNativeQuery(sql, PuntPacket.class).getResultList();
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
	public static List<PuntPacket> PuntPacket.findLeftParts(String packet_id) {
    	String sql = "SELECT * FROM punt_packet WHERE get_userno IS NULL AND packet_id = "+packet_id;
    	return entityManager().createNativeQuery(sql, PuntPacket.class).getResultList();
    }
    
 
}
