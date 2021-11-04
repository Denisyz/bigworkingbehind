<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2021/10/31
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据展示</title>
    <%--BootStrap引入--%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
  <div class="row clearfix">

      <div class="col-md-12 column">
          <div class="page-header">
              <h1>
                  <small>维修单列表--------显示所有维修信息</small>
              </h1>

          </div>

      </div>


      <div class="row">
          <div class="col-md-4 column">
              <%--toAddrepair--%>
              <a href="${pageContext.request.contextPath}/repair/toAddrepair">添加新的维修单</a>
                  <a href="${pageContext.request.contextPath}/repair/allrepair">查询全部的维修单</a>
          </div>
          <div class="col-md-4 column"></div>
          <div class="col-md-4 column">
              <%--搜索框查询维修单--%>
              <form action="${pageContext.request.contextPath}/repair/qureyrepair" method="post" style="float: right">
                  <input type="text" name="qureyrepairid" class="form-control" placeholder="请输入需要查询的维修单">
                  <input type="submit"  value="查询" class="btn btn-primary">
              </form>

          </div>
      </div>
  </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table-hover table-striped">
                <thand>
                    <tr>
                        <th>维修单号</th>
                        <th>维修填报时间</th>
                        <th>维修上报人</th>
                        <th>故障设备</th>
                        <th>故障描述</th>
                        <th>维修状态</th>
                        <th>维修人员</th>
                        <th>维修费用</th>
                        <th>维修描述</th>
                        <th>维修完成时间</th>
                        <th>验证描述</th>
                        <th>验证通过时间</th>
                        <th>操作</th>
                    </tr>
                </thand>
                <%--维修信息从数据库中查询，list封装到model里面并遍历:foreach--%>
                <tbody>
                <c:forEach var="repair" items="${list}">
                    <tr>
                        <td>${repair.orderno}</td>
                        <td>${repair.ordertime}</td>
                        <td>${repair.ordername}</td>
                        <td>${repair.repairdevice}</td>
                        <td>${repair.issuedescipt}</td>
                        <td>${repair.repairstatus}</td>
                        <td>${repair.repairpeople}</td>
                        <td>${repair.repairtotal}</td>
                        <td>${repair.repairdescipt}</td>
                        <td>${repair.havetime}</td>
                        <td>${repair.descript}</td>
                        <td>${repair.agoto}</td>
                        <td>
                            <a href ="${pageContext.request.contextPath}/repair/updaterepair?id=${repair.orderno}">修改</a>
                              &nbsp;|&nbsp;
                            <a href ="${pageContext.request.contextPath}/repair/deleterepair?id=${repair.orderno}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>
    <h1>数据查询</h1>
</body>
</html>
