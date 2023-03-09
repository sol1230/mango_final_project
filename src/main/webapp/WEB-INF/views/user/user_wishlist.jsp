<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wishlist</title>
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

    <!-- 본 페이지 content -->

        <div class="row g-0 vh-auto">
    <%-- user_nav --%>
    <%@ include file="../etc/user_nav.jsp" %>
    <main class="col-9 p-0 mb-5 ms-5">
      <div class="container">
        <div class="text-center fs-3 fw-bold mt-5">위시리스트</div>
        <div class="mt-2 text-end">
          <button class="btn btn-danger" onclick="deleteAll();">전체 삭제</button>
        </div>
      </div>
<div class="mt-2 d-flex" style="margin:auto;">
      <c:forEach var="w" items="${wishlist}">
      <c:choose>
      <c:when test="${(w.WINE_TYPE).equals('레드')}">
        <div class="row p-3 d-flex">
         <div class="col-md-4">
          
            <div class="card" style="width: 230px">
              <img src="/img/wine/${w.WINE_NAME_EN}.png" alt="" style="background-color: #e8daea" />
              <div class="card-body">
              <input type="hidden" id="wineUid" value="${w.WINE_UID}" />
                <h5 class="card-title">
                  ${w.WINE_NAME}
                  
                </h5>
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(224, 216, 234)"
                  >${w.WINE_TYPE}</span
                >
                <span
                  class="badge badge-pill"
                  style="background-color: rgb(224, 216, 234)"
                  >${w.WINE_COUNTRY}</span
                >
                <br />
                <a href="/wine/wine_info/${w.WINE_NAME}" class="btn btn-outline-danger mt-3">더보기</a>
                <button class="btn btn-danger  mt-3" style="float:right;" onclick="deleteSelected(this);">삭제</button>
            </div>
          </div>
        </div>
      </div>

          </c:when>
 <c:when test="${(w.WINE_TYPE).equals('로제')}">
     <div class="row p-3 d-flex">
           <div class="col-md-4 ">
            <div class="card" style="width: 230px">
              <img src="/img/wine/${w.WINE_NAME_EN}.png" alt=""  style="background-color: #ffe2e2"/>
              <div class="card-body">
              <input type="hidden" id="wineUid" value="${w.WINE_UID}" />
                <h5 class="card-title">
                  ${w.WINE_NAME}
                 
                </h5>
                <span
                  class="badge badge-pill"
                  style="background-color: #ffe2e2"
                  >${w.WINE_TYPE}</span
                >
                <span
                  class="badge badge-pill"
                  style="background-color: #ffe2e2"
                  >${w.WINE_COUNTRY}</span
                >
                <br />
                <a href="/wine/wine_info/${w.WINE_NAME}" class="btn btn-outline-danger mt-3">더보기</a>
                <button class="btn btn-danger  mt-3" style="float:right;" onclick="deleteSelected(this);">삭제</button>
            </div>
          </div>
          </div>
          </div>

</c:when>
<c:when test="${(w.WINE_TYPE).equals('화이트')}">
    <div class="row p-3 d-flex">
           <div class="col-md-4 ">
            <div class="card" style="width: 230px">
              <img src="/img/wine/${w.WINE_NAME_EN}.png" alt="" style="background-color: #fffbb0" />
              <div class="card-body">
              <input type="hidden" id="wineUid" value="${w.WINE_UID}" />
                <h5 class="card-title">
                  ${w.WINE_NAME}
                  
                </h5>
                <span
                  class="badge badge-pill"
                  style="background-color: #fffbb0"
                  >${w.WINE_TYPE}</span
                >
                <span
                  class="badge badge-pill"
                  style="background-color: #fffbb0"
                  >${w.WINE_COUNTRY}</span
                >
                <br />
                <a href="/wine/wine_info/${w.WINE_NAME}" class="btn btn-outline-danger mt-3">더보기</a>
                <button class="btn btn-danger  mt-3" style="float:right;" onclick="deleteSelected(this);">삭제</button>
              </div>
          </div>
</div>
          </div>
</c:when>
   <c:otherwise>
       <div class="row p-3 d-flex">
           <div class="col-md-4">
            <div class="card" style="width: 230px">
              <img src="/img/wine/${w.WINE_NAME_EN}.png" alt="" style="background-color: #d7f6f8" />
              <div class="card-body">
              <input type="hidden" id="wineUid" value="${w.WINE_UID}" />
                <h5 class="card-title">
                  ${w.WINE_NAME}
               
                </h5>
                <span
                  class="badge badge-pill"
                  style="background-color: #d7f6f8"
                  >${w.WINE_TYPE}</span
                >
                <span
                  class="badge badge-pill"
                  style="background-color: #d7f6f8"
                  >${w.WINE_COUNTRY}</span
                >
                <br />
                <a href="/wine/wine_info/${w.WINE_NAME_EN}" class="btn btn-outline-danger mt-3">더보기</a>
                <button class="btn btn-danger  mt-3" style="float:right;" onclick="deleteSelected(this);">삭제</button>
            </div>
          </div>
          </div>
          </div>
</c:otherwise>
</c:choose>
</c:forEach>
       </div>
      </main>
    </div>

    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>
    <script>
    function deleteSelected(btn) {

      var wineUid = $(btn).siblings('#wineUid').val();
			
 $.ajax({
  url:"/user/deleteWishlist",
  type:"post",
  data:{
    USER_UID:"${loginUser.USER_UID}",
    WINE_UID: wineUid
   },
  success:function(result){
    if(result == 'success'){
						return new swal({
							title:"삭제되었습니다.",
							icon:"success",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								location.reload();
							}
						})
					}else{
						return new swal({
							title:"삭제에 실패하였습니다.",
							icon:"error",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								return false;
							}
						})
  
 
          }
  }
  })
  }
    </script>

     <script>
    function deleteAll(btn) {

      var wineUid = $(btn).siblings('#wineUid').val();
			
 $.ajax({
  url:"/user/deleteAllWishlist",
  type:"post",
  data:{
    USER_UID:"${loginUser.USER_UID}",
    WINE_UID: wineUid
   },
  success:function(result){
    if(result == 'success'){
						return new swal({
							title:"삭제되었습니다.",
							icon:"success",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								location.href="/user/myWishlist";
							}
						})
					}else{
						return new swal({
							title:"삭제에 실패하였습니다.",
							icon:"error",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								return false;
							}
						})
  
 
          }
  }
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