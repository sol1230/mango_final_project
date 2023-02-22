<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coupon</title>
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
    <link rel="stylesheet" href="/css/common.css" />
    <link rel="stylesheet" href="/css/info_area.css" />
  </head>

  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <%-- 본 페이지 --%>

    <!-- 로그인한 회원만 보여지는 쿠폰함-->
    <div class="row g-0 vh-auto">
    <%-- user_nav --%>
    <%@ include file="../etc/user_nav.jsp" %>
    <main class="col-9 p-0 mb-5 ms-5">
    <div class="fs-4 fw-bold text-center" style="margin-top:3rem; margin-bottom: 3rem;">
        쿠폰함
      </div>

      <table class="table" style="text-align: center; border: hidden;">
        <thead style="border: hidden;">
          <tr>
            <th>다운로드 가능한 쿠폰</th>
            <th>사용 가능한 쿠폰</th>      
          </tr>
        </thead>
        <tbody>
       
            <tr>
                <td>
                  <img src="../img/무료 배송 쿠폰.PNG" width="300rem;" >
                </td>
                <td>
                  <img src="../img/할인 쿠폰.PNG" width="300rem;">
                </td>
 
            </tr>

            <tr style="border: hidden;">
              <td>
                <button class="btn btn-outline-primary">다운로드 ↓ </button>
              </td>
              <td>
               
              </td>

          </tr>
        </tbody>
    </table>
    </main>
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