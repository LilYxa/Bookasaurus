<%@ page import="com.bookasaurus.DAO.CartDAOImpl" %>
<%@ page import="com.bookasaurus.DB.DBConnect" %>
<%@ page import="com.bookasaurus.entity.User" %>
<%@ page import="com.bookasaurus.entity.Cart" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 01.09.2023
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Корзина</title>
    <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>

    <c:if test="${empty userObj}">
        <c:redirect url = "Login"></c:redirect>
    </c:if>

    <c:if test="${not empty failedMsg}">
        <div class="alert alert-danger">${failedMsg}</div>
        <c:remove var="failedMsg" scope="session"/>
    </c:if>

    <c:if test="${not empty successMsg}">
        <div class="alert alert-success text-center">${successMsg}</div>
        <c:remove var="successMsg" scope="session"/>
    </c:if>

    <div class="container">
        <div class="row p-3">
            <div class="col-md-6">
                <div class="card bg-white">
                    <div class="card-body">
                        <h3 class="text-center text-success">Ваши товары</h3>
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">Название книги</th>
                                <th scope="col">Автор</th>
                                <th scope="col">Цена</th>
                                <th scope="col">Действие</th>
                            </tr>
                            </thead>
                            <tbody>

                            <%
                                User user = (User) session.getAttribute("userObj");

                                CartDAOImpl dao = new CartDAOImpl(DBConnect.getConnection());
								List<Cart> cart = dao.getBookByUser(user.getId());
								Double totalPrice = 0.0;

                                for (Cart c : cart) {
									totalPrice = c.getTotalPrice();
                            %>
                                <tr>
                                    <th scope="row"><%=c.getBookName()%></th>
                                    <td><%=c.getAuthor()%></td>
                                    <td><%=c.getPrice()%></td>
                                    <td>
                                        <a href="RemoveBookFromCart?bookID=<%=c.getBookID()%>&&userID=<%=c.getUserID()%>" class="btn btn-sm btn-danger">Удалить</a>
                                    </td>
                                </tr>
                            <%
                                }
                            %>

                            <tr>
                                <td>Итого</td>
                                <td></td>
                                <td></td>
                                <td><%=totalPrice%></td>
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
                                    <input id="name" type="text" class="form-control" value="<%=user.getName()%>" readonly>
                                </div>

                                <div class="mb-3 col-md-6">
                                    <label for="email">Электронная почта</label>
                                    <input id="email" type="email" class="form-control" value="<%=user.getEmail()%>" readonly>
                                </div>
                            </div>

                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="phoneNumber">Номер телефона</label>
                                    <input id="phoneNumber" type="tel" class="form-control" >
                                </div>

                                <div class="mb-3 col-md-6">
                                    <label for="city">Город</label>
                                    <input id="city" type="text" class="form-control">
                                </div>
                            </div>

                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="address">Адрес</label>
                                    <input id="address" type="text" class="form-control">
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
