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
        <form action="/admin/admin_boards" method="">
          <input type="hidden" name="notice_date" value="2023.02.05" />
          <input type="hidden" name="notice_writer" value="관리자" />
          <div class="mt-4 p-4 border bg-white">
            <div>
              <label for="" class="form-label fw-bold pe-3 m-0"
                >공지사항 수정하기</label
              >
            </div>
            <table
              class="mt-3 table border text-center align-middle"
              style="font-size: small"
            >
              <thead class="">
                <tr>
                  <th scope="" class="bg-secondary bg-opacity-25">작성일</th>
                  <td scope="" name="notice_date">2023.02.05</td>

                  <th scope="" class="bg-secondary bg-opacity-25">작성자</th>
                  <td scope="" name="notice_writer">관리자</td>
                </tr>
                <tr scope="row">
                  <th scope="" class="bg-secondary bg-opacity-25">제목</th>
                  <td scope="" colspan="3">
                    <input
                      type="text"
                      name="notice_title"
                      id="notice_title"
                      class="form-control"
                      placeholder="휴무안내"
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
                      name="notice_contents"
                      id="notice_contents"
                      cols="30"
                      rows="10"
                    >
설 연휴기간으로 불편함에 유의하시기 바랍니다.</textarea
                    >
                  </td>
                </tr>
                <tr scope="row">
                  <th class="bg-secondary bg-opacity-25">파일첨부</th>
                  <td colspan="3">
                    <div class="">
                      <input type="file" name="" id="" class="form-control" />
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
