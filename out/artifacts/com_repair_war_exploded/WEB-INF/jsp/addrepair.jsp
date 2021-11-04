<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2021/11/2
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--BootStrap引入--%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>添加新的维修单</small>
                </h1>

            </div>

        </div>

        <form action="${pageContext.request.contextPath}/repair/addrepair" method="post">

            维修填报时间：<input type="text" name="ordertime" required><br><br><br>
            维修上报人：<input type="text" name="ordername" required><br><br><br>
            故障设备id：<input type="text" name="repairdevice" required><br><br><br>
            故障描述:<input type="text" name="issuedescipt" required><br><br><br>
            维修状态：<input type="text" name="repairstatus" required><br><br><br>
            维修人员：<input type="text" name="repairpeople" required><br><br><br>
            维修费用：<input type="text" name="repairtotal" required><br><br><br>
            维修描述：<input type="text" name="repairdescipt" required><br><br><br>
            维修完成时间：<input type="text" name="havetime" required><br><br><br>
            验证描述：<input type="text" name="descript" required><br><br><br>
            验证通过时间：<input type="text" name="agoto" required><br><br><br>


            <input type="submit" value="添加">
        </form>

    </div>
</div>
</body>
</html>
