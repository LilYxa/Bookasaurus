<%@ page import="com.bookasaurus.DAO.BookDAOImpl" %>
<%@ page import="com.bookasaurus.DB.DBConnect" %>
<%@ page import="com.bookasaurus.entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 10.08.2023
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/allComponents/allCss.jsp"%>
<html>
<head>
  <title>Изменить данные</title>
</head>
<body style="background-color: #f0f2f2">
<%@include file="/admin/adminNavbar.jsp"%>
<div class="container p-3">
  <div class="row">
    <div class="col-md-4 offset-md-4">
      <div class="card">
        <div class="card-body">
          <h3 class="text-center">Изменить информацию о книге</h3>

          <%
            int id = Integer.parseInt(request.getParameter("bookId"));
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
            Book book = dao.getBookById(id);
          %>

          <form action="EditBook" method="post">
            <input type="hidden" class="form-control" name="bookId" id="bookId" value="<%=book.getBookId()%>">

            <div class="form-group mb-3">
              <label for="bookName">Название книги</label>
              <input type="text" class="form-control" name="bookName" id="bookName" value="<%=book.getBookName()%>">
            </div>

            <div class="form-group mb-3">
              <label for="author">Автор</label>
              <input type="text" class="form-control" name="author" id="author" value="<%=book.getAuthor()%>">
            </div>

            <div class="form-group mb-3">
              <label for="price">Цена</label>
              <input type="number" class="form-control" name="price" id="price" value="<%=book.getPrice()%>">
            </div>

            <div class="form-group mb-3">
              <label for="state">Статус книги</label>
              <select name="state" id="state" class="form-control">
                <%
                  if("active".equals(book.getStatus())) {
                %>
                    <option value="active">Активная</option>
                    <option value="inactive">Неактивная</option>
                <%
                  } else {
                %>
                    <option value="inactive">Неактивная</option>
                    <option value="active">Активная</option>
                <%
                  }
                %>
              </select>
            </div>
            <button type="submit" class="btn btn-success w-100">Изменить книгу</button>
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

