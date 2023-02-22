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
            <th scope="col" style="width: 25%">상품 정보</th>
            <th scope="col">제목</th>
            <th scope="col">등록일</th>
            <th scope="col">처리일</th>
            <th scope="col">기능</th>
          </tr>
        </thead>
        <!-- 문의 -->
        <tbody style="font-size: small">
          <tr class="questions text-center">
            <td>2</td>
            <td class="justify-content-left">
              <div class="row">
                <a href="/wine/wine_info" class="col">
                  <img src="../img/wine/wine_canti.png" alt="" width="20px" />
                </a>
                <ul class="list-unstyled col" style="margin: auto">
                  <li>칸티</li>
                  <li><a href="/wine/wine_info">모스카토 다스티</a></li>
                </ul>
              </div>
            </td>
            <td>
              <a href="#myCont" class="left" data-bs-toggle="collapse"
              >많이 달달한가요?</a>
            </td>
            <td>YYYY-MM-DD</td>
            <td>YYYY-MM-DD</td>
            <td>
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
            </td>
          </tr>
          <tr class="collapse" id="myCont">
            <td  class="bg-light p-4" colspan="6">
              <%-- 문의 내용 --%>
              <div>
                <span class="fw-bold fs-5 text-secondary">
                  Q. 
                </span>
                <span>
                  선물용인데 많이 단가요?
                </span>
              </div>
              <%-- 답변 내용 --%>
              <div class="mt-2">
                <span class="fw-bold fs-5 text-danger">
                  A. 
                </span>
                <span>
                 안녕하세요. 와인타임 입니다. 해당 제품은 당도가 ...
                </span>
              </div>
            </td>
          </tr>

          <tr class="text-center">
            <td>1</td>
            <td>
              <div class="row">
                <a href="/wine/wine_info" class="col">
                  <img
                    src="../img/wine/france_CLOS BELLANE COTES DU RHONE VILLAGES VALREAS BLANC ECHALAS.png"
                    alt=""
                    width="80px"
                  />
                </a>
                <ul class="list-unstyled col" style="margin: auto">
                  <li>끌로</li>
                  <li><a href="/wine/wine_info">벨란 꼬뜨 뒤 빌라쥐 발레아 블랑 에찰라</a></li>
                </ul>
              </div>
            </td>
            <td><a href="#myCont2" data-bs-toggle="collapse">선물용으로 적합할까요?</a></td>
            <td>YYYY-MM-DD</td>
            <td>YYYY-MM-DD</td>
            <td>
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
            </td>
          </tr>
          <tr class="collapse" id="myCont2">
            <td  class="bg-light p-4" colspan="6">
              <%-- 문의 내용 --%>
              <div>
                <span class="fw-bold fs-5 text-secondary">
                  Q. 
                </span>
                <span>
                  단거 안 좋아하시는 분 입니다.
                </span>
              </div>
              <%-- 답변 내용 --%>
              <div class="mt-2">
                <span class="fw-bold fs-5 text-danger">
                  A. 
                </span>
                <span>
                 안녕하세요. 와인타임 입니다. 당도가 높지 않는 제품으로는...
                </span>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
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
