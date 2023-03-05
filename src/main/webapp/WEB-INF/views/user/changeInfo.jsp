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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	 <!-- sweetalert -->
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
      <form method="post">
        <div class="pt-3">
          <div class="">
            <label for="" class="pb-1">아이디</label>
            <input type="text" class="form-control" name="user_uid" value="${loginUser.user_uid}" readonly />
          </div>
          <div class="pt-3">            
            <label for="" class="pb-1">현재 비밀번호</label>
            <input
              type="password"
              class="form-control"
              name="password"
              id="password"
              required              
            />
          </div>

          <div class="pt-3">
            <label for="" class="pb-1">변경할 비밀번호</label>
            <input
              type="password"
              class="form-control"
              name="password1"
              id="password1"
              required      
            />
          </div>

          <div class="pt-3">
            <label for="" class="pb-1">비밀번호 확인</label>
            <input
              type="password"
              class="form-control"
              name="password2"
              id="password2"
              required              
            />
          </div>

          <div class="pt-3">
            <label for="" class="pb-1">이름</label>
            <input type="text" class="form-control" name="name" value="${loginUser.name}" readonly/>
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">생년월일</label>
            <input
              type="date"
              name="birth"
              id="birth"
              class="form-control"
              value="${loginUser.birth}"              
              readonly
            />
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">성별</label>
            <input type="text" class="form-control" id="gender" value="${loginUser.gender}" readonly/>
          </div>
          <div class="pt-3">
            <label for="" class="pb-1">휴대전화</label>            
            <div class="row">
              <div class="col">
                <select class="form-select" name="phone1" id="phone1" required>
                  <option>선택</option>
                  <option value="010">010</option>
                  <option value="011">012</option>
                  <option value="013">013</option>
                </select>
              </div>
              <div class="col">                
                <input
                  type="text"
                  name="phone2"
                  id="phone2"
                  class="form-control rounded mb-2"
                  maxlength="4"
                  required
                />
              </div>
              <div class="col">
                <input
                  type="text"
                  name="phone3"
                  id="phone3"
                  class="form-control rounded mb-2"
                  maxlength="4"
                  required
                />
              </div>
              <div class="pt-3">
                <label for="" class="pb-1">주소</label>
                <div class="row">
                  <div class="col">
                    <input type="text" id="postcode" name="post" placeholder="우편번호" value ="${loginUser.post}"class="form-control">
                  </div>
                  <div class="col">
                    <button type="button" onclick="daumPostcode();"class="btn btn-sm btn-outline-primary" style="margin-top: 2px;">우편번호 찾기</button>
                  </div>     
                </div>
                <input type="text" id="address" name="address" placeholder="주소" class="form-control" value ="${loginUser.address}">
                <input type="text" id="detailAddress" name="addressDetail" placeholder="상세주소" class="form-control" value ="${loginUser.addressDetail}">
              </div>
            </div>
          </div>
        </div>

        <!-- 모달 추가 -->
        <div class="mt-5 mb-5 text-center">         
          <button type="button" class="btn btn-secondary btn-lg w-25 text-decoration-none text-white" style="margin-right: 10px" onclick="changeCheck();">
          수정하기
          </button>
          <button type="button" class="btn btn-danger btn-lg w-25 text-decoration-none text-white" style="margin-left: 10px" onclick="bye();">
            탈퇴하기
          </button>
        </div>
      </form>
    </div>
    

    
    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>

  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 
  <script> 
    $(function(){      
      var phone = "${loginUser.phone}"
      var phone1 = phone.substr(0,3);
      var phone2 = phone.substr(4,4);
      var phone3 = phone.substr(9,4);
      $("select[name=phone1]").val(phone1);
      $("#phone2").val(phone2);
      $("#phone3").val(phone3);

    
    });

function bye() {
 $.ajax({
  url:"/user/delete",
  type:"post",
  data:{
    password:$("#password").val(),
    user_uid:"${loginUser.user_uid}"
   },
  success:function(result){
    if(result == 'S'){
						return new swal({
							title:"탈퇴가 완료되었습니다.",
							icon:"success",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								location.href="/index";
							}
						})
					}else if(result == 'F2'){
						return new swal({
							title:"현재 비밀번호가 틀렸습니다.",
							icon:"error",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								return false;
							}
						})
  
 
          }
  },error:function(){
					new swal({
							title:"탈퇴에 실패하였습니다.",
							icon:"error",
							closeOnClickOutside:false
						})
				}
  })
  }

  function changeCheck(){

      if($("#password").val() == "") {
        alert("현재 비밀번호를 입력해주세요.");
        return false;
      }   
      if($("#password1").val() != $("#password2").val()){
          alert("변경 비밀번호와 비밀번호 확인이 다릅니다.");
        return false;
      }    
    $.ajax({
				url:"/user/changeUser",
				type:"post",
				data:{
					user_uid:"${loginUser.user_uid}",
          password:$("#password").val(),
					password1:$("#password1").val(),
          phone1:$("#phone1").val(),
          phone2:$("#phone2").val(),
          phone3:$("#phone3").val(),
          post:$("#postcode").val(),
          addressDetail:$("#detailAddress").val(),
          address:$("#address").val()
				},
				success:function(result){
					
					if(result == 'S'){
						return new swal({
							title:"회원정보가 변경되었습니다.",
							icon:"success",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								location.href="/user/myPage";
							}
						})
					}else if(result == 'F1'){
						return new swal({
							title:"현재 비밀번호가 틀렸습니다.",
							icon:"error",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								return false;
							}
						})
					}else {
            return new swal({
							title:"수정에 실패하였습니다.",
							icon:"error",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								return false;
							}
						})
          }
				},error:function(){
					new swal({
							title:"수정에 실패하였습니다.",
							icon:"error",
							closeOnClickOutside:false
						})
				}
			})
    
	}
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
