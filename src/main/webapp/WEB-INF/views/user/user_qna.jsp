<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Q&A</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="/css/font.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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

  <style>
    .table.table td {
      vertical-align: middle;
    }

    a {
      text-decoration: none;
      color: black;
    }

    .table tr.my_qna {
      display: none;
    }

    .table tr.my_qna.is-active {
      display: table-row;
    }

    .table.table-col td.left {
      text-align: left;
    }
  </style>
  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <%-- 본 페이지 --%>
    <!-- 로그인한 회원만 보여지는 상품 문의내역-->
 <div class="row g-0 vh-auto">
    <%-- user_nav --%>
    <%@ include file="../etc/user_nav.jsp" %>
      <main class="col-9 pt-3 pb-5 mb-5 ms-5">
      <div
        class="fs-4 fw-bold text-center"
        style="margin-top: 3rem; margin-bottom: 3rem"
      >
        나의 문의 내역
      </div>
      <table id="boardList" class="table ">
        <thead>
          <tr class="text-center">
            <th scope="col">번호</th>
            <th scope="col" style="width: 25%">상품명</th>
            <th scope="col">제목</th>
            <th scope="col">답변상태</th>
            <th scope="col">등록일</th>
            <th scope="col">처리일</th>
            <th scope="col">기능</th>
          </tr>
        </thead>
        <!-- 문의 -->
        <tbody style="font-size: small">
         <c:forEach var="q" items="${qna}" varStatus="loop">
        
          <tr class="questions text-center">
            <td>${q.NUMBER}</td>
            <td><a href="/wine/wine_info/${r.WINE_NAME_EN}/1">${q.WINE_NAME}</a></td>
            <td><a href="#myQna${loop.count}" class="left" data-bs-toggle="collapse">${q.QNA_TITLE}</a></td>
            <td>${q.ANSWER_STATUS}</td>
            <td>${q.QNA_DATE}</td>
            <td>${q.QNA_ANSWER_DATE}</td>
           <td>
                <div class="d-flex justify-content-center">
                  <div>
                    
                      <button
                       class="btn btn-sm btn-outline-secondary"
                      >
                        <a href="/user/user_qna_modify">수정</a>
                      </button>
                   
                  </div>
                  <div>
                   <input type="hidden" id="QNAUID" value="${q.QNA_UID}" />
                      <button
                        type="submit"
                        class="btn btn btn-sm btn-outline-danger"
                          onclick="deleteSelected(this);"
                      >
                        삭제
                      </button>
                  
                  </div>
                </div>
              </td>
          </tr>
          <tr class="collapse" id="myQna${loop.count}">
                  <td  class="bg-light p-4" colspan="7">
                    <%-- 문의 내용 --%>
                    <div>
                     <span class="fw-bold fs-5 text-secondary">
                        Q. 
                      </span>
                      <span>
                        ${q.QNA_CONTENT}
                      </span>
                    </div>
                    <%-- 답변 내용 --%>
                    <div class="mt-2">
                      <span class="fw-bold fs-5 text-danger">
                        A. 
                      </span>
                      <span>
                        ${q.QNA_ANSWER}
                      </span>
                    </div>
                  </td>
          </tr>
          
          </c:forEach>
        </tbody>
      </table>
      </main>
    </div>

    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>

     <script>
    function deleteSelected(btn) {

      var QNAUID = $(btn).siblings('#QNAUID').val();
			
 $.ajax({
  url:"/user/deleteQna",
  type:"post",
  data:{
    USER_UID:"${loginUser.USER_UID}",
    QNA_UID: QNAUID
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
    
       <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
