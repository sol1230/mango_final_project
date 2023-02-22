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
          <div class="col fs-3 mt-5 fw-bold">프랑스</div>
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
      <div class="mt-5 ">
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
                      src="../img/wine/france_masion_number_9.png"
                      alt="wine1"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="box mt-2 prd_name fw-bold">메종 넘버나인 로제</p>
                  </a>
                  <p class="box" style="font-size: small">
                    Masion Number Nine Rose
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
                  <p class="price">69,000&#8361;</p>
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
                      src="../img/wine/france_DOMAINE_MICHELOT MEURSAULT GRANDS CHARRONS.png"
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
                      도멘 미쉘롯 뫼르소 그랑 샤롱
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Domaine Mochelot Meursault Grands Charrons
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_DOMAINE MICHELOT MEURSAULT 1ER CHARMES.png"
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
                      도멘 미쉘롯 뫼르소 1ER 샤름
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Domaine Mochelot Meursault 1er Charmes
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">290,000&#8361;</p>
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
                      src="../img/wine/france_DOMAINE DIGIOIA ROYER SAVIGNY LES BEAUNE.png"
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
                      도멘 디지오아 로이예 싸비니 르 본
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Domaine Digioia Royer Savigny Les Beaune
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드와인</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >프랑스</span
                  >
                </div>
                <div class="price_area mt-3">
                  <p class="price">85,000&#8361;</p>
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
                      src="../img/wine/france_LA CHAPELLE GORDONNE ROSE.png"
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
                  <p style="font-size: small">La Chapelle Gordonne Rose</p>
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
                      src="../img/wine/france_NVIVO X SJP ROSE.png"
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
                  <p style="font-size: small">Invivo X SJP Rose</p>
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_DOMAINE ROLAND LAVANTUREUX CHABLIS 1ER VAU DE VEY.png"
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
                      도멘 롤랑 라방투레 샤블리 1ER 보드베
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Domaine Rolans Lavantureux Chablis 1er Vau De Vey
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">79,000&#8361;</p>
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
                      src="../img/wine/france_DOMAINE ROLAND LAVANTUREUX CHABLIS VAUPRIN.png"
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
                      도멘 롤랑 라방투레 샤블리 보프랑
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Domaine Rolans Lavantureux Chablis Vauprin
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">79,000&#8361;</p>
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
                      src="../img/wine/france_JEAN MARIE REVERDY POUILLY FUME.png"
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
                      장 마리 레베르디 푸이 퓌메
                    </p>
                  </a>
                  <p style="font-size: small">
                    Jean Maire Reverdy Pouilly Fume
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_ERIC LOUIS POUILLY FUME.png"
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
                      에릭 루이즈 푸이 퓌메
                    </p>
                  </a>
                  <p style="font-size: small">Eric Louis Pouilly Fume</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">42,000&#8361;</p>
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
                      src="../img/wine/france_DOMAINE DE LA VIEILLE JULIENNE COTES DU RHONE.png"
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
                      도멘 드 라 비에이유 줄리앙 꼬뜨 뒤 론 클라방 블랑
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Domaine De La Vieille Julienne Cotes Du Rhone
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
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
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_CHATEAU ROUBINE LION & DRAGON PROVENCE ROSE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="box mt-2 prd_name fw-bold">
                      샤또 루빈 라이온 앤 드래곤 프로방스 로제
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Chateau Roubine Lion & Dragon Provence Rose
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >스파클링</span
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
                style="background-color: #e8daea; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_LOUIS LATOUR GEVREY CHAMBERTIN.png"
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
                      루이라뚜르 제브리 샹베르땡
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Louis Latour Gevery Chambertin
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >레드</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #dc0000"
                    >프랑스</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_LOUIS LATOUR CHABLIS.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">루이라뚜르 샤블리</p>
                  </a>
                  <p style="font-size: small">Louis Latour Chablis</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_CLOS BELLANE COTES DU RHONE VILLAGES VALREAS BLANC.png"
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
                      끌로 벨란 꼬뜨 뒤 빌라쥐 발레아 블랑
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Clos Bellane Cotes Du Rhone Villages Valreas Blanc
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">42,000&#8361;</p>
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
                      src="../img/wine/france_CLOS BELLANE COTES DU RHONE VILLAGES VALREAS BLANC ECHALAS.png"
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
                      끌로 벨란 꼬뜨 뒤 빌라쥐 발레아 블랑 에찰라
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Clos Bellane Cotes Du Rhone Villages Valreas Blanc Echalas
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">79,000&#8361;</p>
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
                      src="../img/wine/france_VALLET FRERES PERNAND VERGELESS.png"
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
                      발레 프레레 페르낭 베르즐레
                    </p>
                  </a>
                  <p style="font-size: small">
                    Vallet Freres Pernand Vergeless
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">129,000&#8361;</p>
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
                      src="../img/wine/france_CHATEAU GUIBON WHITE.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">샤또 기봉 화이트</p>
                  </a>
                  <p style="font-size: small">Chateau Guibon White</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_TRIMBACH RIESLING FREDERIC EMILE.png"
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
                      트림바크 리슬링 프레데릭 에밀
                    </p>
                  </a>
                  <p style="font-size: small">
                    Trimbach Riesling Frederic Emile
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">140,000&#8361;</p>
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
                      src="../img/wine/france_TRIMBACH RIESLING SELECTION DE VIEILLES VIGNES.png"
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
                      트림바크 리슬링 셀렉시옹 드 비에이 비뉴
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    Trimbach Riesling Selection De Vieilles Vignes
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_D BERTAGNA BOURGOGNE BLANC LES CROIX BLANCHES.png"
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
                      도멘 베르타냐 부르고뉴 블랑 레 크로 블랑쉐
                    </p>
                  </a>
                  <p class="box" style="font-size: small">
                    D Bertagna Bourgogne Blanc Les Croix Blanches
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_LOUIS LATOUR MACON CHAMEROY.png"
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
                      루이라뚜르 마콩 샤므르와
                    </p>
                  </a>
                  <p style="font-size: small">Louis Latour Macon Chameroy</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/france_DOMAINE COUDOULET VIOGNIER.png"
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
                      도멘꾸들레 비오니에
                    </p>
                  </a>
                  <p style="font-size: small">Domaine Coudoulet Viognier</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >프랑스</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">22,000&#8361;</p>
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
