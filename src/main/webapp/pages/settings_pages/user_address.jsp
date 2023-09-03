<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 03.09.2023
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Адрес</title>
    <%@include file="/allComponents/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="/allComponents/navbar.jsp"%>

    <div class="container">
        <div class="row p-3">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-body">
                        <h3 style="color: #00796B" class="text-center">Добавить адрес</h3>
                        <form action="">
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="city">Город</label>
                                    <input id="city" type="text" class="form-control">
                                </div>

                                <div class="mb-3 col-md-6">
                                    <label for="region">Регион</label>
                                    <input id="region" type="text" class="form-control">
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

                            <div class="text-center">
                                <button class="btn btn-success">Добавить адрес</button>
                            </div>
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
