<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Event</title>
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
  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>
    
    <!-- 본 페이지  -->
    <div class="container ">
      <div class="fs-3 fw-bold text-center mt-5">이벤트</div>
      <div class="d-flex justify-content-between mt-5">
        <div>설맞이 프로모션</div>
        <div>2023.01.01 ~ 2023.01.24</div>
      </div>
      <hr />
      <div class="text-center mt-5">
        <div>
          <img src="../img/event04-1.PNG" alt="" style="width: 800px" />
        </div>
        <div>
          <img src="../img/event04-2.PNG" alt="" style="width: 800px" />
        </div>
        <div>
          <img src="../img/event04-3.PNG" alt="" style="width: 800px" />
        </div>
      </div>
      <div class="text-center mt-5 mb-5">
        <a href="/event/event" class="btn btn-danger">목록</a>
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
