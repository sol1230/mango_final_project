<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wishlist</title>
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
    <link rel="stylesheet" href="/css/info_area.css" />
  </head>

  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->

    <div class="row g-0 vh-auto">
    <%-- user_nav --%>
    <%@ include file="../etc/user_nav.jsp" %>
    <main class="col-9 p-0 mb-5 ms-5">
      <div class="container">
        <div class="text-center fs-3 fw-bold mt-5">위시리스트</div>
        <div class="mt-2 text-end">
          <button class="btn btn-danger">선택 삭제</button>
          <button class="btn btn-danger">전체 삭제</button>
        </div>
      </div>
      <div class="mt-2 d-flex justify-content-center">
        <div class="row p-3">
          <div class="col-3 flex-fill d-flex">
            <div class="card" style="width: 230px">
              <img src="../img/디아블로 카베르네 소비뇽 할로윈.PNG" alt="" />
              <div class="card-body">
                <h5 class="card-title">
                  디아블로 카베르네 소비뇽 할로윈
                  <input type="checkbox" name="" id="" />
                </h5>
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(224, 216, 234)"
                  >레드</span
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(224, 216, 234)"
                  >칠레</span
                >
                <br />
                <a href="#" class="btn btn-outline-danger mt-3">더보기</a>
              </div>
            </div>
          </div>

          <div class="col-3 flex-fill d-flex">
            <div class="card" style="width: 230px">
              <img
                src="../img/쥬세페 베르디 람브루스코 미디엄 드라이.PNG"
                alt=""
              />
              <div class="card-body">
                <h5 class="card-title">
                  쥬세페 베르디 람브루스코 미디엄 드라이
                  <input type="checkbox" name="" id="" />
                </h5>
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(224, 235, 248)"
                  >스파클링</span
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(224, 235, 248)"
                  >이탈리아</span
                >
                <br />
                <a href="#" class="btn btn-outline-danger mt-3">더보기</a>
              </div>
            </div>
          </div>

          <div class="col-3 flex-fill d-flex">
            <div class="card" style="width: 230px">
              <img src="../img/닥터 린드만 포피리 블랑.PNG" alt="" />
              <div class="card-body">
                <h5 class="card-title">
                  닥터 린드만 포피리 블랑 <input type="checkbox" name="" id="" />
                </h5>
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(246, 236, 156)"
                  >화이트</span
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(246, 236, 156)"
                  >호주</span
                >
                <br />
                <a href="#" class="btn btn-outline-danger mt-3">더보기</a>
              </div>
            </div>
          </div>

          <div class="col-3 flex-fill d-flex">
            <div class="card" style="width: 230px">
              <img src="../img/텐션 샤르도네.PNG" alt="" />
              <div class="card-body">
                <h5 class="card-title">
                  텐센 샤르도네 <input type="checkbox" name="" id="" />
                </h5>

                <span
                  class="badge badge-pill"
                  style="background-color: rgb(246, 236, 156)"
                  >화이트</span
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(246, 236, 156)"
                  >미국</span
                >
                <br />
                <a href="#" class="btn btn-outline-danger mt-3">더보기</a>
              </div>
            </div>
          </div>
        </div>
       </div>
      </main>
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
