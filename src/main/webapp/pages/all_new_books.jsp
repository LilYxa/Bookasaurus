<%@ page import="com.bookasaurus.DAO.BookDAOImpl" %>
<%@ page import="com.bookasaurus.entity.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bookasaurus.DB.DBConnect" %>
<%@ page import="com.bookasaurus.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 14.08.2023
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Новые</title>
    <%@ include file="../allComponents/allCss.jsp"%>
</head>
<body>

    <%
        User user = (User) session.getAttribute("userObj");
    %>

    <c:if test="${not empty addCart}">
        <div class="position-fixed bottom-0 start-50 translate-middle-x" style="z-index: 11">
            <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-header">
                    <strong class="me-auto text-success">Успех</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
                <div class="toast-body">
                    <p id="toastMessage"></p>
                </div>
            </div>
        </div>
    </c:if>

    <%@ include file="../allComponents/navbar.jsp"%>

    <div class="container-fluid">
        <h2 class="text-center">Новые книги</h2>
        <div class="row p-3">
            <%
                BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
                List<Book> list = dao.getBookByCategory("new", true);
                for (Book book : list) {
            %>
            <div class="col-md-3">
                <div class="card card-hover mb-3">
                    <div class="card-body text-center">
                        <img alt="book" src="books/<%=book.getPhoto()%>" class="img-thumblin" width="150px" height="200px">
                        <p><%=book.getBookName()%></p>
                        <p><%=book.getAuthor()%></p>
                        <p>Категория: <%=book.getBookCategory()%></p>
                        <div class="card-buttons">
                            <%
                                if (user == null) {
                            %>
                                <a href="Login" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <%
                            } else {
                            %>
                                <a href="cartServlet?bookID=<%=book.getBookId()%>&&userID=<%=user.getId()%>" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <%
                                }
                            %>
                            <a href="Book_details?bookId=<%=book.getBookId()%>" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> <%=book.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>

    <footer>
        <%@include file="../allComponents/footer.jsp"%>
    </footer>

    <script>
        var toast = new bootstrap.Toast(document.getElementById('liveToast'));

        function showNotification(message) {
            var toastMessage = document.getElementById('toastMessage');
            toastMessage.innerText = message;
            toast.show();
        }

        // Проверяем наличие сообщения и вызываем уведомление
        var addCartMessage = '<%= session.getAttribute("addCart") %>';
        if (addCartMessage) {
            showNotification(addCartMessage);
        }

        <c:remove var="addCart" scope="session" />
    </script>
</body>
</html>
