<%@ page import="ru.innopolis.uni.course3.taxiapp.POJO.User" %><%--
  Created by IntelliJ IDEA.
  UserDAO: julia
  Date: 25.12.2016
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create order page</title>
</head>
<body>
    <h1>Hello, ${sessionScope.get("user").getFirstname()} !</h1>
    <p>Для заказа такси укажите параметры поездки:</p>
    <form method="POST" action="${pageContext.request.contextPath}/createOrder">
        <label for="start">Точка отправление:</label>
        <input id="start" name="start"> <br>
        <label for="finish">Точка назначения:</label>
        <input id="finish" name="finish"> <br>

        <input type="submit" value="Make order">
    </form>
    <p>
        <a href="${pageContext.servletContext.contextPath}/logout">Выйти</a>
    </p>
</body>
</html>
