<%--
  Created by IntelliJ IDEA.
  User: julia
  Date: 26.12.2016
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello ${sessionScope.get("user").getFirstname()}!</h1>
<table border="1">
    <tr>
        <td>Отправление</td>
        <td>Назначение</td>
        <td>Действие</td>
    </tr>
    <c:forEach items="${orders}" var="order" varStatus="status">
        <jsp:useBean id="order" type="ru.innopolis.uni.course3.taxiapp.POJO.Order" />
        <tr valign="top">
            <td>${order.getStart()}</td>
            <td>${order.getFinish()}</td>
            <td>
                <form method="POST" action="${pageContext.request.contextPath}/acceptOrder">
                    <input type="hidden" name="id" value="${order.getId()}" />
                    <%--<input type="hidden" name="driverId" value="${sessionScope.get("user").getId()}" />--%>
                    <input type="submit" value="Взять этот заказ">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<p>
    <a href="${pageContext.servletContext.contextPath}/logout">Выйти</a>
</p>
</body>
</html>
