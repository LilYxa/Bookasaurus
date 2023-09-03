<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 03.09.2023
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Связаться с нами</title>
  <%@include file="/allComponents/allCss.jsp"%>
</head>
<body>
    <%@include file="/allComponents/navbar.jsp"%>

    <div class="container">
        <div class="row p-5">
            <div class="col-md-8 offset-md-2 text-center">
                <div class="text-center text-success">
                    <i class="fa-solid fa-envelope fa-4x"></i>
                </div>
                <h3 class="text-center">Связаться с нами</h3>
                <h4><i class="fa-solid fa-at text-info"></i> Электронная почта: <a href="mailto:bookasaurus.support@mail.ru">bookasaurus.support@mail.ru</a></h4>
                <h4><i class="fa-solid fa-phone text-warning"></i> Наш номер телефона: +7-800-555-25-65</h4>
                <a href="Main" class="btn btn-primary text-center">Вернуться к книгам</a>
            </div>
        </div>
    </div>

    <footer>
      <%@include file="../../allComponents/footer.jsp"%>
    </footer>
</body>
</html>
