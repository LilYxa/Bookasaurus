<%@ page import="com.bookasaurus.DAO.BookDAOImpl" %>
<%@ page import="com.bookasaurus.DB.DBConnect" %>
<%@ page import="com.bookasaurus.entity.Book" %>
<%@ page import="java.util.List" %><%--
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
    <title>Все книги</title>
    <style type="text/css">
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <%@include file="/admin/Components/adminNavbar.jsp"%>

    <c:if test="${empty userObj}">
        <c:redirect url="Login"/>
    </c:if>

    <h3 class="text-center">Все книги</h3>

    <c:if test="${not empty successMsg}">
        <h5 class="text-center text-success">${successMsg}</h5>
        <c:remove var="successMsg" scope="session"/>
    </c:if>

    <c:if test="${not empty failedMsg}">
        <h5 class="text-center text-danger">${failedMsg}</h5>
        <c:remove var="failedMsg" scope="session"/>
    </c:if>

    <table class="table table-striped">
        <thead class="bg-success text-white">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Фото</th>
            <th scope="col">Название</th>
            <th scope="col">Автор</th>
            <th scope="col">Цена</th>
            <th scope="col">Категория</th>
            <th scope="col">Статус</th>
            <th scope="col">Действие</th>
        </tr>
        </thead>
        <tbody>

        <%
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
			List<Book> books = dao.getAllBooks();
			for (Book book : books) {
        %>
        <tr>
            <td><%=book.getBookId()%></td>
            <td><img src="books/<%=book.getPhoto()%>" alt="photo"
                     style="width: 50px; height: 50px"></td>
            <td><%=book.getBookName()%></td>
            <td><%=book.getAuthor()%></td>
            <td><%=book.getPrice()%></td>
            <td><%=book.getBookCategory()%></td>
            <td><%=book.getStatus()%></td>
            <td>
                <a href="Edit_books?bookId=<%=book.getBookId()%>" class="btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i> Изменить</a>
                <a href="DeleteBook?bookId=<%=book.getBookId()%>" class="btn-sm btn-danger"><i class="fa-solid fa-trash"></i> Удалить</a>
            </td>
        </tr>
        <%
			}
        %>

        </tbody>
    </table>

    <footer>
        <%@include file="/allComponents/footer.jsp"%>
    </footer>
</body>
</html>
