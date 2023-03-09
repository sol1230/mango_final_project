<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My review</title>
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
    <!-- 로그인한 회원만 보여지는 리뷰-->

    <div class="row g-0 vh-auto ">
      <%-- user_nav --%>
      <%@ include file="../etc/user_nav.jsp" %>
      <main class="col-9 p-0 mb-5 ms-5">
      <div class="fs-4 fw-bold text-center" style="margin-top: 3rem">
        내가 작성한 리뷰
      </div>
      <div class="content mb-5">
        <br /><br />
          <table
            id="boardList"
            class="table table-hover"
            style="text-align: center"
          >
            <thead>
              <tr>
                <th>번호</th>
                <th>작성일</th>
                <th>상품명</th>
                <th>제목</th>
                <th>평점</th>
                <th>기능</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="r" items="${list}" varStatus="loop">
              <tr>
              <%-- 리뷰 --%>
                <td>${r.NUMBER}</td>
                <td>${r.REVIEW_DATE}</td>
                <td>
                <img src="/img/wine/${r.WINE_NAME_EN}.png" width="30"/>
                <a href="/wine/wine_info/${r.WINE_NAME_EN}/1">${r.WINE_NAME}</a></td>
                <td> <a href="#myReview${loop.count}" class="left" data-bs-toggle="collapse">${r.REVIEW_TITLE}</a></td>
                <td>${r.REVIEW_SCOPE}</td>
                <td>
                <div class="d-flex justify-content-center">
                  <div>
                    <form action="/user/myReview_edit" method="post">
                    <input type="hidden" name="REVIEW_UID" value="${r.REVIEW_UID}" />
                    <input type="hidden" name="REVIEW_DATE" value="${r.REVIEW_DATE}" />
                    <input type="hidden" name="REVIEW_TITLE" value="${r.REVIEW_TITLE}" />
                    <input type="hidden" name="REVIEW_SCOPE" value="${r.REVIEW_SCOPE}" />
                    <input type="hidden" name="REVIEW_CONTENT" value="${r.REVIEW_CONTENT}" />
                      <button class="btn btn-sm btn-outline-secondary">
                        수정
                      </button>
                    </form>
                  </div>
                  <div>
                    
                   <input type="hidden" name="delete" id="REVIEWUID" value="${r.REVIEW_UID}" />
                      <button
                        class="btn btn-sm btn-outline-danger"
                        onclick="deleteReview(this);"
                      >
                      
                        삭제
                      </button>
                  </div>
                </div>
              </td>
              </tr>
              <tr class="collapse" id="myReview${loop.count}">
                  <td  class="bg-light p-4" colspan="7">
                 
                    <div>
                      <span>
                        ${r.REVIEW_CONTENT}
                      </span>
                    </div>
                  </td>
              </tr>
              </c:forEach>
              
            </tbody>
          </table>
        </div>
        </main>
      </div>

    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>

    <script>
      function deleteReview(btn) {
        var REVIEW_UID = $(btn).siblings('input[name=delete]').val();

        $.ajax({
          url:"/user/deleteMyReview",
          type:"post",
          data:{
            USER_UID:"${loginUser.USER_UID}",
            REVIEW_UID:REVIEW_UID
          },
          success:function(result){
            if(result == 1){
              return new swal({
                title:"삭제되었습니다",
                icon:"success",
                closeOnClickOutside:false
              })
              .then((value) => {
                if(value){
                  location.href="/user/myReview";
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
