package com.repair.service;
import com.repair.pojo.repair;
import org.apache.ibatis.annotations.Param;


import java.util.List;
public interface repairService {

    //增加
    int  addrepair(repair Repair);

    //删除
    int deleterepair( int id);

    //修改
    int updaterepair(repair Repair);

    //查询
    repair queryrepair(int id);

    //查询全部修理订单

    List<repair> queryAllrepair();

    repair qureyrepairid( String qureyrepairid);



}
