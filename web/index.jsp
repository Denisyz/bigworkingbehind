<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2021/10/31
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
      <style>
          a{
              text-decoration: none;
              color:black;
              font-size: 18px;
          }
          h3{
              width:400px;
              height:38px;
              margin: 100px auto;
              text-align: center;
              line-height: 38px;
              background: deepskyblue;
              border-radius: 5px;
          }
      </style>
  </head>
  <body>

     <h3>
       <a href="${pageContext.request.contextPath}/repair/allrepair">进入查询维修管理数据库表的所有信息页面</a>

     </h3>
  </body>
</html>
