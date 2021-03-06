// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.weixin.domain;

import com.ruyicai.weixin.domain.PuntPacket;
import com.ruyicai.weixin.domain.PuntPacketServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PuntPacketServiceImpl_Roo_Service {
    
    declare @type: PuntPacketServiceImpl: @Service;
    
    declare @type: PuntPacketServiceImpl: @Transactional;
    
    public long PuntPacketServiceImpl.countAllPuntPackets() {
        return PuntPacket.countPuntPackets();
    }
    
    public void PuntPacketServiceImpl.deletePuntPacket(PuntPacket puntPacket) {
        puntPacket.remove();
    }
    
    public PuntPacket PuntPacketServiceImpl.findPuntPacket(Integer id) {
        return PuntPacket.findPuntPacket(id);
    }
    
    public List<PuntPacket> PuntPacketServiceImpl.findAllPuntPackets() {
        return PuntPacket.findAllPuntPackets();
    }
    
    public List<PuntPacket> PuntPacketServiceImpl.findPuntPacketEntries(int firstResult, int maxResults) {
        return PuntPacket.findPuntPacketEntries(firstResult, maxResults);
    }
    
    public void PuntPacketServiceImpl.savePuntPacket(PuntPacket puntPacket) {
        puntPacket.persist();
    }
    
    public PuntPacket PuntPacketServiceImpl.updatePuntPacket(PuntPacket puntPacket) {
        return puntPacket.merge();
    }
    
}
