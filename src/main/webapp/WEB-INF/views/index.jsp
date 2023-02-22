<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Index</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/font.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <link rel="stylesheet" href="/css/index.css" />

  </head>
  <body>
    <%-- header --%>
    <%@ include file="etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container pt-5 mb-5">
      <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button
            data-bs-target="#myCarousel"
            data-bs-slide-to="0"
            class="active"
          ></button>
          <button data-bs-target="#myCarousel" data-bs-slide-to="1"></button>
          <button data-bs-target="#myCarousel" data-bs-slide-to="2"></button>
        </div>
        <!-- carousel inner -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <a href="/wine/wine_info">
              <img
                class="w-100"
                src="../img/메인_와인_엘카버네쇼비뇽.png"
                alt=""
              />
            </a>
          </div>
          <div class="carousel-item">
            <a href="/wine/wine_info">
              <img
                class="w-100"
                src="../img/메인_와인_반피티아라모스카토.png"
                alt=""
              />
            </a>
          </div>
          <div class="carousel-item">
            <a href="/wine/wine_info">
              <img
                class="w-100"
                src="../img/메인_와인_베린저스파클링화이트진판델.png"
                alt="New York"
              />
            </a>
          </div>
        </div>
        <button
          class="carousel-control-prev"
          data-bs-target="#myCarousel"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button
          class="carousel-control-next"
          data-bs-target="#myCarousel"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>

      <div class="mt-5 text-center" style="font-weight: bold; font-size: large">
        베스트 와인
      </div>
      <div class="mt-3 d-flex">
        <div class="card me-4">
          <img src="../img/디아블로 카베르네 소비뇽 할로윈.PNG" alt="" />
          <div class="card-body border-0">
            <h5 class="card-title">디아블로 카베르네 소비뇽 할로윈</h5>
            <p style="font-size: small">
              Diablo Cabernet Sauvignon Halloween Limited Edition
            </p>
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
            <span
              class="badge badge-pill"
              style="background-color: rgb(224, 216, 234)"
              >카베르네 소비뇽</span
            >
            <div>
              <a href="#" class="btn btn-outline-danger mt-3">더보기</a>
            </div>
          </div>
        </div>

        <div class="card me-4">
          <img src="../img/쥬세페 베르디 람브루스코 미디엄 드라이.PNG" alt="" />
          <div class="card-body">
            <h5 class="card-title">쥬세페 베르디 람브루스코 미디엄 드라이</h5>
            <p style="font-size: small">
              Ceci Giuseppe Verdi Lambrusco Medium Dry
            </p>
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
            <div>
              <a href="#" class="btn btn-outline-danger mt-3">더보기</a>
            </div>
          </div>
        </div>

        <div class="card me-4">
          <img src="../img/닥터 린드만 포피리 블랑.PNG" alt="" />
          <div class="card-body">
            <h5 class="card-title">닥터 린드만 포피리 블랑</h5>
            <p style="font-size: small">Lindman's Porphyry Blanc</p>
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
            <div>
              <a href="#" class="btn btn-outline-danger mt-3">더보기</a>
            </div>
          </div>
        </div>

        <div class="card">
          <img src="../img/텐션 샤르도네.PNG" alt="" />
          <div class="card-body">
            <h5 class="card-title">텐센 샤르도네</h5>
            <p style="font-size: small">Tenshen Chardonnay</p>
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
            <span
              class="badge badge-pill"
              style="background-color: rgb(246, 236, 156)"
              >샤르도네</span
            >
            <div>
              <a href="#" class="btn btn-outline-danger mt-3">더보기</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <%-- footer --%>
    <%@ include file="etc/footer.jsp" %>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
