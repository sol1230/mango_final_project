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
          <div class="col fs-3 mt-5 fw-bold">스페인</div>
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
          <span>총 22개 상품</span>
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
                      src="../img/wine/spain_cune_rioja_organic_red.png"
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
                      쿠네 리오하 오가닉 레드
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Cune Rioja Organic Red
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_cune_verdejo.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">쿠네 베르데호</p>
                  </a>
                  <p style="font-size: small">Cune Ruerda Verdejo</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >스페인</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">17,700&#8361;</p>
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
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_don_luciano_brut.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">돈 루치아노 브뤼</p>
                  </a>
                  <p style="font-size: small">Don Luciano Brut</p>
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
                  <p class="price">7,500&#8361;</p>
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
                      src="../img/wine/spain_don_luciano_moscato.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">돈 루치아노 모스카토</p>
                  </a>
                  <p style="font-size: small">Don Luciano Moscato</p>
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
                  <p class="price">7,500&#8361;</p>
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
                      src="../img/wine/spain_glorioso_rioja_crianza.png"
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
                      글로리오소 리오하 크리안사
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Glorioso Rioja Crianza
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
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
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_glorioso_rioja_gran_reserva.png"
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
                      글로리오소 리오하 그란 레세르바
                    </p>
                  </a>
                  <p style="font-size: small">Glorioso Rioja Gran Reserva</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">60,000&#8361;</p>
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
                      src="../img/wine/spain_imperial_rioja_gran_reserva.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">
                      임페리얼 리오하 그란 레세르바
                    </p>
                  </a>
                  <p style="font-size: small">Imperial Rioja Gran Reserva</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">157,000&#8361;</p>
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
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_izadi_crianza.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">이자디 크리안사</p>
                  </a>
                  <p style="font-size: small">Izadi Crianza</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">41,000&#8361;</p>
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
                      src="../img/wine/spain_protos_gran_reserva.png"
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
                      프로토스 그란 레세르바
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Protos Gran Reserva
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
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
                      src="../img/wine/spain_protos_reserva.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">프로토스 레세르바</p>
                  </a>
                  <p style="font-size: small">Protos Reserva</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">75,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_protos_verdejo.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">프로토스 베르데호</p>
                  </a>
                  <p style="font-size: small">Protos Verdejo</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >스페인</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">20,000&#8361;</p>
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
                      src="../img/wine/spain_torello_mata_gran.png"
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
                    Agusti Torello Mata Gran Reserva Barrica 2015
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
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_urbano.png"
                      alt="wine1"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="box mt-2 prd_name fw-bold">우르바노</p>
                  </a>
                  <p class="box" style="font-size: small">Urbano</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">5,900&#8361;</p>
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
                      src="../img/wine/spain_vina_zorzal_graciano.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">비냐 조잘 그라시아노</p>
                  </a>
                  <p style="font-size: small">Vina Zorzal Graciano</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">19,000&#8361;</p>
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
                      src="../img/wine/spain_cune_rioja_crianza.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">
                      쿠네 리오하 크리안사
                    </p>
                  </a>
                  <p style="font-size: small">Cune Rioja Crianza</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
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
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_cune_rioja_granreserva.png"
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
                      쿠네 리오하 그란 레세르바
                    </p>
                  </a>
                  <p style="font-size: small">Cune Rioja Gran Reserva</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
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
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_cune_rioja_reserva.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">쿠네 리오하 레세르바</p>
                  </a>
                  <p style="font-size: small">Cune Rioja Reserva</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">32,000&#8361;</p>
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
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_glorioso_rioja_reserva.png"
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
                      글로리오소 리오하 레세르바
                    </p>
                  </a>
                  <p style="font-size: small">Glorioso Rioja Reserva</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
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
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_vina_zorzal_tempranillo.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">비냐 조잘 템프라니요</p>
                  </a>
                  <p style="font-size: small">Vina Zorzal Tempranillo</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">15,000&#8361;</p>
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
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_finca_villacreces.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">핀카 비야크레세스</p>
                  </a>
                  <p style="font-size: small">Finca Villacreces</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">90,000&#8361;</p>
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
                <a
                  href="#"
                  class="text-decoration-none text-black"
                >
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_protos_27.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">프로토스 27</p>
                  </a>
                  <p style="font-size: small">Protos 27</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >스페인</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">60,000&#8361;</p>
                </div>
              </div>
            </div>
          </li>
          <li class="col" style="list-style: none">
            <div
              class="item"
              style="text-align: center; width: 230px; margin-right: 36rem"
            >
              <div
                class=""
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/spain_FILLABOA_FINCA_MONTE_ALTO.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">
                      필라보아 몬테 알토 알바리뇨
                    </p>
                  </a>
                  <p style="font-size: small">FillaBoa Finca Monte Alto</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >스페인</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">64,000&#8361;</p>
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
