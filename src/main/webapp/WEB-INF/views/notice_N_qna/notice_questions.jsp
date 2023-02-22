<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FAQ</title>
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
      <div class="fs-3 text-center mt-5 fw-bold">자주하는 질문</div>
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
      <div class="list-group mt-5">
        <a class="list-group-item" href="#answer01" data-bs-toggle="collapse"
          >Q . 택배 발송 가능한가요?</a
        >
        <div class="collapse" id="answer01">
          <div class="card card-body">
            A . 와인나라 직영점, 서울 6개점에서 수령이 가능합니다
          </div>
        </div>
        <a class="list-group-item" href="#answer02" data-bs-toggle="collapse"
          >Q . 수령 일자 변경은 어떻게 하나요?</a
        >
        <div class="collapse" id="answer02">
          <div class="card card-body">
            A . 지정하신 수령점으로 전화 하셔서 변경이 가능합니다
          </div>
        </div>
        <a class="list-group-item" href="#answer03" data-bs-toggle="collapse"
          >Q . 주문자가 직접 가지 못하여, 대리인이 가서 수령하려고 합니다</a
        >
        <div class="collapse" id="answer03">
          <div class="card card-body">
            A . 기본적으로 주문하신 고객님 본인께서 매장에 방문해주셔야 합니다.
            예외적인 경우애는 수령점으로 전화 주시기 바랍니다
          </div>
        </div>
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
