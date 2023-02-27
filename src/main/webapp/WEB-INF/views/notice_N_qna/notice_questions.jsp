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
      <div class="list-group mt-5">
        <a class="list-group-item" href="#answer01" data-bs-toggle="collapse"
          >Q . 와인의 바디감과 타닌은 무슨 뜻인가요?</a
        >
        <div class="collapse" id="answer01">
          <div class="card card-body">
            A . 바디감은 와인의 무게감을 나타내는 말입니다. 품종이나 재배 환경에 따라 달라질 수 있는데,
            입 안에서 느껴지는 무게감의 정도에 따라 가볍거나 무겁다고 표현할 수 있습니다.
            <br />
            와인에서 떫은 맛이 느껴지는 것이 타닌입니다. 타닌 성분은 포도껍질과 씨에 많이 함유되어
            있으며 산화를 막는 천연 방부제 역할을 하면서 숙성을 돕기도 합니다.
          </div>
        </div>
        <a class="list-group-item" href="#answer02" data-bs-toggle="collapse"
          >Q . 비밀번호 변경은 어떻게 하나요?</a
        >
        <div class="collapse" id="answer02">
          <div class="card card-body">
            A . 로그인 후 마이페이지에 접속하셔서 회원 정보 수정 버튼을 클릭하시어 비밀번호 변경을 해주시면 됩니다.
          </div>
        </div>
        <a class="list-group-item" href="#answer03" data-bs-toggle="collapse"
          >Q . 위시리스트는 어떻게 이용하나요?</a
        >
        <div class="collapse" id="answer03">
          <div class="card card-body">
            A . 와인 상세페이지에서 와인 이름 우측에 하트 모양 아이콘을 클릭하시면 해당 상품이 위시리스트로 저장됩니다.
            위시리스트는 홈페이지 우상단 하트 모양의 아이콘 클릭하시면 보실 수 있으며 마이페이지에서도 확인이 가능합니다.
          </div>
        </div>
        <a class="list-group-item" href="#answer04" data-bs-toggle="collapse"
          >Q . 이벤트 참가는 어떻게 하나요?</a
        >
        <div class="collapse" id="answer04">
          <div class="card card-body">
            A . 원하시는 이벤트 상세 내용 확인하시어 이미지 클릭하여 이벤트 주최 사이트를 방문해주시고 해당 이벤트 진행 일정에 맞게 참여해주시면 됩니다.
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
