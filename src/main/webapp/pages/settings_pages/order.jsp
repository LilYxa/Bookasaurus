<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 03.09.2023
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Мой заказ</title>
    <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>

    <div class="container p-3">
        <h3 style="color: #00796B" class="text-center">Мой заказ</h3>
        <table class="table table-striped">
            <thead class="bg-success text-white">
            <tr>
                <th scope="col">Id заказа</th>
                <th scope="col">Имя покупателя</th>
                <th scope="col">Название книги</th>
                <th scope="col">Автор</th>
                <th scope="col">Цена</th>
                <th scope="col">Тип оплаты</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th class="text-info" scope="row">1</th>
                <td class="text-info">Mark</td>
                <td class="text-info">Otto</td>
                <td class="text-info">@mdo</td>
                <td class="text-info">Mark</td>
                <td class="text-info">Otto</td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
                <td>Mark</td>
                <td>Otto</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Larry the Bird</td>
                <td>Larry the Bird</td>
                <td>@twitter</td>
                <td>Mark</td>
                <td>Otto</td>
            </tr>
            </tbody>
        </table>
    </div>

    <footer>
      <%@include file="../../allComponents/footer.jsp"%>
    </footer>
</body>
</html>
