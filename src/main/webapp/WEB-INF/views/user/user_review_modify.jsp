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
                <th>제품</th>
                <th>내용</th>
                <th>기능</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>2</td>
                <td>YYYY-MM-DD</td>
                <td><a href="/wine/wine_info">칸티 모스카토 다스티</a></td>
                <td>기대를 안했었는데 맛있었어요 치즈랑 잘 어울려요</td>
                <td>
                  <div>
                    <form action="" method="post">
                      <button class="btn btn-outline-secondary btn-sm">
                        수정
                      </button>
                      <button
                        class="btn btn-outline-danger btn-sm"
                        onclick="if(!confirm('정말로 삭제하시겠습니까?')) return false"
                      >
                        삭제
                      </button>
                      <input type="hidden" name="user_id" value="" />
                    </form>
                  </div>
                </td>
              </tr>

              <tr>
                <td>1</td>
                <td>YYYY-MM-DD</td>
                <td><a href="#">반피 티아라 모스카토</a></td>
                <td>행사 상품이라 구매해봤는데 괜찮았어요</td>
                <td>
                  <div>
                    <form action="" method="post">
                      <button class="btn btn-outline-secondary btn-sm">
                        수정
                      </button>
                      <button
                        class="btn btn-outline-danger btn-sm"
                        onclick="if(!confirm('정말로 삭제하시겠습니까?')) return false"
                      >
                        삭제
                      </button>
                      <input type="hidden" name="user_id" value="" />
                    </form>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        </main>
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
