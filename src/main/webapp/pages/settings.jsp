<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 03.09.2023
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Настройки</title>
    <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>

    <div class="container">
        <h3 style="color: #00796B" class="text-center">Здравствуйте, ${userObj.name}</h3>
        <div class="row p-5">
            <div class="col-md-6">
                <a class="text-info" href="Sell_book">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-book-bookmark fa-3x"></i>
                            <h3>Продать б/у книгу</h3>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-6">
                <a class="text-info" href="Edit_profile">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-user-pen fa-3x"></i>
                            <h3>Персональные данные</h3>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 mt-3">
                <a class="text-warning" href="User_address">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-map-location-dot fa-3x"></i>
                            <h3>Мой адрес</h3>
                            <p class="text-muted">Изменить адрес</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 mt-3">
                <a class="text-danger" href="My_order">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-box fa-3x"></i>
                            <h3>Мой заказ</h3>
                            <p class="text-muted">Отследить мою посылку</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 mt-3">
                <a class="text-primary" href="Contact_Us">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-circle-question fa-3x"></i>
                            <h3>Помощь</h3>
                            <p class="text-muted">Связаться с нами</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <footer>
        <%@include file="../allComponents/footer.jsp"%>
    </footer>
</body>
</html>
