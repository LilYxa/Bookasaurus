<%@ page import="com.bookasaurus.DAO.BookDAOImpl" %>
<%@ page import="com.bookasaurus.entity.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bookasaurus.DB.DBConnect" %><%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 14.08.2023
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Старые</title>
    <%@ include file="../allComponents/allCss.jsp"%>
</head>
<body>
    <%@ include file="../allComponents/navbar.jsp"%>

    <div class="container-fluid">
        <h2 class="text-center">Старые книги</h2>
        <div class="row p-3">
            <%
                BookDAOImpl oldBooksDAO = new BookDAOImpl(DBConnect.getConnection());
                List<Book> oldBooks = oldBooksDAO.getBookByCategory("old", false);
                for (Book book : oldBooks) {
            %>
            <div class="col-md-3">
                <div class="card card-hover mb-3">
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
        </div>
    </div>

    <footer>
        <%@include file="../allComponents/footer.jsp"%>
    </footer>
</body>
</html>
