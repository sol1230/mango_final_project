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
          <nav aria-label="Page navigation example">
          <c:set var="_pagination" value="${resultMap.paginations}" />
          <span>총 ${resultMap.paginations.totalCount}개 상품</span>
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
          <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
          <c:choose>
            <c:when test="${resultData.WINE_TYPE eq '레드'}">
              <li class="col" style="list-style: none">
              <div class="item" style="text-align: center; width: 230px">
                <div
                  class=""
                  style="background-color: #e8daea; width: 230px; height: 250px"
                >
                  <a href="/wine/wine_info/${resultData.WINE_NAME_EN}" class="text-decoration-none text-black">
                    <div class="pt-4">
                      <img
                        src="/img/wine/${resultData.WINE_NAME_EN}.png"
                        alt="wine1"
                        width="200"
                      />
                    </div>
                  </a>
                </div>
                <div class="info">
                  <div class="more_info">
                    <a href="/wine/wine_info/${resultData.WINE_NAME_EN}" class="text-decoration-none text-black">
                      <p class="box mt-2 prd_name fw-bold">
                        ${resultData.WINE_NAME}
                      </p>
                    </a>
                    <p class="box" style="font-size: small">
                      ${resultData.WINE_NAME_EN}
                    </p>
                    <span
                      class="badge badge-pill"
                      style="background-color: #dc0000"
                      >${resultData.WINE_TYPE}와인</span
                    >
                    <span
                      class="badge badge-pill"
                      style="background-color: #dc0000"
                      >${resultData.WINE_COUNTRY}</span
                    >
                  </div>
                  <div class="price_area mt-3">
                    <p class="price">${resultData.WINE_PRICE}&#8361;</p>
                  </div>
                </div>
              </div>
            </li>
            </c:when>
            <c:when test="${resultData.WINE_TYPE eq '화이트'}">
              <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #fffbb0; width: 230px; height: 250px"
              >
                <a href="/wine/wine_info/${resultData.WINE_NAME_EN}" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="/img/wine/${resultData.WINE_NAME_EN}.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="/wine/wine_info/${resultData.WINE_NAME_EN}" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold mt-1">${resultData.WINE_NAME}</p>
                  </a>
                  <p style="font-size: small">${resultData.WINE_NAME_EN}</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >${resultData.WINE_TYPE}</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #ffd500"
                    >${resultData.WINE_COUNTRY}</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">${resultData.WINE_PRICE}&#8361;</p>
                </div>
              </div>
            </div>
          </li>
            </c:when>
            <c:when test="${resultData.WINE_TYPE eq '로제'}">
              <li class="col" style="list-style: none">
            <div class="item" style="text-align: center; width: 230px">
              <div
                class=""
                style="background-color: #ffe2e2; width: 230px; height: 250px"
              >
                <a href="/wine/wine_info/${resultData.WINE_NAME_EN}" class="text-decoration-none text-black">
                  <div class="pt-4">
                    <img
                      src="/img/wine/${resultData.WINE_NAME_EN}.png"
                      alt="wine2"
                      width="200"
                    />
                  </div>
                </a>
              </div>
              <div class="info">
                <div class="more_info">
                  <a href="/wine/wine_info/${resultData.WINE_NAME_EN}" class="text-decoration-none text-black">
                    <p class="mt-2 prd_name fw-bold">${resultData.WINE_NAME}</p>
                  </a>
                  <p style="font-size: small">${resultData.WINE_NAME_EN}</p>
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >${resultData.WINE_TYPE}</span
                  >
                  <span
                    class="badge badge-pill"
                    style="background-color: #fe999f"
                    >${resultData.WINE_COUNTRY}</span
                  >
                </div>

                <div class="price_area mt-3">
                  <p class="price">${resultData.WINE_PRICE}&#8361;</p>
                </div>
              </div>
            </div>
          </li>
            </c:when>
            <c:otherwise>
              <li class="col" style="list-style: none">
                 <div class="item" style="text-align: center; width: 230px">
                 <div
                   class=""
                    style="background-color: #d7f6f8; width: 230px; height: 250px"
                  >
                   <a
                     href="/wine/wine_info/${resultData.WINE_NAME_EN}"
                     class="text-decoration-none text-black"
                    >
                     <div class="pt-4">
                       <img
                         src="/img/wine/${resultData.WINE_NAME_EN}.png"
                          alt="wine2"
                         width="200"
                        />
                     </div>
                    </a>
                 </div>
                 <div class="info">
                   <div class="more_info">
                     <a href="/wine/wine_info/${resultData.WINE_NAME_EN}" class="text-decoration-none text-black">
                       <p class="mt-2 prd_name fw-bold">${resultData.WINE_NAME}</p>
                     </a>
                     <p style="font-size: small">${resultData.WINE_NAME_EN}</p>
                     <span
                        class="badge badge-pill"
                       style="background-color: #85d9e4"
                        >${resultData.WINE_TYPE}</span
                     >
                     <span
                        class="badge badge-pill"
                       style="background-color: #85d9e4"
                        >${resultData.WINE_COUNTRY}</span
                     >
                   </div>
                   <div class="price_area mt-3">
                     <p class="price">${resultData.WINE_PRICE}&#8361;</p>
                    </div>
                  </div>
                </div>
              </li>
            </c:otherwise>
          </c:choose>
        </c:forEach>
        </ul>
      </div>
      <ul class="pagination pagination-sm justify-content-center mt-5">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">이전</span>
          </a>
        </li>
	      <%-- for(int i=0; i > 9; i++ {}) --%>
	      <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}">
    	    <li class="page-item"><a class="page-link" href="/wine/wine_spain/${i}">${i}</a></li>
        </c:forEach>
	      <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span class="sr-only">다음</span>
            <span aria-hidden="true">&raquo;</span>
          </a>
        </li>
      </ul>
    </nav>
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
