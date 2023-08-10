<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 28.07.2023
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Войти</title>
  <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>

    <div class="container p-3" style="min-height: 75vh">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center">Авторизация</h3>

                        <c:if test="${not empty failedMsg}">
                            <h5 class="text-center text-danger">${failedMsg}</h5>
                            <c:remove var="failedMsg" scope="session"/>
                        </c:if>

                        <c:if test="${not empty successMsg}">
                            <h5 class="text-center text-success">${successMsg}</h5>
                            <c:remove var="successMsg" scope="session"/>
                        </c:if>

                        <form action="LoginServlet" method="post">
                            <div class="mb-3">
                                <label for="InputEmail" class="form-label">Электронная почта</label>
                                <input type="email" class="form-control" id="InputEmail" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="InputPassword" class="form-label">Пароль</label>
                                <input type="password" class="form-control" id="InputPassword" name="password" required>
                            </div>
                            <button type="submit" class="btn btn-success w-100 mb-2">Войти</button>
                            <div class="text-center">
                                <a href="Register">Нет аккаунта? Зарегистрируйтесь</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <%@include file="/allComponents/footer.jsp"%>

</body>
</html>
