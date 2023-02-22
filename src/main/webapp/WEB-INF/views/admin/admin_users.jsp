<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin users</title>
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
        <div class="mt-4 p-4 border bg-white">
          <form action="">
            <div
              class="d-flex justify-content-between align-items-center input-group"
            >
              <div class="d-flex align-items-center">
                <div>
                  <label for="" class="form-label fw-bold pe-3 m-0"
                    >회원목록</label
                  >
                </div>
                <div>
                  <div class="input-group">
                    <select class="form-select" name="keyField" id="">
                      <option>선택</option>
                      <option value="USER_ID">아이디</option>
                      <option value="NAME">이름</option>
                      <option value="BIRTH_DATE">생년월일</option>
                      <option value="PHONE">전화번호</option>
                    </select>
                    <input type="text" class="form-control w-50" />
                    <button class="btn btn-outline-secondary">검색</button>
                  </div>
                </div>
              </div>
              <div class="justify-content-right align-items-center pt-2">
                <a href="/admin/admin_users_add" class="text-secondary">
                  <span class="material-symbols-outlined fs-3"> add_box </span>
                </a>
              </div>
            </div>
          </form>
          <table
            class="mt-3 table table-hover text-center align-middle"
            style="font-size: small"
          >
            <thead class="bg-secondary bg-opacity-25">
              <tr>
                <th scope="">번호</th>
                <th scope="">아이디</th>
                <th scope="">이름</th>
                <th scope="">생년월일</th>
                <th scope="">성별</th>
                <th scope="">휴대전화</th>
                <th scope="">기능</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="">1</th>
                <td>somsom</td>
                <td>이소미</td>
                <td>2001-02-04</td>
                <td>여</td>
                <td>010-2033-5487</td>
                <td class="d-flex justify-content-center">
                  <form action="/admin/admin_users_modify">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      수정
                    </button>
                  </form>
                  <form action="" class="ps-2">
                    <button
                      type="submit"
                      class="btn btn btn-sm btn-outline-danger"
                    >
                      삭제
                    </button>
                  </form>
                </td>
              </tr>
              <tr>
                <th scope="">2</th>
                <td>jin0916</td>
                <td>김진우</td>
                <td>1995-11-21</td>
                <td>남</td>
                <td>010-5513-0422</td>
                <td class="d-flex justify-content-center">
                  <form action="/admin/admin_users_modify">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      수정
                    </button>
                  </form>
                  <form action="" class="ps-2">
                    <button
                      type="submit"
                      class="btn btn btn-sm btn-outline-danger"
                    >
                      삭제
                    </button>
                  </form>
                </td>
              </tr>
              <tr>
                <th scope="">3</th>
                <td>hi_i</td>
                <td>주현영</td>
                <td>1993-08-08</td>
                <td>여</td>
                <td>010-9885-5165</td>
                <td class="d-flex justify-content-center">
                  <form action="/admin/admin_users_modify">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      수정
                    </button>
                  </form>
                  <form action="" class="ps-2">
                    <button
                      type="submit"
                      class="btn btn btn-sm btn-outline-danger"
                    >
                      삭제
                    </button>
                  </form>
                </td>
              </tr>
              <tr>
                <th scope="">4</th>
                <td>happy01</td>
                <td>강혁</td>
                <td>1992-09-27</td>
                <td>남</td>
                <td>010-6547-6465</td>
                <td class="d-flex justify-content-center">
                  <form action="/admin/admin_users_modify">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      수정
                    </button>
                  </form>
                  <form action="" class="ps-2">
                    <button
                      type="submit"
                      class="btn btn btn-sm btn-outline-danger"
                    >
                      삭제
                    </button>
                  </form>
                </td>
              </tr>
              <tr>
                <th scope="">5</th>
                <td>gugu</td>
                <td>김석훈</td>
                <td>1990-03-14</td>
                <td>남</td>
                <td>010-3566-9182</td>
                <td class="d-flex justify-content-center">
                  <form action="/admin/admin_users_modify">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      수정
                    </button>
                  </form>
                  <form action="" class="ps-2">
                    <button
                      type="submit"
                      class="btn btn btn-sm btn-outline-danger"
                    >
                      삭제
                    </button>
                  </form>
                </td>
              </tr>
            </tbody>
          </table>
          <div class="pagination pagination-sm justify-content-center mt-4">
            <a class="page-item page-link" href="">Pre</a>
            <a class="page-item page-link" href="">1</a>
            <a class="page-item page-link" href="">2</a>
            <a class="page-item page-link" href="">3</a>
            <a class="page-item page-link" href="">4</a>
            <a class="page-item page-link" href="">Next</a>
          </div>
        </div>
      </main>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
