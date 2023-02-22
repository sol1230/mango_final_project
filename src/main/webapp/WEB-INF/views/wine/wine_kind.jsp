<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wine</title>
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
    <link rel="stylesheet" href="/css/wine.css" />

  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container mb-5">
      <nav class="navbar navbar-light">
        <div
          class="row d-flex justify-content-between"
          style="margin-left: 45%"
        >
          <div class="col fs-3 mt-5 fw-bold">소고기</div>
          <div class="col input-group mt-5">
            <div class="container-fluid dropdown nav-item">
              <div class="ps-2">
                <button
                  class="navbar-toggler collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#navbarFilter2"
                  aria-controls="navbarFilter"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                >
                  <span class=""
                    ><img
                      src="https://cdn-icons-png.flaticon.com/512/3839/3839020.png"
                      alt="filter"
                      width="30"
                  /></span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </nav>

    <%-- detail select --%>
    <%@ include file="../etc/details_select.jsp" %>

      <hr />
      <div class="mt-5">
        <div class="mb-5">
          <span>총 21개 상품</span>
          <span class="float-end">
            <select
              class="form-select"
              name="select"
              id=""
              style="color: #e06767"
            >
              <option value="0">선택하기</option>
              <a href="#"><option value="1">최신순</option></a>
              <a href="#"><option value="2">낮은 가격순</option></a>
              <a href="#"><option value="3">높은 가격순</option></a>
              <a href="#"><option value="4">인기순</option></a>
            </select>
          </span>
        </div>
        <ul class="row mb-5">
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/italia_SAN FILIPPO BRUNELLO DI MONTALCINO LE LUCERE.png"
                      alt="wine1"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="box mt-2 prd_name fw-bold">
                      산 필리포 브루넬로 디 몬탈치노 레 루체레
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    San Filippo Brunello Di Montalcino Le Lucere
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드와인</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >이탈리아</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">199,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/italia_SAN FILIPPO BRUNELLO DI MONTALCINO.png"
                      alt="wine1"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="box mt-2 prd_name fw-bold">
                      산 필리포 브루넬로 디 몬탈치노
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    San Filippo Brunello Di Montalcino
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >이탈리아</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">149,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/etc_BODEGA GARZON 'BALASTO'.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">보데가 가르손 발라스토</p>
                  </a>
                  <p style="font-size: small">Bodega Garzon 'Balasto'</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드와인</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >기타</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">200,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/argentina_SUSANA BALBO BRIOSO.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">수사나 발보 브리오소</p>
                  </a>
                  <p style="font-size: small">Susana Balbo Brioso</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >아르헨티나</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">120,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/usa_SET)THE FEDERALIST ZINFANDEL.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="box mt-2 prd_name fw-bold mt-1">
                      SRT)페데럴리스트 진판델 원통 패키지
                    </p>
                  </a>
                  <p style="font-size: small">SET)The Federalist Zinfandel</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >미국</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">50,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/usa_REALM THE BARD.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">뤠암 더 바드</p>
                  </a>
                  <p style="font-size: small">Realm The Bard</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >미국</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">320,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/usa_SET)THE FEDERALIST ZINFANDEL.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="box mt-2 prd_name fw-bold mt-1">
                      SRT)페데럴리스트 진판델 원통 패키지
                    </p>
                  </a>
                  <p style="font-size: small">SET)The Federalist Zinfandel</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >미국</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">50,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/usa_REALM THE BARD.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">뤠암 더 바드</p>
                  </a>
                  <p style="font-size: small">Realm The Bard</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >미국</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">320,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
      <div class="pagination pagination-sm justify-content-center mt-5">
        <a class="page-item page-link" href="">이전</a>
        <a class="page-item page-link" href="">1</a>
        <a class="page-item page-link" href="">2</a>
        <a class="page-item page-link" href="">3</a>
        <a class="page-item page-link" href="">4</a>
        <a class="page-item page-link" href="">다음</a>
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
