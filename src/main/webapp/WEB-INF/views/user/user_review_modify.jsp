<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My review modify</title>
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
    <div class="row g-0 vh-auto ">
      <%-- user_nav --%>
      <%@ include file="../etc/user_nav.jsp" %>
      <main class="col-9 p-0 mb-5 ms-5">
        
          <div class="mt-4 p-4 border bg-white">
            <div>
              <label for="" class="form-label fw-bold pe-3 m-0"
                >리뷰 수정하기</label
              >
            </div>
            <table
              class="mt-3 table border text-center align-middle"
              style="font-size: small"
            >
              <thead class="">
                <tr colspan="">
                  <th scope="" class="bg-secondary bg-opacity-25">작성일</th>
                  <td scope="" name="REVIEW_DATE">${review.REVIEW_DATE}</td>
                </tr>
                <tr>
                  <th scope="" class="bg-secondary bg-opacity-25">제목</th>
                  <td scope="">
                    <input
                      type="text"
                      name="REVIEW_TITLE"
                      class="form-control"
                       id="review_title"
                      value="${review.REVIEW_TITLE}"
                    />
                  <th scope="" class="bg-secondary bg-opacity-25">평점</th>
                  <td scope="">
                    <input
                      type="text"
                      name="REVIEW_SCOPE"
                      class="form-control"
                      id="review_scope"
                      value="${review.REVIEW_SCOPE}"
                    />
                  </td>
                </tr>
              </thead>
              <tbody>
                <tr scope="row">
                  <th class="bg-secondary bg-opacity-25">내용</th>
                  <td colspan="3">
                    <textarea
                      class="form-control"
                      name="REVIEW_CONTENT"
                      cols="30"
                      rows="10"
                      id="review_contents"
                    >${review.REVIEW_CONTENT}</textarea
                    >
                  </td>
                </tr>
              </tbody>
            </table>
            <div class="text-center">
              <button onclick="myReviewUpdate();" class="btn btn-outline-secondary">
                수정하기
              </button>
            </div>
          </div>
     
      </main>
    </div>

    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>
    <script>
    function myReviewUpdate() {
			
 $.ajax({
  url:"/user/myReviewUpdate",
  type:"post",
  data:{
    USER_UID:"${loginUser.USER_UID}",
    REVIEW_TITLE: $("#review_title").val(),
    REVIEW_CONTENT: $("#review_contents").val(),
    REVIEW_UID:"${review.REVIEW_UID}",
    REVIEW_SCOPE:$("#review_scope").val()
   },
  success:function(result){
    if(result == 'success'){
						return new swal({
							title:"수정되었습니다.",
							icon:"success",
							closeOnClickOutside:false
						})
						.then((value) => {
							if(value){
								location.href="/user/myReview"
							}
						})
					}else{
						return new swal({
							title:"등록에 실패하였습니다.",
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
