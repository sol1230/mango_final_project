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
          <div class="col fs-3 mt-5 fw-bold">화이트</div>
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_VENICA TRE VIGNIS.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">베니카 트레 비니스</p>
                  </a>
                  <p style="font-size: small">VENICA TRE VIGNIS</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >이탈리아</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_14Hands Sauvignon Blanc.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">14핸즈 소비뇽블랑</p>
                  </a>
                  <p style="font-size: small">14Hands Sauvignon Blanc</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >미국</span
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
                      src="../img/wine/white_14Hands Chardonnay.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">14핸즈 샤르도네</p>
                  </a>
                  <p style="font-size: small">14Hands Chardonnay</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >미국</span
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
                      src="../img/wine/white_SET)THE FEDERALIST CHARDONNAY.png"
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
                      SET)페데럴리스트 샤르도네 원통 패키지
                    </p>
                  </a>
                  <p style="font-size: small">SET)THE FEDERALIST CHARDONNAY</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_FATTORIA LE PUPILLE POGGIO ARGENTATO.png"
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
                      파토리아 르 푸필레 포지오 아르젠타토
                    </p>
                  </a>
                  <p style="font-size: small">
                    FATTORIA LE PUPILLE POGGIO ARGENTATO
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >이탈리아</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">40,000&#8361;</p>
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
                      src="../img/wine/white_DOMAINE MICHELOT MEURSAULT GRANDS CHARRONS.png"
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
                      도멘 미쉘롯 뫼르소 그랑 샤롱
                    </p>
                  </a>
                  <p style="font-size: small">
                    DOMAINE MICHELOT MEURSAULT GRANDS CHARRONS
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
                      src="../img/wine/white_DOMAINE MICHELOT MEURSAULT 1ER CHARMES.png"
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
                      도멘 미쉘롯 뫼르소 1ER 샤름
                    </p>
                  </a>
                  <p style="font-size: small">
                    DOMAINE MICHELOT MEURSAULT 1ER CHARMES
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_ANT MOORE SIGNATURE SERIES SAUVIGNON BLANC.png"
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
                      앤트 무어 시그니처 소비뇽 블랑
                    </p>
                  </a>
                  <p style="font-size: small">
                    ANT MOORE SIGNATURE SERIES SAUVIGNON BLANC
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >뉴질랜드</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_TE MATA ESTATE CHARDONNAY.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">아라스 그랑 빈티지</p>
                  </a>
                  <p style="font-size: small">TE MATA ESTATE CHARDONNAY</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >뉴질랜드</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">30,000&#8361;</p>
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
                      src="../img/wine/white_LINDEMAN'S PORPHYRY BLANC.png"
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
                      닥터 린드만 포피리 블랑
                    </p>
                  </a>
                  <p style="font-size: small">LINDEMAN'S PORPHYRY BLANC</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >호주</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_ANT MOORE ESTATE RANGE SAUVIGNON BLANC.png"
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
                      앤트 무어 에스테이트 소비뇽 블랑
                    </p>
                  </a>
                  <p style="font-size: small">
                    ANT MOORE ESTATE RANGE SAUVIGNON BLANC
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >뉴질랜드</span
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_EMPIRICA FIORE DEL CAMPO.png"
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
                      엠피리카 피오레 델 캄포
                    </p>
                  </a>
                  <p style="font-size: small">EMPIRICA FIORE DEL CAMPO</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_TYRRELL'S HVD OLD VINES CHARDONNAY.png"
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
                      티렐 HVD 올드 바인 샤르도네
                    </p>
                  </a>
                  <p style="font-size: small">
                    TYRRELL'S HVD OLD VINES CHARDONNAY
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >호주</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">130,000&#8361;</p>
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
                      src="../img/wine/white_MOUNT PLEASANT ELIZABETH SEMILLION.png"
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
                      마운트 플레젠트 엘리자베스 세미용
                    </p>
                  </a>
                  <p style="font-size: small">
                    MOUNT PLEASANT ELIZABETH SEMILLION
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >호주</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">29,000&#8361;</p>
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
                      src="../img/wine/white_CORYMBIA CHENIN BLANC.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">코림비아 슈냉 블랑</p>
                  </a>
                  <p style="font-size: small">CORYMBIA CHENIN BLANC</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >호주</span
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
                      src="../img/wine/white_TENSHEN CHARDONNAY.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">텐션 샤르도네</p>
                  </a>
                  <p style="font-size: small">TENSHEN CHARDONNAY</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_TENSHEN WHITE BLEND.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="#" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">텐션 화이트 블렌드</p>
                  </a>
                  <p style="font-size: small">TENSHEN WHITE BLEND</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_WHALEBONE BAY SAUVIGNON BLANC LIGHTER.png"
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
                      웨일본 베이 소비뇽블랑 라이터
                    </p>
                  </a>
                  <p style="font-size: small">
                    WHALEBONE BAY SAUVIGNON BLANC LIGHTER
                  </p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >뉴질랜드</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">31,900&#8361;</p>
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
                      src="../img/wine/white_BAY OF FIRES CHARDONNAY.png"
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
                      베이 오브 파이어 샤르도네
                    </p>
                  </a>
                  <p style="font-size: small">BAY OF FIRES CHARDONNAY</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
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
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="#" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="../img/wine/white_WHALEBONE BAY SAUVIGNON BLANC LIGHTER.png"
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
                      웨일본 베이 소비뇽블랑
                    </p>
                  </a>
                  <p style="font-size: small">WHALEBONE BAY SAUVIGNON BLANC</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >화이트</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >뉴질랜드</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">38,900&#8361;</p>
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
