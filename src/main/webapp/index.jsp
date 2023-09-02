<%@ page import="java.sql.Connection" %>
<%@ page import="com.bookasaurus.DB.DBConnect" %>
<%@ page import="com.bookasaurus.DAO.BookDAOImpl" %>
<%@ page import="com.bookasaurus.entity.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bookasaurus.entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 24.07.2023
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="allComponents/allCss.jsp"%>
<html>
<head>
    <title>Главная</title>
    <link rel="shortcut icon" type="image/jpg" href="images/favicon.ico"/>
</head>
<body style="background-color: #f7f7f7">

    <%
        User user = (User) session.getAttribute("userObj");
    %>

    <%@ include file="allComponents/navbar.jsp"%>
    <div class="container-fluid back-img">
        <h1 class="text-center pt-3 heading">Система управления электронными книгами</h1>
    </div>

<%--    Начало раздела "Недавние"--%>

<%--    <%--%>
<%--        // Ссылка кнопки "Добавить в корзину" в зависимости от авторизации--%>
<%--        String cartLink = user == null ? "Login" : "cartServlet";--%>
<%--    %>--%>

    <div class="container">
        <h2 class="text-center">Последние книги</h2>
        <div class="row">

            <%
                BookDAOImpl recentBooksDAO = new BookDAOImpl(DBConnect.getConnection());
                List<Book> recentBooks = recentBooksDAO.getBookByCategory("recent", false);
                for (Book book : recentBooks) {
            %>
            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="books/<%=book.getPhoto()%>" class="img-thumblin" width="150px" height="200px">
                        <p><%=book.getBookName()%></p>
                        <p><%=book.getAuthor()%></p>

                        <%
                            if (book.getBookCategory().equals("old")) {
                        %>
                            <p>Категория: <%=book.getBookCategory()%></p>
                            <div class="card-buttons">
                                <a href="Book_details?bookId=<%=book.getBookId()%>" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                                <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> <%=book.getPrice()%></a>
                            </div>
                        <%
							} else {
                        %>
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
                        <%
							}
                        %>
                    </div>
                </div>
            </div>
            <%
                }
            %>

            <div class="text-center mt-3">
                <a href="Recent" class="btn btn-outline-danger btn-sm">Показать все</a>
            </div>

        </div>
    </div>

<%--    Конец раздела "Недавние"--%>

    <hr>

    <%--    Начало раздела "Новые"--%>

    <div class="container">
        <h2 class="text-center">Новые книги</h2>
        <div class="row">

                <%
                    BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
					List<Book> list = dao.getBookByCategory("new", false);
					for (Book book : list) {
                %>
            <div class="col-md-3">
                <div class="card card-hover">
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


            <div class="text-center mt-3">
                <a href="New" class="btn btn-outline-danger btn-sm">Показать все</a>
            </div>

        </div>
    </div>

    <%--    Конец раздела "Новые"--%>

    <hr>

    <%--    Начало раздела "Старые"--%>

    <div class="container">
        <h2 class="text-center">Старые книги</h2>
        <div class="row">
            <%
                BookDAOImpl oldBooksDAO = new BookDAOImpl(DBConnect.getConnection());
                List<Book> oldBooks = oldBooksDAO.getBookByCategory("old", false);
                for (Book book : oldBooks) {
            %>
            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="books/<%=book.getPhoto()%>" class="img-thumblin" width="150px" height="200px">
                        <p><%=book.getBookName()%></p>
                        <p><%=book.getAuthor()%></p>
                        <p>Категория: <%=book.getBookCategory()%></p>
                        <div class="card-buttons">
                            <a href="Book_details?bookId=<%=book.getBookId()%>" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> <%=book.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>

            <div class="text-center mt-3">
                <a href="Old" class="btn btn-outline-danger btn-sm">Показать все</a>
            </div>

        </div>
    </div>

    <%--    Конец раздела "Старые"--%>

    <%@include file="allComponents/footer.jsp"%>

</body>
</html>
