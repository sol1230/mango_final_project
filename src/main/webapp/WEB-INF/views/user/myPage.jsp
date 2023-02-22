<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Mypage</title>
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
  </head>
    <link rel="stylesheet" href="/css/common.css" />
    <link rel="stylesheet" href="/css/info_area.css" />
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <%-- 본 페이지 --%>
    <!-- 로그인한 회원만 보여지는 마이 페이지-->
    <div class="row g-0 vh-auto">
    <%-- user_nav --%>
    <%@ include file="../etc/user_nav.jsp" %>
      <div class="container mb-5 pb-5" style="width: 55rem">
        <div class="fs-4 fw-bold text-center pt-5">
          <로그인한 회원 id>님의 마이페이지
        </div>
        <form action="">
          <div class="info_area">
            <div class="title">
              <string>찜한 상품</string>
            </div>
            <div class="number">0 <span>(개)</span></div>
            <div class="detail mt-1">
              <a href="/user/user_wishlist">
                <span class="width80" style="color : rgb(239, 70, 109)">자세히 보기</span>
              </a>
            </div>
          </div>

          <div class="info_area">
            <div class="title">
              <string>상품 문의</string>
            </div>
            <div class="number">0 <span>(건)</span></div>
            <div class="detail mt-1">
              <a href="/user/user_qna">
                <span class="width80" style="color : rgb(239, 70, 109)">자세히 보기</span>
              </a>
            </div>
          </div>

          <div class="info_area">
            <div class="title">
              <string>내가 쓴 리뷰</string>
            </div>
            <div class="number">2 <span>(건)</span></div>
            <div class="detail mt-1">
              <a href="/user/user_review_modify">
                <span class="width80" style="color : rgb(239, 70, 109)">자세히 보기</span>
              </a>
            </div>
          </div>

          <div class="info_area">
            <div class="title">
              <string>쿠폰</string>
            </div>
            <div class="number">0 <span>(개)</span></div>
              <div class="detail mt-1">
                <a href="/user/user_coupon">
                  <span class="width80" style="color : rgb(239, 70, 109)">자세히 보기</span>
                </a>
             </div>
          </div>

          <div class="fs-5 fw-bold border-bottom border-3 border-danger border-opacity-50 pb-2 text-danger">회원정보</div>
          <div>
            <table class="table boder-top">
              <tr>
                <th>
                  아이디
                </th>
                <td> 
                  Park
                </td>
              </tr>
              <tr>
                <th>
                  이름
                </th>
                <td> 
                  아무개
                </td>
              </tr>
              <tr>
                <th>
                  비밀번호
                </th>
                <td> 
                  1234
                </td>
              </tr>
              <tr>
                <th>
                  생년월일
                </th>
                <td> 
                  1995-05-21
                </td>
              </tr>
              <tr>
                <th>
                  성별
                </th>
                <td> 
                  남자
                </td>
              </tr>
              <tr>
                <th>
                  휴대전화
                </th>
                <td> 
                  010-0000-0000
                </td>
              </tr>
            </table>
          </div>

          <div class="mt-5 text-center">
            <a
              href="/user/changeInfo"
              class="btn btn-danger btn-lg w-25 text-decoration-none text-white"
            >
              정보 수정하기
            </a>

            <a
              href="/index"
              class="btn btn-secondary btn-lg w-25 text-decoration-none text-white"
              style="margin-left: 20px"
            >
              메인으로
            </a>
          </div>
        </form>
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
