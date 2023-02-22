<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login find id</title>
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
    <link rel="stylesheet" href="/css/common.css" />

  </head>
  <body>
     <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container mt-4 pb-3" style="width: 40rem">
      <div class="pt-5 mt-3 fs-5 fw-bold">
        <nav class="nav nav-tabs justify-content-center">
          <a href="" class="nav-link active link-danger ps-5 pe-5" id="id_btn">
            아이디 찾기
          </a>
          <a
            href="/signup_N_login/login_find_password"
            class="nav-link ps-5 pe-5 link-dark"
            id="password_btn"
          >
            비밀번호 찾기
          </a>
        </nav>
      </div>
      <div>
        <form action="/index" id="changeForm">
          <div class="pt-3">
            <div class="pt-3">
              <label for="" class="pb-1">이름</label>
              <input
                type="text"
                class="form-control"
                name="name"
                id="name"
                required
              />
            </div>
            <div class="pt-3">
              <label for="" class="pb-1">휴대전화</label>
              <div class="row">
                <div class="col">
                  <select class="form-select" name="phone0" required>
                    <option>선택</option>
                    <option value="010">010</option>
                    <option value="012">012</option>
                    <option value="013">013</option>
                  </select>
                </div>
                <div class="col">
                  <input
                    type="text"
                    name="phone1"
                    id="phone1"
                    class="form-control rounded mb-2"
                    required
                  />
                </div>
                <div class="col">
                  <input
                    type="text"
                    name="phone2"
                    id="phone2"
                    class="form-control rounded mb-2"
                    required
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="mt-5 mb-5 text-center">
            <a
              href="/signup_N_login/login_find"
              class="btn btn-danger btn-lg w-25 text-decoration-none text-white"
            >
              확인
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
