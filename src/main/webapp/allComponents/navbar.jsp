<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<div class="container-fluid" style="background-color: #b2dfdb">
    <div class="header row">
        <div class="col-md-2">
            <a class="navbar-brand" href="Main">
                <img src="images/logo.png" alt="logo" width="50" height="50">
                <span class="name">Bookasaurus</span>
            </a>
        </div>
        <div class="col-md-6">
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Введите название книги" aria-label="Search">
                <button class="btn btn-success" type="submit">Найти</button>
            </form>
        </div>

        <c:if test="${not empty userObj}">
            <div class="col-md-4 text-end authSection">
                <a href="Cart" class="align-middle text-light position-relative me-2"><i class="fa-solid fa-cart-shopping fa-2x"></i><span class="position-absolute top-n1 start-100 translate-middle badge rounded-circle bg-danger">3</span></a>
                <a class="btn btn-success loginBtn" href="Profile"><i class="fa-solid fa-user"></i> ${userObj.name}</a>
                <a class="btn btn-danger registerBtn" data-bs-toggle="modal" data-bs-target="#Modal"><i class="fa-solid fa-right-from-bracket"></i> Выйти</a>
            </div>
        </c:if>

        <c:if test="${empty userObj}">
            <div class="col-md-4 text-end authSection">
                <a class="btn btn-success loginBtn" href="Login"><i class="fa-solid fa-arrow-right-from-bracket"></i> Войти</a>
                <a class="btn btn-success registerBtn" href="Register"><i class="fa-solid fa-user-plus"></i> Зарегистрироваться</a>
            </div>
        </c:if>

    </div>
</div>

<%@include file="../allComponents/logout_modal.jsp"%>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #26a69a">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="Main"><i class="fa-solid fa-house-chimney"></i> Главная</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Recent"><i class="fa-solid fa-book-bookmark"></i> Недавние</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="New"><i class="fa-solid fa-book"></i> Новые</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Old"><i class="fa-solid fa-book-open"></i> Старые</a>
                </li>
            </ul>
        </div>
        <form class="form-inline my-2 my-lg-0">
            <button class="btn btn-light my-2 my-sm-0"><i class="fa-solid fa-gear fa-spin"></i> Настройки</button>
            <button class="btn btn-light my-2 my-sm-0"><i class="fa-solid fa-address-book"></i> Связаться с нами</button>
        </form>
    </div>
</nav>