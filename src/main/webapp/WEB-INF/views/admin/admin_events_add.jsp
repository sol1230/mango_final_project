<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin events add</title>
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
  <body class="bg-light">
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>

    <!-- 본 페이지 content -->
    <div class="row g-0 vh-100">
    <%@ include file="../etc/admin_nav.jsp" %>
      <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="todayDateForm" />
      <main class="col-9 p-0 mb-5 ms-5">
        <form action="/admin/adminEventInsert/1" method="post" enctype = "multipart/form-data" id="eventAddFrom">
          <input type="hidden" name="USER_UID" value="ADMIN" />
          <div class="mt-4 p-4 border bg-white">
            <div>
              <label for="" class="form-label fw-bold pe-3 m-0"
                >이벤트 작성하기</label
              >
            </div>
            <table
              class="mt-3 table border text-center align-middle"
              style="font-size: small"
            >
              <thead class=" align-middle">
                <tr scope="row">
                  <th scope="" class="bg-secondary bg-opacity-25" >작성일</th>
                  <td scope="" name="EVENT_DATE" class="w-35">
                    ${todayDateForm}
                  </td>

                  <th scope="" class="bg-secondary bg-opacity-25">작성자</th>
                  <td scope="" name="NAME">관리자</td>
                </tr>
                <tr scope="row">
                  <th scope="" class="bg-secondary bg-opacity-25">제목</th>
                  <td scope="" colspan="3">
                    <input
                      type="text"
                      name="EVENT_TITLE"
                      id="EVENT_TITLE"
                      class="form-control"
                      placeholder="제목을 입력해 주세요."
                    />
                  </td>
                </tr>
                <tr scope="row">
                  <th scope="" class="bg-secondary bg-opacity-25">이벤트 기간</th>
                  <td scope="" colspan="1">
                    <input
                      type="date"
                      name="EVENT_START"
                      id="EVENT_START"
                      class="form-control"
                    />
                  </td>
                  <td>
                    ~
                  </td>
                  <td scope="" colspan="1">
                    <input
                      type="date"
                      name="EVENT_END"
                      id="EVENT_END"
                      class="form-control"
                    />
                  </td>
                </tr>
              </thead>
              <tbody class=" align-middle">
                <tr scope="row">
                  <th class="bg-secondary bg-opacity-25">내용</th>
                  <td colspan="3">
                    <textarea
                      class="form-control"
                      name="EVENT_CONTENT"
                      id="EVENT_CONTENT"
                      cols="30"
                      rows="10"
                    ></textarea>
                  </td>
                </tr>
                <tr scope="row">
                  <th class="bg-secondary bg-opacity-25">파일첨부</th>
                  <td colspan="3">
                    <div class="">
                      <input type="file" name="EVENT_FILE" id="" class="form-control" />
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
            <div class="text-center">
              <button type="submit" class="btn btn-outline-secondary">
                등록하기
              </button>
            </div>
          </div>
        </form>
      </main>
    </div>
    <script>
      $(function () {
        $("#eventAddFrom").submit(function(){
          var eventStart = $("#EVENT_START").val();
          var eventEnd = $("#EVENT_END").val();
          var startArray = eventStart.split('-');
          var endArray = eventEnd.split('-');
          var startDate = new Date(startArray[0], startArray[1], startArray[2]);
          var endDate = new Date(endArray[0], endArray[1], endArray[2]);
          if(startDate.getTime() > endDate.getTime()) {
            alert("종료날짜보다 시작날짜가 작아야합니다.");
            return false;
          }
        });
      });
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
