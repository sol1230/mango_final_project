<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Change my info</title>
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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
  </head>
    <link rel="stylesheet" href="/css/common.css" />

  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container" style="width: 40rem">
      <div class="fs-4 fw-bold text-center pt-5">회원정보 수정</div>
      <form action="">
        <div class="pt-3">
          <div class="">
            <label for="" class="pb-1">아이디</label>
            <input type="text" class="form-control" name="user_id" readonly />
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">현재 비밀번호</label>
            <input
              type="password"
              class="form-control"
              name="password"
              required
            />
          </div>

          <div class="pt-3">
            <label for="" class="pb-1">변경할 비밀번호</label>
            <input
              type="password"
              class="form-control"
              name="password"
              required
            />
          </div>

          <div class="pt-3">
            <label for="" class="pb-1">비밀번호 확인</label>
            <input
              type="password"
              class="form-control"
              name="password"
              required
            />
          </div>

          <div class="pt-3">
            <label for="" class="pb-1">이름</label>
            <input type="text" class="form-control" name="name" required />
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">생년월일</label>
            <input
              type="date"
              name="birth"
              id="birth"
              class="form-control"
              required
            />
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">성별</label>
            <select class="form-select" name="gender" id="gender" required>
              <option value="men">남자</option>
              <option value="women">여자</option>
            </select>
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

        <!-- 모달 추가 -->
        <div class="mt-5 mb-5 text-center">
          <button
            class="btn btn-secondary btn-lg w-25 text-decoration-none text-white"
            style="margin-right: 10px"
          >
            수정하기
          </button>
          <button
          onclick="bye();"
            class="btn btn-danger btn-lg w-25 text-decoration-none text-white"
            style="margin-left: 10px"
            id="bye"
          >
            탈퇴하기
          </button>
        </div>
      </form>
    </div>
    
    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>

  <script>
  function bye() {
    Swal.fire({
      title:'정말 탈퇴하시겠습니까? ',
      text: '탈퇴하시면 다시 복구할 수 없습니다.',
      icon:'warning',
      showCancelButton:true,
      confirmButtonColor:'#3085d6',
      confirmButtonText:'탈퇴',
      cancleButtonText:'취소'
    }).then((result)=>{
      
    })
  }
  </script>
     <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
 </body>
</html>
