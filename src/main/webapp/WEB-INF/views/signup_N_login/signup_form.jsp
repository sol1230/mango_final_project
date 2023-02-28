<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign up form</title>
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

  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container" style="width: 40rem">
      <div class="fs-4 fw-bold text-center pt-5">회원가입</div>
      <form action="/user/insertUser" method="post">
        <div class="pt-3">
          <div class="">
            <label for="" class="pb-1">아이디</label>
            <input type="text" class="form-control" name="user_uid" required />
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">비밀번호</label>
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
              <option value="M">남자</option>
              <option value="F">여자</option>
            </select>
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">휴대전화</label>
            <div class="row">
              <div class="col">
                <select class="form-select" name="phone1" required>
                  <option>선택</option>
                  <option value="010">010</option>
                  <option value="012">012</option>
                  <option value="013">013</option>
                </select>
              </div>
              <div class="col">
                <input
                  type="text"
                  name="phone2"
                  id="phone1"
                  class="form-control rounded mb-2"
                  required
                />
              </div>
              <div class="col">
                <input
                  type="text"
                  name="phone3"
                  id="phone2"
                  class="form-control rounded mb-2"
                  required
                />
              </div>
            </div>
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">주소</label>
            <div class="row">
            	<div class="col">
            		<input type="text" id="postcode" name="post" placeholder="우편번호" class="form-control">
            	</div>
            	<div class="col">
            		<button type="button" onclick="daumPostcode();"class="btn btn-sm btn-outline-primary" style="margin-top: 2px;">우편번호 찾기</button>
            	</div>     
            </div>
            <input type="text" id="address" name="address" placeholder="주소" class="form-control">
            <input type="text" id="detailAddress" name="addressDetail" placeholder="상세주소" class="form-control">
          </div>
        </div>
        <div class="mt-5 text-center">
		  <button type="submit" class="btn btn-danger btn-lg w-25 text-decoration-none text-white">가입하기</button>
        </div>
      </form>
    </div>

    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>
    
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 
    <script>
        function daumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {

                    var addr = ''; 
                    var extraAddr = ''; 

                    if (data.userSelectedType === 'R') { 
                        addr = data.roadAddress;
                    } else { 
                        addr = data.jibunAddress;
                    }

                    if(data.userSelectedType === 'R'){
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        document.getElementById("detailAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("detailAddress").value = '';
                    }

                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("address").value = addr;
                    document.getElementById("detailAddress").focus();
                }
            }).open();
        }
    </script>
  </body>
</html>

