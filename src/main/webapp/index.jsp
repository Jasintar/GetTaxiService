<%--
  Created by IntelliJ IDEA.
  User: julia
  Date: 21.12.2016
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Вход</title>
  </head>
  <body>
  Hello user! <br>
  Enter your login and password <br>
  <%--<p>${sessionScope.get("message")}</p>
  ${sessionScope.remove("message")}--%>
  <form method="POST" action="/authentication">
    <label for="username">Username:</label>
    <input id="username" name="username"> <br>
    <label for="username">Password:</label>
    <input id="password" name="password"> <br>

    <input type="submit" value="Sign in">
  </form>
  <br>

  <a href="registration"> Sign up </a>
  </body>
</html>
