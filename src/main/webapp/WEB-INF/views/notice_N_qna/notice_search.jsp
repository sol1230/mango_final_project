<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notice</title>
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
    <link rel="stylesheet" href="/css/common.css" />


  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container mb-5">
      <div class="fs-3 text-center mt-5 fw-bold">공지사항</div>
      <table class="table mt-5 text-center justify-content-center">
        <thead>
          <tr>
            <th>번호</th>
            <th >제목</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody>
        <form action="/notice/notice_content" method="get">
          <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
            <tr>
              <td>${loop.count}</td>
              <td>
                <a
                  href="/notice/notice_content/${resultData.NOTICE_UID}"
                  class="text-decoration-none"
                  style="color: black"
                  >${resultData.NOTICE_TITLE}</a
                >
              </td>
              <td>${resultData.NOTICE_DATE}</td>
            </tr>
          </c:forEach>
        </form>
        </tbody>
      </table>

      <form action="/notice/notice_search/1" method="get">
        <div class="input-group justify-content-center mt-5">
          <div class="">
            <input
              class="form-control"
              type="search"
              name="SEARCH_NOTICE"
              value="${searchNotice}"
              placeholder="검색어를 입력하세요."
              aria-label="Search"
              required
              style="width: 100%"
            />
          </div>
          <div class="ms-1">
            <button class="btn btn-danger center">검색</button>
          </div>
        </div>
      </form>

      <%-- pagination --%>
      <c:set var="_pagination" value="${resultMap.paginations}" />
      ${paginations}
      <div class="pagination pagination-sm justify-content-center mt-3">
        <nav aria-label="Page navigation">
          <ul class="pagination pagination-sm">
            <li class="page-item">
              <a class="page-link" href="/notice/notice_search/${_pagination.previousPage}" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">이전</span>
              </a>
            </li>
            <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}" >
            <li class="page-item">
              <a class="page-link" href="/notice/notice_search/${i}">${i}</a>
            </li>
            </c:forEach>
            <li class="page-item">
              <a class="page-link" href="/notice/notice_search/${_pagination.nextPage}" aria-label="Next">
                <span class="sr-only">다음</span>
                <span aria-hidden="true">&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>
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
