<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
        <div class="col-md-4 text-end authSection">
            <a class="btn btn-success loginBtn" href="Login"><i class="fa-solid fa-arrow-right-from-bracket"></i> Войти</a>
            <a class="btn btn-success registerBtn" href="Register"><i class="fa-solid fa-user-plus"></i> Зарегистрироваться</a>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #26a69a">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="Main"><i class="fa-solid fa-house-chimney"></i> Главная</a>
                </li>
            </ul>
        </div>
    </div>
</nav>