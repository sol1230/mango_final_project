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

    <%-- 본 페이지 --%>
    <div class="container">
      <div class="fs-3 text-center mt-5 fw-bold">공지사항</div>
      <div class="mt-5 fw-bold fs-4">배송 불가 안내</div>
      <div class="text-end text-muted">2023.01.06</div>
      <hr />
      <div>
        <div>안녕하세요. 와인타임입니다.</div>
        <div>02/03~02/15 까지 서울창고 이전으로</div>
        <div>해당일자 배송일 선택이 중지됩니다.</div>
        <div>이용에 참고 부탁드리며,</div>
        <div>
          고객님의 편리한 쇼핑을 위해 더욱 노력하는 와인타임이 되겠습니다.
        </div>
        <div>감사합니다.</div>
        <div>와인타임 드림</div>
      </div>
      <div class="text-center mb-5">
        <a href="/notice_N_qna/notice" class="btn btn-danger mt-5">목록으로</a>
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
