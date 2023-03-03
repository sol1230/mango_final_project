<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin boards notice modify</title>
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

      <main class="col-9 p-0 mb-5 ms-5">
        <form action="/admin/adminNoticeUpate/1" method="post">
          <input type="hidden" name="NOTICE_UID" value="${resultMap.NOTICE_UID}" />
          <input type="hidden" name="NOTICE_DATE" value="${resultMap.NOTICE_DATE}" />
          <input type="hidden" name="NAME" value="${resultMap.NAME}" />

          <div class="mt-4 p-4 border bg-white">
            <div>
              <label for="" class="form-label fw-bold pe-3 m-0"
                >공지사항 수정하기</label
              >
            </div>
            <table
              class="mt-3 table border align-middle"
              style="font-size: small"
            >
              <thead class="">
                <tr class="text-center">
                  <th scope="" class="bg-secondary bg-opacity-25">작성일</th>
                  <td scope="" name="NOTICE_DATE">${resultMap.NOTICE_DATE}</td>
                  <th scope="" class="bg-secondary bg-opacity-25">작성자</th>
                  <td scope="" name="NAME">${resultMap.NAME}</td>
                </tr>
                <tr scope="row">
                  <th scope="" class="text-center bg-secondary bg-opacity-25">제목</th>
                  <td scope="" colspan="3">
                    <input
                      type="text"
                      name="NOTICE_TITLE"
                      id="NOTICE_TITLE"
                      class="form-control"
                      value="${resultMap.NOTICE_TITLE}"
                    />
                  </td>
                </tr>
              </thead>
              <tbody>
                <tr scope="row">
                  <th class="bg-secondary bg-opacity-25 text-center">내용</th>
                  <td colspan="3">
                    <textarea
                      class="form-control"
                      name="NOTICE_CONTENT"
                      id="NOTICE_CONTENT"
                      cols="30"
                      rows="10"
                    >${resultMap.NOTICE_CONTENT}</textarea>
                  </td>
                </tr>
                <%-- <tr scope="row" class="text-center">
                  <th class="bg-secondary bg-opacity-25">파일첨부</th>
                  <td colspan="3">
                    <div class="">
                      <input type="file" name="" id="" class="form-control" />
                    </div>
                  </td>
                </tr> --%>
                <c:choose>
                  <c:when test="${not empty resultMap.NOTICE_PHYSICALFILE_NAME}">
                    <tr scope="row">
                      <th class="bg-secondary bg-opacity-25 text-center">첨부한파일</th>
                      <td colspan="3" class="">
                        <img src="/files/${resultMap.NOTICE_PHYSICALFILE_NAME}/${resultMap.NOTICE_ORIGINALFILE_NAME}" class="w-25">
                        <a href="/files/${resultMap.NOTICE_PHYSICALFILE_NAME}/${resultMap.NOTICE_ORIGINALFILE_NAME}">${resultMap.NOTICE_ORIGINALFILE_NAME}</a>
                      </td>
                    </tr>
                  </c:when>
                </c:choose>
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
