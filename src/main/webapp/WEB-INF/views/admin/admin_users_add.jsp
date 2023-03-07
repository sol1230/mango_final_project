<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin users add</title>
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
    <link rel="stylesheet" href="/css/admin.css" />

  </head>
  <body class="bg-light h-100">
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>

    <!-- 본 페이지 content -->
    <div class="row g-0 vh-100">
    <%@ include file="../etc/admin_nav.jsp" %>
      <main class="col-9 p-0 mb-5 ms-5">
        <form action="/admin/admin_users_insert_done/1" method="post">
          <div class="mt-4 p-4 border bg-white">
            <div
              class="d-flex justify-content-between align-items-center input-group"
            >
              <div>
                <label for="" class="form-label fw-bold pe-3 m-0"
                  >회원추가</label
                >
              </div>
              <div class="">
                <button tpye="submit" class="btn btn-sm btn-outline-secondary">
                  추가하기
                </button>
              </div>
            </div>
            <table
              class="mt-3 table text-center align-middle"
              style="font-size: small"
            >
              <thead class="bg-secondary bg-opacity-25">
                <tr>
                  <th scope="">아이디</th>
                  <th scope="">비밀번호</th>
                  <th scope="">이름</th>
                  <th scope="">생년월일</th>
                  <th scope="">성별</th>
                  <th scope="">휴대전화</th>
                  <th scope="">주소</th>
                  <th scope="">권한</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" name="USER_UID" value="${resultData.USER_UID}" required /></td>
                  <td><input type="text" class="form-control" name="PASSWORD" value="${resultData.PASSWORD}"required /></td>
                  <td><input type="text" class="form-control" name="NAME" value="${resultData.NAME}" required/></td>
                  <td><input type="date" class="form-control" name="BIRTH" value="${resultData.BIRTH}" required /></td>
                  <td><input type="text" class="form-control" name="GENDER" value="${resultData.GENDER}" required/></td>
                  <td><input type="text" class="form-control" name="PHONE" value="${resultData.PHONE}" required/></td>
                  <td><input type="text" class="form-control" name="ADDRESS" value="${resultData.ADDRESS}" required/>
              <div class="row">
                <div class="col">
                  <input type="text" id="postcode" name="POST" value="${resultData.POST}" placeholder="우편번호" class="form-control">
                </div>
                <div class="col">
                  <button type="button" onclick="daumPostcode();"class="btn btn-sm btn-outline-primary" style="margin-top: 2px;">우편번호 찾기</button>
                </div>     
              </div>
              <input type="text" id="address" name="ADDRESS" value="${resultData.ADDRESS}" placeholder="주소" class="form-control" required>
              <input type="text" id="detailAddress" name="ADDRESS_DETAIL" value="${resultData.ADDRESS_DETAIL}" placeholder="상세주소" class="form-control" required>
          </td>
                  <td><input type="text" class="form-control" name="AUTHORITY" value="${resultData.AUTHORITY}" required/></td>
                </tr>
              </tbody>
            </table>
          </div>
        </form>
      </main>
    </div>

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
