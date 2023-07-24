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
    <title>Main</title>
    <style type="text/css">
        .back-img {
            height: 60vh;
            width: 100%;
            background: url("images/book-image.jpeg") no-repeat;
            background-size: cover;
            background-position: center;
        }

        .heading {
            color: #50814c;
        }
    </style>
</head>
<body>
    <%@ include file="allComponents/navbar.jsp"%>
    <div class="container-fluid back-img">
        <h1 class="text-center pt-3 heading">Система управления электронными книгами</h1>
    </div>

    <div class="container">
        <h2 class="text-center">Последние книги</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card text-center">
                    <div class="card-body">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
