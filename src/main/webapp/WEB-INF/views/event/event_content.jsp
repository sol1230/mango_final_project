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
  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>
    
    <!-- 본 페이지  -->
    <div class="container">
      <%-- 진행중, 종료 표시... --%>
      <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="todayDateForm" />
      <fmt:parseDate value="${resultMap.EVENT_DATETIME.substring(13,23)}" pattern="yyyy-MM-dd" var="EVENT_DATE_END"/>
      <fmt:formatDate value="${EVENT_DATE_END}" pattern="yyyy-MM-dd" var="EVENT_DATE_END_FORM" />
      <div class="fs-3 fw-bold text-center mt-5">이벤트</div>
      <div class="d-flex justify-content-between mt-5">
        <div>
          ${resultMap.EVENT_TITLE}
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
        </div>
        <div>${resultMap.EVENT_DATETIME}</div>
      </div>
      <hr />
        <div class="text-center mt-5">
          <div class="ps-5 pe-5">
            ${resultMap.EVENT_CONTENT}
          </div>
          <c:if test="${not empty resultMap.EVENT_PHYSICALFILE_NAME}">
            <div class="mt-5 mb-5">
              <img src="/img/files/${resultMap.EVENT_PHYSICALFILE_NAME}/${resultMap.EVENT_ORIGINALFILE_NAME}" alt="${resultMap.EVENT_ORIGINALFILE_NAME}" style="width: 800px" />
            </div>
          </c:if>
        </div>
      <div class="text-center mt-5 mb-5">
        <a href="/event/event" class="btn btn-danger">목록</a>
      </div>
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
