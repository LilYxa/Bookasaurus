<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 06.08.2023
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/allComponents/allCss.jsp"%>
<html>
<head>
    <title>Заказы</title>
    <style type="text/css">
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<%@include file="/admin/adminNavbar.jsp"%>

<h3 class="text-center">Заказы</h3>
<table class="table table-striped">
    <thead class="bg-success text-white">
    <tr>
        <th scope="col">Id заказа</th>
        <th scope="col">Имя покупателя</th>
        <th scope="col">Электронная почта</th>
        <th scope="col">Адрес</th>
        <th scope="col">Номер телефона</th>
        <th scope="col">Название книги</th>
        <th scope="col">Автор</th>
        <th scope="col">Цена</th>
        <th scope="col">Тип оплаты</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Mark</td>
        <td>Otto</td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Mark</td>
        <td>Otto</td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td colspan="2">Larry the Bird</td>
        <td>@twitter</td>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Mark</td>
        <td>Otto</td>
    </tr>
    </tbody>
</table>

<footer>
    <%@include file="/allComponents/footer.jsp"%>
</footer>
</body>
</html>
