<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Event</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/font.css" />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <script
      src="https://code.jquery.com/jquery-3.6.3.slim.js"
      integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>
    
    <!-- 본 페이지 -->
    <div class="container mb-5">
      <div class="fs-3 fw-bold text-center mt-5">이벤트</div>
      <div class="d-flex justify-content-between mt-3 align-middle">
        <div class="pt-2">전체 이벤트</div>
        <form action="/event/eventSearchWithDate" method="get">
          <div>
            <select class="custom-select form-control text-center" name="selectKeyField" id="selectKeyField" onchange="this.form.submit()">
              <option selected>---- 선택 ----</option>
              <option value="all">전체 이벤트</option>
              <option value="ongoing">진행중인 이벤트</option>
              <option value="done">종료된 이벤트</option>
            </select>
          </div>
        </form>
      </div>
      <hr class="mb-1"/>
      <table class="table table-hover">
        <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
          <%-- 진행중, 종료 표시... --%>
          <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="todayDateForm" />
          <fmt:parseDate value="${resultData.EVENT_DATETIME.substring(13,23)}" pattern="yyyy-MM-dd" var="EVENT_DATE_END"/>
          <fmt:formatDate value="${EVENT_DATE_END}" pattern="yyyy-MM-dd" var="EVENT_DATE_END_FORM" />
          <tr>
            <td scope="">
              <div class="d-flex align-items-center text-align-center">
                <div style="width: 200px; height: 200px; overflow: hidden;" class="">
                  <img src="/img/files/${resultData.PHYSICALFILE_NAME}/${resultData.ORIGINALFILE_NAME}" alt="${resultData.ORIGINALFILE_NAME}" 
                  style="width: 200px; heigth: 200px; object-fit: cover;" class=""/>
                </div>
                <div class="ms-4">
                  <a
                    href="/event/eventContent/${resultData.EVENT_UID}"
                    class="text-decoration-none"
                    style="color: black"
                    >${resultData.EVENT_TITLE}</a
                  >
                  <c:if test="${todayDateForm le EVENT_DATE_END_FORM}">
                    <span
                      class="badge badge-pill"
                      style="background-color: rgb(220, 53, 69)"
                      >
                      진행중</span
                    >
                  </c:if>
                  <c:if test="${todayDateForm gt EVENT_DATE_END_FORM}">
                    <span
                      class="badge badge-pill bg-secondary"
                      >
                      종료</span
                    >
                  </c:if>
                  <div class="mt-2">${resultData.EVENT_DATETIME}</div>
                </div>
              </div>
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>

    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>
    
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
