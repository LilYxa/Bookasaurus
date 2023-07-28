<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 28.07.2023
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Регистрация</title>
  <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>

    <div class="container p-3">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center">Регистрация</h3>
                        <form>
                            <div class="mb-3">
                                <label for="InputUsername" class="form-label">Имя</label>
                                <input type="text" class="form-control" id="InputUsername" required>
                            </div>
                            <div class="mb-3">
                                <label for="InputEmail" class="form-label">Электронная почта</label>
                                <input type="email" class="form-control" id="InputEmail" required>
                            </div>
                            <div class="mb-3">
                                <label for="InputPassword" class="form-label">Пароль</label>
                                <input type="password" class="form-control" id="InputPassword" aria-describedby="passwordHelpBlock" required>
                                <div id="passwordHelpBlock" class="form-text">Ваш пароль должен состоять минимум из 8 символов, включая строчные и заглавные буквы, цифры.</div>
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="Check">
                                <label class="form-check-label" for="Check">Запомнить меня</label>
                            </div>
                            <button type="submit" class="btn btn-success w-100 mb-2">Зарегистрироваться</button>
                            <div class="text-center">
                                <a href="Login">Уже есть аккаунт? Войти</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="/allComponents/footer.jsp"%>
</body>
</html>
