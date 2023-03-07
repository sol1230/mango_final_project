<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css"
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
    <link rel="stylesheet" href="/css/wine_info.css" />

  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <%-- <!-- 본 페이지 content --> --%>
    <div class="container mb-5">
      <div
        class="d-flex justify-content-center mt-5 rounded-3 p-3"
        style="background-color: rgb(252, 249, 244); width: 100%"
      >
        <div class="" style="margin: auto; margin-left: 20%">
          <img src="/img/wine/${resultMap.WINE_NAME_EN}.png" alt="canti" width="300" />
        </div>
        <div class="me-4">
          <div>
            <span class="fs-5 fw-bold">${resultMap.WINE_NAME}</span>
            <span class="btn">
              <i class="bi bi-bookmark-heart fs-4"></i>
            </span>
          </div>
          <p class="mb-3 ms-2" style="font-size: small">
            ${resultMap.WINE_NAME_EN}
          </p>
          <table style="font-size: smaller">
            <tbody>
              <tr>
                <th><i class="bi bi-star-half"></i></th>
                <td>
                  <c:choose>
                    <c:when test="${resultMap.WINE_SCOPE lt 1.0}">
                      <i class="bi bi-star-half"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE eq 1.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE gt 1.0 && resultMap.WINE_SCOPE lt 2.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-half"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE eq 2.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE gt 2.0 && resultMap.WINE_SCOPE lt 3.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-half"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE eq 3.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE gt 3.0 && resultMap.WINE_SCOPE lt 4.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-half"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE eq 4.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE gt 4.0 && resultMap.WINE_SCOPE lt 5.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-half"></i>
                    </c:when>
                    <c:otherwise>
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i>
                    </c:otherwise>
                  </c:choose>
                </td>
              </tr>
              <tr>
                <th><i class="bi bi-building"></i></th>
                <td>${resultMap.WINE_COMPANY}</td>
              </tr>
              <tr>
                <th>
                  <img
                    src="https://cdn-icons-png.flaticon.com/512/65/65667.png"
                    alt="wine"
                    width="20"
                  />
                </th>
                <td>${resultMap.WINE_NAME}</td>
              </tr>
              <tr>
                <th>
                  <img
                    src="https://cdn-icons-png.flaticon.com/512/1816/1816356.png"
                    alt="bandera"
                    width="20"
                  />
                </th>
                <td>${resultMap.WINE_COUNTRY}, ${resultMap.WINE_REGION}</td>
              </tr>
              <tr>
                <th>
                  <img
                    src="https://cdn-icons-png.flaticon.com/512/4698/4698218.png"
                    alt="grape"
                    width="20"
                  />
                </th>
                <td>${resultMap.WINE_VARIETY}</td>
              </tr>
              <tr>
                <th>
                  <img
                    src="https://cdn-icons-png.flaticon.com/512/2907/2907439.png"
                    alt="alcohol"
                    width="20"
                  />
                </th>
                <td>${resultMap.WINE_ALCOHOL_DEGREE}%</td>
              </tr>
            </tbody>
          </table>
          <div style="font-size: smaller">
            <div class="ms-2">
              <img
                src="https://cdn-icons-png.flaticon.com/512/567/567600.png"
                alt="price"
                width="20"
              />
              <span>최저가</span><span>${resultMap.WINE_PRICE}&#8361;</span>
              <span
                ><button
                  class="btn btn-danger"
                  style="width: 25%; font-size: small"
                >
                  <a
                    href="https://www.ssg.com/item/itemView.ssg?itemId=1000227987454"
                    target="_blank"
                    class="text-decoration-none text-white"
                  >
                    최저가 사러가기</a
                  >
                </button></span
              >
            </div>
            <div class="mt-2" style="font-size: small">
              <table border="1" width="500">
                <thead>
                  <tr>
                    <th>판매처</th>
                    <th colspan="2">판매가</th>
                    <th>배송비</th>
                    <th>사러가기</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${resultStoreList}" var="resultData" varStatus="loop">
                    <tr>
                      <c:choose>
                        <c:when test="${(resultData.STORE_PRICE == resultMap.WINE_PRICE)}">
                          <td>
                            <a href="#" class="text-decoration-none text-black"
                              >${resultData.STORE_NAME}
                              <img src="/img/${resultData.STORE_NAME}.png" alt="" width="60" />
                            </a>
                          </td>
                          <td class="text-danger">최저</td>
                          <td class="text-danger">${resultData.STORE_PRICE} &#8361;</td>
                          <td>${resultData.STORE_DELIVERY} &#8361;</td>
                          <td>
                            <a
                              href="${resultData.STORE_URL}"
                              target="_blank"
                              class="text-decoration-none text-black"
                            >
                              사러가기
                            </a>
                          </td>
                        </c:when>
                        <c:otherwise>
                          <td>
                            <a href="#" class="text-decoration-none text-black"
                              >${resultData.STORE_NAME}
                              <img src="/img/${resultData.STORE_NAME}.png" alt="" width="60" />
                            </a>
                          </td>
                          <td class=""></td>
                          <td class="">${resultData.STORE_PRICE} &#8361;</td>
                          <td>${resultData.STORE_DELIVERY} &#8361;</td>
                          <td>
                            <a
                              href="${resultData.STORE_URL}"
                              target="_blank"
                              class="text-decoration-none text-black"
                            >
                              사러가기
                            </a>
                          </td>
                        </c:otherwise>
                      </c:choose>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="mt-5 ms-5 col" style="width: 60%">
          <table>
            <tr>
              <th>바디</th>
              <c:choose>
                <c:when test="${(resultMap.WINE_BODY).equals('가벼움')}">
                  <td>
                    <span class="label" style="background: #dfb8b8">가벼움</span>
                  </td>
                  <td><span>중간</span></td>
                  <td><span>무거움</span></td>
                </c:when>
                <c:when test="${(resultMap.WINE_BODY).equals('중간')}">
                  <td>
                    <span>가벼움</span>
                  </td>
                  <td><span class="label" style="background: #dfb8b8">중간</span></td>
                  <td><span>무거움</span></td>
                </c:when>
                <c:otherwise>
                  <td>
                    <span>가벼움</span>
                  </td>
                  <td><span>중간</span></td>
                  <td><span class="label" style="background: #dfb8b8">무거움</span></td>
                </c:otherwise>
              </c:choose>
              <td>
            </tr>
            <tr>
              <th>산도</th>
              <c:choose>
                <c:when test="${(resultMap.WINE_ACIDITY).equals('낮음')}">
                  <td>
                    <span class="label" style="background: #dfb8b8">낮음</span>
                  </td>
                  <td><span>중간</span></td>
                  <td><span>높음</span></td>
                </c:when>
                <c:when test="${(resultMap.WINE_ACIDITY).equals('중간')}">
                  <td>
                    <span>낮음</span>
                  </td>
                  <td><span class="label" style="background: #dfb8b8">중간</span></td>
                  <td><span>높음</span></td>
                </c:when>
                <c:otherwise>
                  <td>
                    <span>낮음</span>
                  </td>
                  <td><span>중간</span></td>
                  <td><span class="label" style="background: #dfb8b8">높음</span></td>
                </c:otherwise>
              </c:choose>
            </tr>
            <tr>
              <th>당도</th>
              <c:choose>
                <c:when test="${(resultMap.WINE_SUGAR).equals('낮음')}">
                  <td>
                    <span class="label" style="background: #dfb8b8">낮음</span>
                  </td>
                  <td><span>중간</span></td>
                  <td><span>높음</span></td>
                </c:when>
                <c:when test="${(resultMap.WINE_SUGAR).equals('중간')}">
                  <td>
                    <span>낮음</span>
                  </td>
                  <td><span class="label" style="background: #dfb8b8">중간</span></td>
                  <td><span>높음</span></td>
                </c:when>
                <c:otherwise>
                  <td>
                    <span>낮음</span>
                  </td>
                  <td><span>중간</span></td>
                  <td><span class="label" style="background: #dfb8b8">높음</span></td>
                </c:otherwise>
              </c:choose>
            </tr>
            <tr>
              <th>타닌</th>
              <c:choose>
                <c:when test="${(resultMap.WINE_TANNIN).equals('약함')}">
                  <td>
                    <span class="label" style="background: #dfb8b8">약함</span>
                  </td>
                  <td><span>중간</span></td>
                  <td><span>강함</span></td>
                </c:when>
                <c:when test="${(resultMap.WINE_TANNIN).equals('중간')}">
                  <td>
                    <span>약함</span>
                  </td>
                  <td><span class="label" style="background: #dfb8b8">중간</span></td>
                  <td><span>강함</span></td>
                </c:when>
                <c:otherwise>
                  <td>
                    <span>약함</span>
                  </td>
                  <td><span>중간</span></td>
                  <td><span class="label" style="background: #dfb8b8">강함</span></td>
                </c:otherwise>
              </c:choose>
            </tr>
            <tr>
              <th>알코올</th>
              <c:choose>
                <c:when test="${resultMap.WINE_ALCOHOL_DEGREE lt 12.0}">
                  <td>
                    <span class="label" style="background: #dfb8b8"
                      >낮음(~11%)</span
                    >
                  </td>
                  <td>중간(12~13%)</td>
                  <td>높음(14%~)</td>
                </c:when>
                <c:when test="${resultMap.WINE_ALCOHOL_DEGREE ge 12.0 && resultMap.WINE_ALCOHOL_DEGREE lt 14.0}">
                  <td>
                    낮음(~11%)
                  </td>
                  <td>
                    <span class="label" style="background: #dfb8b8"
                      >중간(12~13%)</span
                    >
                  </td>
                  <td>높음(14%~)</td>
                </c:when>
                <c:otherwise>
                  <td>
                    낮음(~11%)
                  </td>
                  <td>
                    중간(12~13%)
                  </td>
                  <td>
                    <span class="label" style="background: #dfb8b8"
                      >높음(14%~)</span
                    >
                  </td>
                </c:otherwise>
              </c:choose>
            </tr>
          </table>
        </div>
        <div class="mt-5 ms-5 col">
          <div class="m-3 fw-bold">추천 음식</div>
          <div class="ms-2">
            <div class="">
              <img src="/img/${resultMap.WINE_FOOD_PAIRING}.jpg" alt="${resultMap.WINE_FOOD_PAIRING}" width="70px" />

              <span>${resultMap.WINE_FOOD_PAIRING}</span>
            </div>
          </div>
        </div>

        <div class="mt-5 ms-5">
          <div class="fw-bold">상세정보</div>
          <div class="text-center">
            <img src="/img/wine/${resultMap.WINE_NAME_EN}_상세.png" alt="" width="70%" />
          </div>
        </div>
      </div>

      <div class="mt-5">
        <div class="mb-2">
          <span class="fw-bold">후기</span>
          <span class="text-center fs-5 fw-bold" style="color: rgb(196, 32, 3)">
            ${resultMap.WINE_SCOPE}
          </span>
          <span class="text-center mb-3">
            <c:choose>
                    <c:when test="${resultMap.WINE_SCOPE lt 1.0}">
                      <i class="bi bi-star-half"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE eq 1.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE gt 1.0 && resultMap.WINE_SCOPE lt 2.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-half"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE eq 2.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE gt 2.0 && resultMap.WINE_SCOPE lt 3.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-half"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE eq 3.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE gt 3.0 && resultMap.WINE_SCOPE lt 4.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-half"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE eq 4.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultMap.WINE_SCOPE gt 4.0 && resultMap.WINE_SCOPE lt 5.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-half"></i>
                    </c:when>
                    <c:otherwise>
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i>
                    </c:otherwise>
                  </c:choose>
          </span>
        </div>

        <%-- 내가 쓴 리뷰 수정, 삭제 가능하게.. --%>
        <ul class="list-unstyled">
          <c:forEach items="${resultReviewList}" var="resultData" varStatus="loop">
            <li class="text-decoration-none">
              <div class="card p-3" style="width: 80%, height 20%">
                <div class="fw-bold">
                  ${resultData.USER_UID}
                  <span class="ms-3">
                    <c:choose>
                    <c:when test="${resultData.REVIEW_SCOPE lt 1.0}">
                      <i class="bi bi-star-half"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultData.REVIEW_SCOPE eq 1.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultData.REVIEW_SCOPE gt 1.0 && resultData.REVIEW_SCOPE lt 2.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-half"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultData.REVIEW_SCOPE eq 2.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultData.REVIEW_SCOPE gt 2.0 && resultData.REVIEW_SCOPE lt 3.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-half"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultData.REVIEW_SCOPE eq 3.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultData.REVIEW_SCOPE gt 3.0 && resultData.REVIEW_SCOPE lt 4.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-half"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultData.REVIEW_SCOPE eq 4.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star"></i>
                    </c:when>
                    <c:when test="${resultData.REVIEW_SCOPE gt 4.0 && resultData.REVIEW_SCOPE lt 5.0}">
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-half"></i>
                    </c:when>
                    <c:otherwise>
                      <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i
                      ><i class="bi bi-star-fill"></i>
                    </c:otherwise>
                  </c:choose>
                  </span>
                </div>
                <div class="mt-2">
                  ${resultData.REVIEW_CONTENT}
                </div>
              </div>
            </li>
          </c:forEach>
        </ul>
      </div>
      <hr />

      <%-- <!-- 상품문의 --> --%>
      <div class="mt-5" style="width: 60%">
        <span class="fw-bold">상품 문의</span><span>(총 20건)</span>
        <span class="float-end">
          <a
            href="#modalQnA"
            class="btn btn-outline-secondary btn-sm"
            data-bs-toggle="modal"
          >
            작성하기</a
          >
        </span>
        <table style="font-size: small; width: 120%">
          <thead>
            <tr>
              <th>번호</th>
              <th>답변여부</th>
              <th>내용</th>
              <th>작성자</th>
              <th>등록일자</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${resultQNAList}" var="resultData" varStatus="loop">
              <tr>
                <td>${resultData.QNA_NO}</td>
                <td>${resultData.ANSWER_STATUS}</td>
                <td><a href="#"> 탄닌 관련 문의</a></td>
                <td>${resultData.USER_UID}</td>
                <td>${resultData.QNA_DATE}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
        <div class="pagination pagination-sm justify-content-center mt-4">
          <a class="page-item page-link" href="">이전</a>
          <a class="page-item page-link" href="">1</a>
          <a class="page-item page-link" href="">2</a>
          <a class="page-item page-link" href="">3</a>
          <a class="page-item page-link" href="">4</a>
          <a class="page-item page-link" href="">다음</a>
        </div>
      </div>
      <div class="modal fade" id="modalQnA">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content text-center p-5">
            <div class="fs-4 fw-bold"><상품문의></div>
            <form action="/wine/wine_info">
              <div class="pt-3 align-self-center">
                <div class="ms-3 p-2 bg-light rounded-3 row" style="width: 90%">
                  <div class="col" style="margin: 0%; padding: 0%">
                    <img src="../img/wine/wine_canti.png" alt="" width="20px" />
                  </div>
                  <div class="col-8 align-items-center align-self-center mt-2">
                    <p>모스카토 칸티 다스티</p>
                    <p style="font-size: small">Moscato Canti d'asti</p>
                  </div>
                </div>
                <br />
                <table style="border-collapse: collapse">
                  <tbody>
                    <tr>
                      <th>제목</th>
                      <td>
                        <input
                          type="text"
                          name="title"
                          style="width: 100%"
                          placeholder="제목 입력"
                        />
                      </td>
                    </tr>
                    <tr>
                      <th>내용</th>
                      <td>
                        <textarea
                          name="question"
                          id=""
                          cols="35"
                          rows="10"
                          placeholder="내용 입력"
                        ></textarea>
                      </td>
                    </tr>
                  </tbody>
                </table>

                <div class="text-center pt-4">
                  <a
                    href="#"
                    class="btn btn-outline-danger"
                    onclick="location.reload();"
                    >취소</a
                  >
                  <a
                    href="#"
                    class="btn btn-danger"
                    onclick="location.reload();"
                    >작성하기</a
                  >
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div style="margin-top: 5rem">
        <hr />
        <div class="fs-4 fw-bold mb-5 ms-5">추천 와인</div>
        <div class="border border-secondary rounded-3 pt-5">
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
                        src="/img/wine/wine_escudo_rojo.png"
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
                        에스쿠도 로호 레세르바 카베르네소비뇽
                      </p>
                    </a>
                    <p class="box" style="font-size: small">
                      Escudo Rojo Reserva Cabernet Sauvignon
                    </p>
                    <span
                      class="badge badge-pill"
                      style="background-color: #dc0000"
                      >레드와인</span
                    >
                    <span
                      class="badge badge-pill"
                      style="background-color: #dc0000"
                      >칠레</span
                    >
                  </div>
                  <div class="price_area mt-3">
                    <p class="price">9,500&#8361;</p>
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
                        src="/img/wine/spain_cune_rioja_organic_red.png"
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
                  style="background-color: #ffe2e2; width: 230px; height: 250px"
                >
                  <a href="#" class="text-decoration-none text-black">
                    <div class="pt-4">
                      <img
                        src="/img/wine/france_NVIVO X SJP ROSE.png"
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
                        src="/img/wine/spain_cune_verdejo.png"
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
          </ul>
        </div>
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
