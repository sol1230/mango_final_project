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
          <div class="col fs-3 mt-5 fw-bold">스파클링</div>
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
      <%-- 상품 --%>
      <div class="mt-5">
        <div class="mb-5">
          <span>총 20개 상품</span>
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
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_CECI GIUSEPPE VERDI LAMBRUSCO MEDIUM DRY.png"
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
                      쥬세페 베르디 람브루스코 미디엄 드라이
                    </p>
                  </a>
                  <p style="font-size: small">
                    CECI GIUSEPPE VERDI LAMBRUSCO MEDIUM DRY
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >이탈리아</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">13,900&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_CECI GIUSEPPE VERDI MALVASIA FRIZZANTE DOLCE.png"
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
                      쥬세페 베르디 말바시아 프리잔테 돌체
                    </p>
                  </a>
                  <p style="font-size: small">
                    CECI GIUSEPPE VERDI MALVASIA FRIZZANTE DOLCE
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >이탈리아</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">13,900&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_SIMONNET FEBVRE CREMANT DE BOURGOGNE BRUT.png"
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
                      시모네 페브르 크레망 드 부르고뉴 브뤼
                    </p>
                  </a>
                  <p style="font-size: small">
                    SIMONNET FEBVRE CREMANT DE BOURGOGNE BRUT
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >프랑스</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">36,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_DIABLO DEVIL`S BRUT_New Label.png"
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
                      디아블로 데블스 브뤼_New Label
                    </p>
                  </a>
                  <p style="font-size: small">DIABLO DEVIL`S BRUT_New Label</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >칠레</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">38,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_EMPIRICA EBULLIENT SPARKLING.png"
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
                      엠피리카 이불리언트 스파클링
                    </p>
                  </a>
                  <p style="font-size: small">EMPIRICA EBULLIENT SPARKLING</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >호주</span
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
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_WHALEBONE BAY SAUVIGNON BLANC SPARKLING.png"
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
                      웨일본 베이 소비뇽블랑 스파클링
                    </p>
                  </a>
                  <p style="font-size: small">
                    WHALEBONE BAY SAUVIGNON BLANC SPARKLING
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >뉴질랜드</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">49,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_ARRAS GRAND VINTAGE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">아라스 그랑 빈티지</p>
                  </a>
                  <p style="font-size: small">ARRAS GRAND VINTAGE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >호주</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">99,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_RICCITELLI KUNG FU PETNAT.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">리치텔리 쿵푸 펫낫</p>
                  </a>
                  <p style="font-size: small">RICCITELLI KUNG FU PETNAT</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >아르헨티나</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">39,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_J VINEYARD SPARKLING CALIFORNIA.png"
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
                      J 빈야드 스파클링 캘리포니아
                    </p>
                  </a>
                  <p style="font-size: small">
                    J VINEYARD SPARKLING CALIFORNIA
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >미국</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">59,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_J VINEYARD SPARKLING CUVEE 20.png"
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
                      J 빈야드 스파클링 뀌베 20
                    </p>
                  </a>
                  <p style="font-size: small">J VINEYARD SPARKLING CUVEE 20</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >미국</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">89,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_ARRAS E.J.CARR LATE DISGOARGED.png"
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
                      아라스 이제이 카 레이트 디스고르쥬
                    </p>
                  </a>
                  <p style="font-size: small">ARRAS E.J.CARR LATE DISGOARGED</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >호주</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">229,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_AGUSTI TORELLO MATA GRAN RESERVA BARRICA 2015.png"
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
                      토렐로 마타 그란 레세르바 바리까
                    </p>
                  </a>
                  <p style="font-size: small">
                    AGUSTI TORELLO MATA GRAN RESERVA BARRICA 2015
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스페인</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">65,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_LINDEMAN'S BIN 25 SPARKLING CUVEE.png"
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
                      닥터 린드만 빈25 스파클링 뀌베
                    </p>
                  </a>
                  <p style="font-size: small">
                    LINDEMAN'S BIN 25 SPARKLING CUVEE
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >호주</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">14,900&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_ALPHA BOX AND DICE TAROT PROSECCO.png"
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
                      알파박스 앤 다이스 타로 프로세코
                    </p>
                  </a>
                  <p style="font-size: small">
                    ALPHA BOX AND DICE TAROT PROSECCO
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >호주</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">25,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_ARRAS BRUT ELITE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">아라스 브뤼 엘리트</p>
                  </a>
                  <p style="font-size: small">ARRAS BRUT ELITE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >호주</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">62,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_ARRAS BLANC DE BLANC NV.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">아라스 블랑 드 블랑 NV</p>
                  </a>
                  <p style="font-size: small">ARRAS BLANC DE BLANC NV</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >호주</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">52,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_PAUL DANGIN CUVEE CARTE NOIRE.png"
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
                      폴 당장 뀌베 카르트 누와
                    </p>
                  </a>
                  <p style="font-size: small">PAUL DANGIN CUVEE CARTE NOIRE</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >프랑스</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">63,700&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_PAUL DANGIN CUVEE CARTE BLANCHE.png"
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
                      폴 당장 뀌베 카르트 블랑쉬
                    </p>
                  </a>
                  <p style="font-size: small">
                    PAUL DANGIN CUVEE CARTE BLANCHE
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >프랑스</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">63,700&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_SANTERO PROSECCO EXTRA DRY.png"
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
                      산테로 프로세코 엑스트라 드라이
                    </p>
                  </a>
                  <p style="font-size: small">SANTERO PROSECCO EXTRA DRY</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >이탈리아</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">22,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #d7f6f8; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/sparkling_ALPACA BRUT.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">알파카 브뤼</p>
                  </a>
                  <p style="font-size: small">ALPACA BRUT</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >스파클링</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #85d9e4"
                    >칠레</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">17,500&#8361;</p>
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
