<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 05.08.2023
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Домашняя страница</title>
</head>
<body>

    <%
        boolean userFound = false;

        Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user")) {
					userFound = true;
					break;
                }
            }
        }

		if (userFound) {
    %>

    <h1>Домашняя страница пользователя</h1>
    <c:if test="${not empty userObj}">
        <h1>Имя: ${userObj.name}</h1>
        <h1>Электронная почта: ${userObj.email}</h1>
    </c:if>

    <%
        } else {
			response.sendRedirect("Login");
        }
    %>
</body>
</html>
