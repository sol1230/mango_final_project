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
    <title>Admin boards add</title>
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
    
    <%-- admin nav --%>
    <%@ include file="../etc/admin_nav.jsp" %>
    <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="todayDateForm" />
      <main class="col-9 p-0 mb-5 ms-5">
        <form action="/admin/adminNoticeInsert/1" method="post" enctype = "multipart/form-data">
          <input type="hidden" name="USER_UID" value="ADMIN" />
          <div class="mt-4 p-4 border bg-white">
            <div>
              <label for="" class="form-label fw-bold pe-3 m-0"
                >공지사항 작성하기</label
              >
            </div>
            <table
              class="mt-3 table border text-center align-middle"
              style="font-size: small"
            >
              <thead class=" align-middle">
                <tr>
                  <th scope="" class="bg-secondary bg-opacity-25">작성일</th>
                  <td scope="" name="NOTICE_DATE" class="w-50">
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
                      name="NOTICE_TITLE"
                      id="NOTICE_TITLE"
                      class="form-control"
                      placeholder="제목을 입력해 주세요."
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
                      name="NOTICE_CONTENT"
                      id="NOTICE_CONTENT"
                      cols="30"
                      rows="10"
                    ></textarea>
                  </td>
                </tr>
                <tr scope="row">
                  <th class="bg-secondary bg-opacity-25">파일첨부</th>
                  <td colspan="3">
                    <div class="">
                      <input type="file" name="NOTICE_FILE" id="" class="form-control" />
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

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
