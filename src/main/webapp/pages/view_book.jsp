<%@ page import="com.bookasaurus.DAO.BookDAOImpl" %>
<%@ page import="com.bookasaurus.DB.DBConnect" %>
<%@ page import="com.bookasaurus.entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 17.08.2023
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Информация о книге</title>
  <%@ include file="../allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@ include file="../allComponents/navbar.jsp"%>

    <%
        int bookID = Integer.parseInt(request.getParameter("bookId"));
        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
		Book book = dao.getBookById(bookID);

    %>

    <div class="container p-3">
      <div class="row">
        <div class="col-md-6 text-center p-5 border bg-white">
          <img src="books/<%=book.getPhoto()%>" alt="photo" style="height: 200px; width: 150px"><br>
          <h4 class="mt-3">Название книги: <span class="text-success"><%=book.getBookName()%></span></h4>
          <h4>Автор: <span class="text-success"><%=book.getAuthor()%></span></h4>
          <h4>Категория: <span class="text-success"><%=book.getBookCategory()%></span></h4>
        </div>
        <div class="col-md-6 text-center p-5 border bg-white">
          <h2><%=book.getBookName()%></h2>

            <%
                if ("old".equals(book.getBookCategory())) {
            %>
                <h5 class="text-primary">Связаться с продавцом</h5>
                <h5 class="text-primary"><i class="fa-regular fa-envelope"></i> Электронная почта: <%=book.getEmail()%></h5>
            <%
                }
            %>

          <div class="row mb-3">
              <div class="col-md-4 text-warning text-center p-2">
                  <i class="fa-solid fa-coins fa-3x"></i>
                  <p>Оплата при получении</p>
              </div>
              <div class="col-md-4 text-success text-center p-2">
                  <i class="fa-solid fa-rotate-left fa-3x"></i>
                  <p>Возможен возврат</p>
              </div>
              <div class="col-md-4 text-primary text-center p-2">
                  <i class="fa-solid fa-truck fa-3x"></i>
                  <p>Быстрая доставка</p>
              </div>
          </div>

            <%
                if ("old".equals(book.getBookCategory())) {
            %>
            <div class="col">
                <a href="Main" class="btn btn-success"><i class="fa-solid fa-book"></i> Вернуться к книгам</a>
                <a href="#" class="btn btn-primary"><i class="fa-solid fa-money-bill-wave"></i> <%=book.getPrice()%></a>
            </div>
            <%
                } else {
            %>
            <div class="col">
                <a href="#" class="btn btn-success"><i class="fa-solid fa-cart-plus"></i> Добавить в корзину</a>
                <a href="#" class="btn btn-primary"><i class="fa-solid fa-money-bill-wave"></i> <%=book.getPrice()%></a>
            </div>
            <%
                }
            %>
        </div>
      </div>
    </div>

</body>
</html>
