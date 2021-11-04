<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2021/11/2
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--BootStrap引入--%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>修改订单信息</title>

</head>
<body>

<div class="container">
    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改订单信息</small>
                </h1>

            </div>

        </div>

        <form action="${pageContext.request.contextPath}/repair/rupdaterepair" method="post">
            <%--前端id传递隐藏域--%>
            <input type="hidden" name="orderno" value="${qrepair.orderno}">
            维修填报时间：<input type="text" name="ordertime" value="${qrepair.ordertime}" required><br><br><br>
            维修上报人：<input type="text" name="ordername" value="${qrepair.ordername}" required><br><br><br>
            故障设备id：<input type="text" name="repairdevice" value="${qrepair.repairdevice}" required><br><br><br>
            故障描述:<input type="text" name="issuedescipt" value="${qrepair.issuedescipt}" required><br><br><br>
            维修状态：<input type="text" name="repairstatus" value="${qrepair.repairstatus}" required><br><br><br>
            维修人员：<input type="text" name="repairpeople" value="${qrepair.repairpeople}" required><br><br><br>
            维修费用：<input type="text" name="repairtotal"  value="${qrepair.repairtotal}" required><br><br><br>
            维修描述：<input type="text" name="repairdescipt" value="${qrepair.repairdescipt}" required><br><br><br>
            维修完成时间：<input type="text" name="havetime" value="${qrepair.havetime}" required><br><br><br>
            验证描述：<input type="text" name="descript"  value="${qrepair.descript}" required><br><br><br>
            验证通过时间：<input type="text" name="agoto"  value="${qrepair.agoto}"required><br><br><br>


            <input type="submit" value="修改">
        </form>

    </div>
</div>

</body>
</html>
