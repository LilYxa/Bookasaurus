<%@ page import="java.sql.Connection" %>
<%@ page import="com.bookasaurus.DB.DBConnect" %>
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

        .card-hover:hover {
            background-color: #e0e0e0;
        }
    </style>
</head>
<body style="background-color: #f7f7f7">
    <%@ include file="allComponents/navbar.jsp"%>
    <div class="container-fluid back-img">
        <h1 class="text-center pt-3 heading">Система управления электронными книгами</h1>
    </div>

<%--    Начало раздела "Недавние"--%>

    <div class="container">
        <h2 class="text-center">Последние книги</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center mt-3">
            <a href="" class="btn btn-outline-danger btn-sm">Показать все</a>
        </div>

    </div>

<%--    Конец раздела "Недавние"--%>

    <hr>

    <%--    Начало раздела "Новые"--%>

    <div class="container">
        <h2 class="text-center">Новые книги</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> В корзину</a>
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center mt-3">
            <a href="" class="btn btn-outline-danger btn-sm">Показать все</a>
        </div>

    </div>

    <%--    Конец раздела "Новые"--%>

    <hr>

    <%--    Начало раздела "Старые"--%>

    <div class="container">
        <h2 class="text-center">Старые книги</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons">
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card card-hover">
                    <div class="card-body text-center">
                        <img alt="book" src="images/book-image.jpeg" class="img-thumblin" width="150px" height="200px">
                        <p>Book</p>
                        <p>Author</p>
                        <p>Categories: New</p>
                        <div class="card-buttons text-center">
                            <a href="" class="btn btn-info btn-sm ml-1"><i class="fa-solid fa-circle-info"></i> Детали</a>
                            <a href="" class="btn btn-light btn-sm ml-1"><i class="fa-solid fa-money-bill"></i> 300</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center mt-3">
            <a href="" class="btn btn-outline-danger btn-sm">Показать все</a>
        </div>

    </div>

    <%--    Конец раздела "Старые"--%>

    <%@include file="allComponents/footer.jsp"%>

</body>
</html>
