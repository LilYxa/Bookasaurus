<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 06.08.2023
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/allComponents/allCss.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Добавить книгу</title>
</head>
<body style="background-color: #f0f2f2">
    <%@include file="/admin/adminNavbar.jsp"%>
    <div class="container p-3">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center">Добавить книгу</h3>

                        <c:if test="${not empty successMsg}">
                            <p class="text-center text-success">${successMsg}</p>
                            <c:remove var="successMsg" scope="session"/>
                        </c:if>

                        <c:if test="${not empty failedMsg}">
                            <p class="text-center text-danger">${failedMsg}</p>
                            <c:remove var="failedMsg" scope="session"/>
                        </c:if>

                        <form action="BookAdd" method="post" enctype="multipart/form-data">
                            <div class="form-group mb-3">
                                <label for="bookName">Название книги</label>
                                <input type="text" class="form-control" name="bookName" id="bookName">
                            </div>

                            <div class="form-group mb-3">
                                <label for="author">Автор</label>
                                <input type="text" class="form-control" name="author" id="author">
                            </div>

                            <div class="form-group mb-3">
                                <label for="price">Цена</label>
                                <input type="number" class="form-control" name="price" id="price">
                            </div>

                            <div class="form-group mb-3">
                                <label for="category">Категория</label>
                                <select name="category" id="category" class="form-control">
                                    <option selected>--Выберите--</option>
                                    <option value="new">Новая книга</option>
                                </select>
                            </div>

                            <div class="form-group mb-3">
                                <label for="state">Статус книги</label>
                                <select name="state" id="state" class="form-control">
                                    <option selected>--Выберите--</option>
                                    <option value="active">Активная</option>
                                    <option value="inactive">Неактивная</option>
                                </select>
                            </div>

                            <div class="form-group mb-3">
                                <label for="photo">Загрузить фотографию</label>
                                <input type="file" class="form-control" name="photo" id="photo">
                            </div>

                            <button type="submit" class="btn btn-success w-100">Добавить книгу</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <%@include file="/allComponents/footer.jsp"%>
    </footer>
</body>
</html>
