package com.repair.controller;
import com.repair.pojo.repair;
import  com.repair.service.repairService;
import com.repair.service.repairServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/repair")
public class repairController {
      //controller 调 service 层
    @Autowired
    @Qualifier("repairServiceImpl")
    private repairService RepairService=new repairServiceImpl();

    //查询维修管理数据库表的所有信息
    @RequestMapping("/allrepair")

    public String list(Model model){
        List<repair> list= RepairService.queryAllrepair();

        model.addAttribute("list",list);
        return "allrepair";
    }


    @RequestMapping("/toAddrepair")
    //跳转到增加新维修单页面
    public String toAddrepair(){
        return "addrepair";
    }


    @RequestMapping("/addrepair")
    //添加新维修单的请求
    public  String addrepair(repair Repair){
        System.out.println("addrepair=>"+Repair);
        RepairService.addrepair(Repair);
        return "redirect:/repair/allrepair";//重定向到@RequestMapping("/allrepair")请求.

    }

    @RequestMapping("/updaterepair")
    //跳转到修改页面
    public String toUpdatePaper( int id,Model model){
        repair repair= RepairService.queryrepair(id);
        model.addAttribute("qrepair",repair);
        return  "updaterepair";
    }

    @RequestMapping("/rupdaterepair")
    //修改维修订单
    public String updaterepair(repair repair){
        System.out.println("updaterepair=>"+repair);

        RepairService.updaterepair(repair);
        return "redirect:/repair/allrepair";//修改完，重定向到首页查询。
    }

    @RequestMapping("/deleterepair")
    //删除维修订单
    public  String deleterepair(int id){
        RepairService.deleterepair(id);
        return "redirect:/repair/allrepair";//删除完，重定向到首页查询。

    }

    @RequestMapping("/qureyrepair")
    //搜索框查询某一维修订单
    public String qureyrepair(String qureyrepairid,Model model){
        repair repair =RepairService.qureyrepairid(qureyrepairid);

        List<repair> list =new ArrayList<repair>();

        list.add(repair);


        model.addAttribute("list",list);
        return "allrepair";
    }




}
