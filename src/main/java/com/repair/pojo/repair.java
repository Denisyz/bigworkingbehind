package com.repair.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class repair {


    private int orderno;
    private String ordertime;
    private String ordername;
    private int repairdevice;
    private String issuedescipt;
    private String repairstatus;
    private int repairpeople;
    private String repairtotal;
    private String repairdescipt;
    private String havetime;
    private String descript;
    private String agoto;
}
