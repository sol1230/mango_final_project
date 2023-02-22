<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    
    <!-- 본 페이지 -->
    <div class="container mb-5">
      <div class="fs-3 fw-bold text-center mt-5">이벤트</div>
      <div class="d-flex justify-content-between mt-4">
        <div>전체 이벤트</div>
        <div>
          <select class="custom-select" id="inputGroupSelect01">
            <option selected>전체 이벤트</option>
            <option value="1">진행중인 이벤트</option>
            <option value="2">종료된 이벤트</option>
          </select>
        </div>
      </div>
      <hr />
      <table class="table">
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div>
                <img src="../img/event01.PNG" alt="" style="width: 250px" />
              </div>
              <div class="ms-3">
                <a
                  href="/event/event_content01"
                  class="text-decoration-none"
                  style="color: black"
                  >2월 이달의 와인</a
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(220, 53, 69)"
                  >진행중</span
                >
                <div class="mt-2">2023.02.01 ~ 2023.02.28</div>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div>
                <img src="../img/event02.PNG" alt="" style="width: 250px" />
              </div>
              <div class="ms-3">
                <a
                  href="/event/event_content02"
                  class="text-decoration-none"
                  style="color: black"
                  >뚜아 리따 디너</a
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(220, 53, 69)"
                  >진행중</span
                >
                <div class="mt-2">2023.01.11 ~ 2023.02.12</div>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div>
                <img src="../img/event03.PNG" alt="" style="width: 250px" />
              </div>
              <div class="ms-3">
                <a
                  href="/event/event_content03"
                  class="text-decoration-none"
                  style="color: black"
                  >클림트 키스 트릴로지 세트</a
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(220, 53, 69)"
                  >진행중</span
                >
                <div class="mt-2">2023.02.01 ~ 2023.02.15</div>
              </div>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div class="d-flex align-items-center">
              <div>
                <img src="../img/event04.PNG" alt="" style="width: 250px" />
              </div>
              <div class="ms-3">
                <a
                  href="/event/event_content04"
                  class="text-decoration-none"
                  style="color: black"
                  >설맞이 프로모션</a
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgba(37, 8, 11, 0.61)"
                  >종료</span
                >
                <div class="mt-2">2023.01.01 ~ 2023.01.24</div>
              </div>
            </div>
          </td>
        </tr>
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
