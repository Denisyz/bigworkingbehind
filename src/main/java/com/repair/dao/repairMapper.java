package com.repair.dao;
import com.repair.pojo.repair;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface repairMapper {

    //增加
    int addrepair(repair Repair);

    //删除
    int deleterepair(@Param("orderno") int id);

    //修改
    int updaterepair(repair Repair);

    //查询
    repair queryrepair(@Param("orderno")int id);

    //查询全部修理订单

    List<repair> queryAllrepair();


    repair qureyrepairid(@Param("qureyrepairid") String qureyrepairid);

}
