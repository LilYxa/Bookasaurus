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
    <title>Все книги</title>
    <style type="text/css">
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <%@include file="/admin/adminNavbar.jsp"%>

    <h3 class="text-center">Все книги</h3>
    <table class="table table-striped">
        <thead class="bg-success text-white">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Название</th>
            <th scope="col">Автор</th>
            <th scope="col">Цена</th>
            <th scope="col">Категория</th>
            <th scope="col">Статус</th>
            <th scope="col">Действие</th>
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
            <td>
                <a href="#" class="btn-sm btn-primary">Изменить</a>
                <a href="#" class="btn-sm btn-danger">Удалить</a>
            </td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>
                <a href="#" class="btn-sm btn-primary">Изменить</a>
                <a href="#" class="btn-sm btn-danger">Удалить</a>
            </td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>
                <a href="#" class="btn-sm btn-primary">Изменить</a>
                <a href="#" class="btn-sm btn-danger">Удалить</a>
            </td>
        </tr>
        </tbody>
    </table>

    <footer>
        <%@include file="/allComponents/footer.jsp"%>
    </footer>
</body>
</html>
