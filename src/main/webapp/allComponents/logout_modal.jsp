<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 10.08.2023
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--logout modal--%>
<div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <%--            <div class="modal-header">--%>
      <%--                <h5 class="modal-title" id="ModalLabel"></h5>--%>
      <%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
      <%--            </div>--%>
      <div class="modal-body">
        <div class="text-center">
          <h4 class="mb-4">Вы действительно хотите выйти?</h4>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
          <a href="LogoutServlet" type="button" class="btn btn-danger">Выйти</a>
        </div>
      </div>
      <%--            <div class="modal-footer">--%>

      <%--            </div>--%>
    </div>
  </div>
</div>
<%--end logout modal--%>
