package com.repair.service;
import com.repair.dao.repairMapper;
import com.repair.pojo.repair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class repairServiceImpl implements repairService{


    //service调用Dao层：组合Dao
    @Autowired
    private  repairMapper RepairMapper;

    public void setRepairMapper(repairMapper RepairMapper){
        this.RepairMapper=RepairMapper;
    }

    @Override
    public int addrepair(repair Repair) {
        return RepairMapper.addrepair(Repair);

    }

    @Override
    public int deleterepair(int id) {
        return RepairMapper.deleterepair(id);

    }


    @Override
    public int updaterepair(repair Repair) {

        return RepairMapper.updaterepair(Repair);
    }

    @Override
    public repair queryrepair(int id) {
        return RepairMapper.queryrepair(id);
    }

    @Override
    public List<repair> queryAllrepair() {
        return RepairMapper.queryAllrepair();
    }

    @Override
    public repair qureyrepairid(String qureyrepairid) {
        return RepairMapper.qureyrepairid(qureyrepairid);
    }


}
