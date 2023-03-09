<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>WINE TIME</title>
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

      <%-- 본 페이지 content  --%>
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
       <%-- carousel inner  --%>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <a href="/wine/wine_info/MARTIN%20RAY%20SOMONA%20NAPA%20COUNTY%20CABERNET%20SAUVIGNON/1">
              <img
                class="w-100"
                src="../img/메인_와인_마틴레이소노마나파카운티카베르네소비뇽.png"
                alt=""
              />
            </a>
          </div>
          <div class="carousel-item">
            <a href="/wine/wine_info/VENICA%20TRE%20VIGNIS/1">
              <img
                class="w-100"
                src="../img/메인_와인_베니카-트레-비니스.png"
                alt=""
              />
            </a>
          </div>
          <div class="carousel-item ">
            <a href="/wine/wine_info/LA%20CHAPELLE%20GORDONNE%20ROSE/1">
              <img
                class="w-100"
                src="../img/메인_와인_라샤펠고르돈느로제.png"
                alt=""
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

      <div class="mt-5 text-center" style="font-weight: bold; font-size: x-large">
        베스트 와인
      </div>
      <div class="mt-3 d-flex">
        <c:forEach items="${resultMap}" var="resultMapData" varStatus="loop">
          <c:choose>
            <c:when test="${(resultMapData.WINE_TYPE).equals('레드')}">
              <div class="card me-4">
                <a href="/wine/wine_info/${resultMapData.WINE_NAME_EN}/1" class="text-decoration-none text-black">
                  <img src="/img/wine/${resultMapData.WINE_NAME_EN}.png" alt="${resultMapData.WINE_NAME_EN}.png" class="w-100 p-2" style="background-color: #e8daea" />
                  <div class="card-body border-0">
                    <h5 class="card-title box">${resultMapData.WINE_NAME}</h5>
                    <p class="box" style="font-size: small">
                      ${resultMapData.WINE_NAME_EN}
                    </p>
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #dc0000"
                      >${resultMapData.WINE_TYPE}와인</span
                    >
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #dc0000"
                      >${resultMapData.WINE_COUNTRY}</span
                    >
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #dc0000"
                      >${resultMapData.WINE_VARIETY}</span
                    >
                      <div class="price_area mt-3">
                        <p class="price">${resultMapData.WINE_PRICE}&#8361;</p>
                      </div>
                  </div>
                </a>
              </div>
            </c:when>
            <c:when test="${(resultMapData.WINE_TYPE).equals('화이트')}">
              <div class="card me-4">
                <a href="/wine/wine_info/${resultMapData.WINE_NAME_EN}/1" class="text-decoration-none text-black">
                  <img src="/img/wine/${resultMapData.WINE_NAME_EN}.png" alt="${resultMapData.WINE_NAME_EN}.png" class="w-100 p-2" style="background-color: #fffbb0" />
                  <div class="card-body border-0">
                    <h5 class="card-title box">${resultMapData.WINE_NAME}</h5>
                    <p class="box" style="font-size: small">
                      ${resultMapData.WINE_NAME_EN}
                    </p>
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #ffd500"
                      >${resultMapData.WINE_TYPE}와인</span
                    >
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #ffd500"
                      >${resultMapData.WINE_COUNTRY}</span
                    >
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #ffd500"
                      >${resultMapData.WINE_VARIETY}</span
                    >
                      <div class="price_area mt-3">
                        <p class="price">${resultMapData.WINE_PRICE}&#8361;</p>
                      </div>
                  </div>
                </a>
              </div>
            </c:when>
            <c:when test="${(resultMapData.WINE_TYPE).equals('로제')}">
              <div class="card me-4">
                <a href="/wine/wine_info/${resultMapData.WINE_NAME_EN}/1" class="text-decoration-none text-black">
                  <img src="/img/wine/${resultMapData.WINE_NAME_EN}.png" alt="${resultMapData.WINE_NAME_EN}.png" class="w-100 p-2" style="background-color: #ffe2e2" />
                  <div class="card-body border-0">
                    <h5 class="card-title box">${resultMapData.WINE_NAME}</h5>
                    <p class="box" style="font-size: small">
                      ${resultMapData.WINE_NAME_EN}
                    </p>
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #fe999f"
                      >${resultMapData.WINE_TYPE}와인</span
                    >
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #fe999f"
                      >${resultMapData.WINE_COUNTRY}</span
                    >
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #fe999f"
                      >${resultMapData.WINE_VARIETY}</span
                    >
                    <div class="price_area mt-3">
                      <p class="price">${resultMapData.WINE_PRICE}&#8361;</p>
                    </div>
                  </div>
                </a>
              </div>
            </c:when>
            <c:otherwise>
              <div class="card me-4">
                <a href="/wine/wine_info/${resultMapData.WINE_NAME_EN}/1" class="text-decoration-none text-black">
                  <img src="/img/wine/${resultMapData.WINE_NAME_EN}.png" alt="${resultMapData.WINE_NAME_EN}.png" class="w-100 p-2" style="background-color: #d7f6f8" />
                  <div class="card-body border-0">
                    <h5 class="card-title box">${resultMapData.WINE_NAME}</h5>
                    <p class="box" style="font-size: small">
                      ${resultMapData.WINE_NAME_EN}
                    </p>
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #85d9e4"
                      >${resultMapData.WINE_TYPE}와인</span
                    >
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #85d9e4"
                      >${resultMapData.WINE_COUNTRY}</span
                    >
                    <span
                      class="badge badge-pill text-white"
                      style="background-color: #85d9e4"
                      >${resultMapData.WINE_VARIETY}</span
                    >
                    <div class="price_area mt-3">
                      <p class="price">${resultMapData.WINE_PRICE}&#8361;</p>
                    </div>
                  </div>
                </a>
              </div>
            </c:otherwise>
          </c:choose>
        </c:forEach>
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
