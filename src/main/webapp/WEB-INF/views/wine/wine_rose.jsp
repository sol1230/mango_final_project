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
          <div class="col fs-3 mt-5 fw-bold">로제</div>
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
          <span>총 12개 상품</span>
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
        <ul class="row">
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_MAISON NUMBER NINE ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">메종 넘버나인 로제</p>
                  </a>
                  <p style="font-size: small">MAISON NUMBER NINE ROSE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">69,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_WHALEBONE BAY SAUVIGNON ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">웨일본 베이 소비뇽 로제</p>
                  </a>
                  <p style="font-size: small">WHALEBONE BAY SAUVIGNON ROSE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >뉴질랜드</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">45,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_LA CHAPELLE GORDONNE ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">라 샤펠 고르돈느 로제</p>
                  </a>
                  <p style="font-size: small">LA CHAPELLE GORDONNE ROSE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">55,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_M ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">엠 로제</p>
                  </a>
                  <p style="font-size: small">M ROSE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >이탈리아</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">12,900&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_INVIVO X SJP ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">
                      인비보 X 사라 제시카 파커 로제
                    </p>
                  </a>
                  <p style="font-size: small">INVIVO X SJP ROSE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">27,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_CHATEAU ROUBINE LION & DRAGON PROVENCE ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">
                      샤또 루빈 라이온 앤 드래곤 프로방스 로제
                    </p>
                  </a>
                  <p style="font-size: small">
                    CHATEAU ROUBINE LION & DRAGON PROVENCE ROSE
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">45,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_TRADICAO ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">트라디카오 로제</p>
                  </a>
                  <p style="font-size: small">TRADICAO ROSE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >포르투갈</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">12,900&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_DIORA ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">디오라 로제</p>
                  </a>
                  <p style="font-size: small">DIORA ROSE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >미국</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">37,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_BLACK TOWER PINK BUBBLY SPARKKLING.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">
                      블랙타워 스파클링 핑크 버블리
                    </p>
                  </a>
                  <p style="font-size: small">
                    BLACK TOWER PINK BUBBLY SPARKKLING
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >독일</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">19,900&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_A TO Z OREGON BUBBLES ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">
                      에이 투 지 오레곤 버블스 로제
                    </p>
                  </a>
                  <p style="font-size: small">A TO Z OREGON BUBBLES ROSE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >미국</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">35,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_LA MASCOTA SPARKLING ROSE EXTRA BRUT.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">
                      라 마스코타 스파클링 로제 엑스트라 브뤼
                    </p>
                  </a>
                  <p style="font-size: small">
                    LA MASCOTA SPARKLING ROSE EXTRA BRUT
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >아르헨티나</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">27,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/rose_LUC BELAIRE ROSE RARE BOUTEILLE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">룩벨레어 로제 팬텀</p>
                  </a>
                  <p style="font-size: small">
                    LUC BELAIRE ROSE RARE BOUTEILLE
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >로제</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">62,000&#8361;</p>
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
