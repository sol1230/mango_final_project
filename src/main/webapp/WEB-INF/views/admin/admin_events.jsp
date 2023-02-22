<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin event</title>
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
  <body class="bg-light h-100">
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
                    >이벤트 목록</label
                  >
                </div>
              </div>
              <div class="justify-content-right align-items-center pt-2">
                <a href="/admin/admin_events_add" class="text-secondary">
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
                <th scope="">이벤트코드</th>
                <th scope="">이벤트이미지</th>
                <th scope="">이벤트제목</th>
                <th scope="">작성일</th>
                <th scope="">기능</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="">E01B01</th>
                <td scope="">
                  <img
                    src="../img/2023대한민국와인출품안내썸네일.jpg"
                    alt=""
                    style="width: 3rem"
                  />
                </td>
                <td>2023 대한민국 주류대상 와인출품 안내</td>
                <td>2023.01.05</td>
                <td>
                  <div class="d-flex justify-content-center">
                    <div>
                      <form action="/admin/admin_event_modify">
                        <button
                          type="submit"
                          class="btn btn-sm btn-outline-secondary"
                        >
                          수정
                        </button>
                      </form>
                    </div>
                    <div>
                      <form action="" class="ps-2">
                        <button
                          type="submit"
                          class="btn btn btn-sm btn-outline-danger"
                        >
                          삭제
                        </button>
                      </form>
                    </div>
                  </div>
                </td>
              </tr>

              <tr>
                <th scope="">E01B02</th>
                <td scope="">
                  <img
                    src="../img/에노테카시그니엘신규입고와인.jpg"
                    style="width: 3rem"
                    alt=""
                  />
                </td>
                <td>[에노테카 시그니엘 부산점] 신규 입고 와인, 된호프</td>
                <td>2023.01.05</td>
                <td>
                  <div class="d-flex justify-content-center">
                    <div>
                      <form action="">
                        <button
                          type="submit"
                          class="btn btn-sm btn-outline-secondary"
                        >
                          수정
                        </button>
                      </form>
                    </div>
                    <div>
                      <form action="" class="ps-2">
                        <button
                          type="submit"
                          class="btn btn btn-sm btn-outline-danger"
                        >
                          삭제
                        </button>
                      </form>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <th scope="">E01B03</th>
                <td scope="">
                  <img
                    src="../img/WSQ브랜드데이0217금.jpg"
                    style="width: 3rem"
                    alt=""
                  />
                </td>
                <td>
                  02/17(금) WSA Brand Day - INNOVATUS, 혁신을 꿈꾸는 와이너리
                </td>
                <td>2023.01.02</td>
                <td>
                  <div class="d-flex justify-content-center">
                    <div>
                      <form action="">
                        <button
                          type="submit"
                          class="btn btn-sm btn-outline-secondary"
                        >
                          수정
                        </button>
                      </form>
                    </div>
                    <div>
                      <form action="" class="ps-2">
                        <button
                          type="submit"
                          class="btn btn btn-sm btn-outline-danger"
                        >
                          삭제
                        </button>
                      </form>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <th scope="">E01B04</th>
                <td scope="">
                  <img
                    src="../img/2023대한민국와인출품안내썸네일.jpg"
                    alt=""
                    style="width: 3rem"
                  />
                </td>
                <td>콥와이너리 와인 5종 시음회</td>
                <td>2023.01.01</td>
                <td>
                  <div class="d-flex justify-content-center">
                    <div>
                      <form action="">
                        <button
                          type="submit"
                          class="btn btn-sm btn-outline-secondary"
                        >
                          수정
                        </button>
                      </form>
                    </div>
                    <div>
                      <form action="" class="ps-2">
                        <button
                          type="submit"
                          class="btn btn btn-sm btn-outline-danger"
                        >
                          삭제
                        </button>
                      </form>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <th scope="">E01B05</th>
                <td scope="">
                  <img
                    src="../img/에노테카시그니엘신규입고와인.jpg"
                    style="width: 3rem"
                    alt=""
                  />
                </td>
                <td>2/10(금) Australian Wine Discovered</td>
                <td>2023.01.01</td>
                <td>
                  <div class="d-flex justify-content-center">
                    <div>
                      <form action="">
                        <button
                          type="submit"
                          class="btn btn-sm btn-outline-secondary"
                        >
                          수정
                        </button>
                      </form>
                    </div>
                    <div>
                      <form action="" class="ps-2">
                        <button
                          type="submit"
                          class="btn btn btn-sm btn-outline-danger"
                        >
                          삭제
                        </button>
                      </form>
                    </div>
                  </div>
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
