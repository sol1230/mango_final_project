<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	 <!-- sweetalert -->
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<%-- header --%>
  <header
      class="d-flex justify-content-between align-items-center border-bottom"
    >
      <nav class="navbar p-0" id="navbarHeader">
        <a href="/index" class="navbar-brand p-3">
          <img src="/img/와인.png" alt="logo" height="50rem" />
        </a>
        <div>
           <nav class="fw-bold nav">
            <a href="/notice_N_qna/notice_questions" class="nav-link link-dark">FAQ</a>
            <a href="/notice/notice/1" class="nav-link link-dark">공지</a>
            <a href="/event/event" class="nav-link link-dark">이벤트</a>
          </nav>
        </div>
        <form action="/wine/wineDetailsSelect/1" method="get" class="d-flex">
          <input
            class="form-control me-2"
            name="WINESEARCH_NAME"
            type="search"
            placeholder="상품을 입력하세요."
            aria-label="Search"
            value="${searchName}"
            required
          />
          <button
            class="btn btn-outline-danger"
            type="submit"
            style="width: 30%"
            id="searchWineButton"
          >
            검색
          </button>
      </nav>
      </form>
      <div class="">
        <nav class="fw-bold nav align-items-center pt-2">
          <a href="" class="nav-link link-dark"
            ><i class="material-icons col-1 text-secondary fs-3" id="language">
              language
            </i></a
          >
          <c:choose>
          <c:when test="${empty loginUser}">
          <%-- <!--로그인 전 --> --%>
          <a
            href="#modalTarget02"
            class="nav-link link-dark"
            data-bs-toggle="modal"
            ><i class="material-icons col-1 text-secondary fs-3" id="person">
              person</i
            ></a
          >
          </c:when>
          
          <%-- 로그인 후 --%>

          <c:otherwise>
            <c:if test="${loginUser.authority eq 'USER'}">
            <a
              href="/user/myPage"
              class="nav-link link-dark"
              ><i class="material-icons col-1 text-secondary fs-3" id="">
                person</i
              ></a
            >
            </c:if>
            <c:if test="${loginUser.authority eq 'ADMIN'}">
            <a
              href="/admin/admin_users"
              class="nav-link link-dark"
              ><i class="material-icons col-1 text-secondary fs-3" id="">
                person</i
              ></a
            >
            </c:if>
          </c:otherwise>
          </c:choose>
          <a
            href="/user/user_wishlist"
            class="nav-link link-dark"
            ><i class="material-icons col-1 text-secondary fs-3" id="favorite">
              favorite</i
            ></a
          >
        </nav>
      </div>
    </header>
    
    <%-- <!-- 로그인 modal --> --%>

    <div class="modal fade" id="modalTarget02">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content text-center p-5">
          <div class="fs-4 fw-bold">로그인</div>
            <div class="pt-3">
              <div class="">
                <div class="">
                  <input
                    type="text"
                    class="form-control" id="loginId"
                    name="user_uid"
                    placeholder="아이디"                    
                  />
                </div>
                <div class="pt-3">
                  <input type="password" id="loginPwd" class="form-control" name="password"
                    placeholder="비밀번호"                    
                  />
                </div>
              </div>
              <div class="text-center pt-4">
                <button class="btn btn-danger form-control" onclick="check();">로그인</button>
              </div>
              <div class="pt-2 d-flex justify-content-between">
                <div>
                  <a
                    href="/signup_N_login/login_find_id"
                    class="text-decoration-none text-secondary"
                    style="font-size: small"
                    >아이디/비밀번호 찾기</a
                  >
                </div>
                <div>
                  <a
                    href="/signup_N_login/signup_terms"
                    class="text-decoration-none text-secondary"
                    style="font-size: small"
                    >회원가입</a
                  >
                </div>
              </div>
             </div>
            </div>
        </div>
      </div>
      
   <script>
   
	function check(){
      if($("#loginId").val() == "") {
        alert("아이디를 입력해주세요.");
        return false;
      }
   
      if($("#loginPwd").val() == ""){
          alert("비밀번호를 입력해주세요.");
        return false;
      }
		$.ajax({
				url:"/login",
				type:"post",
				data:{
					user_uid:$("#loginId").val(),
					password:$("#loginPwd").val()
				},
				success:function(result){
					
					if(result == 'S'){
						return new swal({
							title:"로그인되었습니다.",
							icon:"success",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								location.href="/index";
							}
						})
					}else{
						return new swal({
							title:"로그인에 실패하였습니다.",
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
					cosole.log("열람 참조용 ajax통신 실패")
				}
			})
	}
   
   </script>
</body>
</html>

   