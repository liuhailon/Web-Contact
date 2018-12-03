<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lhl
  Date: 2018/10/22
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/" method="post">
        <input type="text" name="name" placeholder="姓名"/>
        <input type="text" name="address" placeholder="地址"/>
        <input type="submit">
    </form>

<table>
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>地址</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${contacts}" var="contact">
        <tr>
            <td>${contact.id}</td>
            <td>${contact.name}</td>
            <td>${contact.address}</td>
            <a href="/del/${contact.id}">删除</a>
        </tr>
    </c:forEach>
</table>
    <div>
        <p>总共有 ${pageInfo.pages} 页，总共有 ${pageInfo.total}</p>
        <p>当前是第 ${pageInfo.pageNum} 页</p>
        <c:forEach begin="1" end="${pageInfo.pages}" var="p">
            <a href="/?page=${p}">第 ${p} 页  </a>
        </c:forEach>
    </div>
</body>
</html>
