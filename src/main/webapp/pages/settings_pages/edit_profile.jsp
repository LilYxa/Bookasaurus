<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 03.09.2023
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Изменить данные</title>
    <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>

    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h3 style="color: #00796B" class="text-center">Изменить данные</h3>

                        <form action="" method="post">
                            <div class="mb-3">
                                <label for="InputUsername" class="form-label">Имя</label>
                                <input type="text" class="form-control" id="InputUsername" name="name" required>
                            </div>
                            <div class="mb-3">
                                <label for="InputEmail" class="form-label">Электронная почта</label>
                                <input type="email" class="form-control" id="InputEmail" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="InputPhone" class="form-label">Номер телефона</label>
                                <input type="phone" class="form-control" id="InputPhone" name="phone" required>
                            </div>
                            <div class="mb-3">
                                <label for="InputPassword" class="form-label">Пароль</label>
                                <input type="password" class="form-control" id="InputPassword" name="password" aria-describedby="passwordHelpBlock" required>
                                <div id="passwordHelpBlock" class="form-text">Ваш пароль должен состоять минимум из 8 символов, включая строчные и заглавные буквы, цифры.</div>
                            </div>
                            <button type="submit" class="btn btn-success w-100 mb-2">Изменить</button>
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
