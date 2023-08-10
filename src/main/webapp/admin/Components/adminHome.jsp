<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 05.08.2023
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/allComponents/allCss.jsp"%>
<html>
<head>
    <title>Admin</title>

    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
        }

        .addBook:hover {
            color: #198754;
        }

        .allBooks:hover {
            color: #FFC107;
        }

        .orders:hover {
            color: #0D6EFD;
        }

        .logout:hover {
            color: #DC3545;
        }
    </style>
</head>
<body>
<%@include file="/admin/Components/adminNavbar.jsp"%>

<c:if test="${empty userObj}">
    <c:redirect url="Login"/>
</c:if>

<%@include file="../../allComponents/logout_modal.jsp"%>

    <div class="container">
        <div class="row p-5">
            <div class="col-md-3">
                <a href="Add_book" class="addBook">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-square-plus fa-3x text-success"></i><br>
                            <h4>Добавить книгу</h4>
                            -------------------
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3">
                <a href="All_books" class="allBooks">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-book fa-3x text-warning"></i><br>
                            <h4>Все книги</h4>
                            -------------------
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3">
                <a href="Orders" class="orders">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-cart-shopping fa-3x text-primary"></i><br>
                            <h4>Заказы</h4>
                            -------------------
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3">
                <a href="LogoutServlet" class="logout" data-bs-toggle="modal" data-bs-target="#Modal">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-arrow-right-from-bracket fa-3x text-danger"></i><br>
                            <h4>Выйти</h4>
                            -------------------
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <%@include file="/allComponents/footer.jsp"%>

</body>
</html>
