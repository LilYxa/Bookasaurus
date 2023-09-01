<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 01.09.2023
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Корзина</title>
    <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>
    <div class="container">
        <div class="row p-3">
            <div class="col-md-6">
                <div class="card bg-white">
                    <div class="card-body">
                        <h3 class="text-center text-success">Ваши товары</h3>
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Имя</th>
                                <th scope="col">Фамилия</th>
                                <th scope="col">Обращение</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td colspan="2">Larry the Bird</td>
                                <td>@twitter</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-success">Информация о Вас</h3>
                        <form>
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="name">Имя</label>
                                    <input id="name" type="text" class="form-control" value="">
                                </div>

                                <div class="mb-3 col-md-6">
                                    <label for="email">Электронная почта</label>
                                    <input id="email" type="email" class="form-control" value="">
                                </div>
                            </div>

                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="phoneNumber">Номер телефона</label>
                                    <input id="phoneNumber" type="number" class="form-control" >
                                </div>

                                <div class="mb-3 col-md-6">
                                    <label for="address">Адрес</label>
                                    <input id="address" type="text" class="form-control">
                                </div>
                            </div>

                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="city">Город</label>
                                    <input id="city" type="text" class="form-control">
                                </div>

                                <div class="mb-3 col-md-6">
                                    <label for="zip">Индекс</label>
                                    <input id="zip" type="text" class="form-control">
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="paymentType">Способ оплаты</label>
                                <select class="form-control" name="" id="paymentType">
                                    <option selected>--Выбрать--</option>
                                    <option value="">Наличными</option>
                                    <option value="">Картой</option>
                                </select>
                            </div>

                            <div class="text-center">
                                <button class="btn btn-success"><i class="fa-solid fa-truck-fast"></i> Заказать сейчас</button>
                                <a href="Main" class="btn btn-info"><i class="fa-solid fa-bag-shopping"></i> Вернуться к покупкам</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
