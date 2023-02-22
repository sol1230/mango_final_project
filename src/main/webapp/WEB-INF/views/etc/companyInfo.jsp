<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Company</title>
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
    <style>
      #navbarFilterMenu a:hover {
        cursor: pointer;
        border-bottom: 2px solid rgb(127, 127, 127);
      }
      .navbarFilter a:hover {
        border-bottom: 2px solid rgb(127, 127, 127);
      }
    </style>
  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container">
      <div class="text-center">
        <div class="fs-4 fw-bold text-center mb-4 pt-5">회사 소개</div>
        <div>
          <p>
            ㈜와인타임은 주류 수입자유화 원년인 1987년 설립된 이래
            <br />
            1세대 종합 와인전문기업으로 지금까지 줄곧 우리나라 와인문화를 선도해
            왔습니다.
            <br />
            <br />
            ㈜와인타임의 “고객에게 행운을 가져다 드린다 Fortune Brands
            Company”는 사명처럼
            <br />
            믿을 수 있는 품질의 와인을 합리적인 가격으로 제공하기 위해 노력해
            왔으며
            <br />
            <br />
            저희 ㈜와인타임은 최고의 명품 와인부터 부담없는 데일리 와인까지
            <br />
            다양한 포트폴리오를 구성하여 고객님이 원하시는 상품을 접하실 수
            있습니다.
            <br />
          </p>
        </div>
        <div class="pt-4 pb-4 mb-5">
          <picture>
            <img
              src="../img/companyPage_image.png"
              class="w-75"
              alt="wine_image"
            />
          </picture>
        </div>
      </div>
    </div>
 
    <%--footer  --%>
    <%@ include file="../etc/footer.jsp" %>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
