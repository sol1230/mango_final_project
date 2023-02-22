<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login find password result</title>
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
    <script
      src="https://code.jquery.com/jquery-3.6.3.slim.js"
      integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc="
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="/css/font.css" />

  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container mt-4 pb-3" style="width: 40rem">
      <div class="border rounded-3 mt-5 text-center p-5">
        <div class="fs-4 fw-bold">비밀번호 찾기</div>
        <hr />
        <div class="fs-5 p-3">비밀번호를 다시 설정해주세요.</div>
        <div>
          <div class="pt-3">
            <label for="" class="pb-1">비밀번호</label>
            <input
              type="password"
              class="form-control"
              name="password1"
              id="password1"
              placeholder="비밀번호"
              required
            />
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">비밀번호를 다시 입력해주세요.</label>
            <input
              type="password"
              class="form-control"
              name="password2"
              id="password2"
              placeholder="비밀번호 재입력"
              required
            />
          </div>
        </div>
      </div>
      <div class="text-center">
        <button class="btn btn-danger mt-3 form-control" style="width: 20rem">
          <a
            href="#passwordModify"
            class="text-decoration-none text-white"
            data-bs-toggle="modal"
            >비밀번호 변경</a
          >
        </button>
      </div>
    </div>

    <!-- 비밀번호 수정 확인 modal -->
    <div class="modal fade" id="passwordModify">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content text-center p-5">
          <div class="fs-4 fw-bold">비밀번호 변경이 완료되었습니다.</div>
          <form action="/index">
            <div class="pt-3">
              <a href="/index" class="btn btn-danger">메인페이지로</a>
            </div>
          </form>
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
