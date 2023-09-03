<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 03.09.2023
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Продать книгу</title>
    <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>

    <div class="container">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="card">
            <div class="card-body">
              <h3 style="color: #00796B" class="text-center">Продать книгу</h3>

              <form action="" method="post" enctype="multipart/form-data">
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
                  <label for="photo">Загрузить фотографию</label>
                  <input type="file" class="form-control" name="photo" id="photo">
                </div>

                <button type="submit" class="btn btn-success w-100">Опубликовать книгу</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <footer>
      <%@include file="../../allComponents/footer.jsp"%>
    </footer>
</body>
</html>
