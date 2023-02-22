<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
      <table class="table mt-5 text-center">
        <thead>
          <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>10</td>
            <td>
              <a
                href="/notice_N_qna/notice_content"
                class="text-decoration-none"
                style="color: black"
                >배송 불가 안내</a
              >
            </td>
            <td>2023.01.06</td>
          </tr>
          <tr>
            <td>9</td>
            <td>
              <a
                href="/notice_N_qna/notice_content"
                class="text-decoration-none"
                style="color: black"
                >휴무 안내</a
              >
            </td>
            <td>2023.01.04</td>
          </tr>
          <tr>
            <td>8</td>
            <td>
              <a
                href="/notice_N_qna/notice_content"
                class="text-decoration-none"
                style="color: black"
                >회원가입 오류 시 해결 방법 안내</a
              >
            </td>
            <td>2023.01.02</td>
          </tr>
          <tr>
            <td>7</td>
            <td>
              <a
                href="/notice_N_qna/notice_content"
                class="text-decoration-none"
                style="color: black"
                >TOP3 와인 판매일 변경 안내</a
              >
            </td>
            <td>2022.12.30</td>
          </tr>
        </tbody>
      </table>

      <div class="input-group justify-content-center mt-5">
        <div class="">
          <input
            class="form-control"
            type="text"
            name=""
            id=""
            placeholder="검색어를 입력하세요."
            style="width: 100%"
          />
        </div>
        <div class="ms-1">
          <button class="btn btn-danger center">검색</button>
        </div>
      </div>

      <div class="pagination pagination-sm justify-content-center mt-5">
        <a class="page-item page-link" href="">Pre</a>
        <a class="page-item page-link" href="">1</a>
        <a class="page-item page-link" href="">2</a>
        <a class="page-item page-link" href="">3</a>
        <a class="page-item page-link" href="">4</a>
        <a class="page-item page-link" href="">Next</a>
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
