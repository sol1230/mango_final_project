<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin boards</title>
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
                  <label for="" class="form-label fw-bold pe-3 m-0">문의</label>
                </div>
                <div>
                  <div class="input-group">
                    <select class="form-select" name="keyField" id="">
                      <option>선택</option>
                      <option value="WRITER_TYPE">구분</option>
                      <option value="WRITER">작성자</option>
                      <option value="ANSWER_STATUS">답변상태</option>
                    </select>
                    <input type="text" class="form-control w-50" />
                    <button class="btn btn-outline-secondary">검색</button>
                  </div>
                </div>
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
                <th scope="">구분</th>
                <th scope="">제목</th>
                <th scope="">작성자</th>
                <th scope="">답변상태</th>
                <th scope="">등록일</th>
                <th scope="">기능</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="">1</th>
                <td>상품관련</td>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    상품 문의드립니다.</a
                  >
                </td>

                <td>김민아</td>
                <td>답변대기</td>
                <td>2023-02-04</td>
                <td class="d-flex justify-content-center">
                  <form action="/admin/admin_boards_qna">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      답변등록
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
                <td>주문/결제관련</td>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    포인트 사용 문의
                  </a>
                </td>
                <td>이주영</td>
                <td>답변대기</td>
                <td>2023-02-03</td>
                <td class="d-flex justify-content-center">
                  <form action="">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      답변등록
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
                <td>회원/정보관련</td>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    비밀번호 변경 방법
                  </a>
                </td>
                <td>한지연</td>
                <td>답변대기</td>
                <td>2023-02-03</td>
                <td class="d-flex justify-content-center">
                  <form action="">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      답변등록
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
                <td>주문/결제관련</td>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    주문 확인 부탁드립니다!</a
                  >
                </td>
                <td>박영선</td>
                <td>답변완료</td>
                <td>2023-02-02</td>
                <td class="d-flex justify-content-center">
                  <form action="">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      답변등록
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
                <td>상품관련</td>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    선물용으로 괜찮나요?</a
                  >
                </td>
                <td>강하늘</td>
                <td>답변완료</td>
                <td>2023-02-02</td>
                <td class="d-flex justify-content-center">
                  <form action="">
                    <button
                      type="submit"
                      class="btn btn-sm btn-outline-secondary"
                    >
                      답변등록
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
        <div class="mt-4 p-4 border bg-white">
          <form action="">
            <div
              class="d-flex justify-content-between align-items-center input-group"
            >
              <div class="d-flex align-items-center">
                <div>
                  <label for="" class="form-label fw-bold pe-3 m-0">공지</label>
                </div>
              </div>
              <div class="justify-content-right align-items-center pt-2">
                <a href="/admin/admin_boards_add" class="text-secondary">
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
                <th scope="">제목</th>
                <th scope="">작성자</th>
                <th scope="">작성일</th>
                <th scope="">조회수</th>
                <th scope="">기능</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="">1</th>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    배송 불가 안내</a
                  >
                </td>
                <td>관리자</td>
                <td>2023-01-06</td>
                <td>15</td>
                <td>
                  <div class="d-flex justify-content-center">
                    <div>
                      <form action="/admin/admin_boards_notice_modify">
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
                <th scope="">2</th>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    휴무 안내</a
                  >
                </td>
                <td>관리자</td>
                <td>2023-01-04</td>
                <td>17</td>
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
                <th scope="">3</th>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    회원가입 오류 시 해결 방법 안내</a
                  >
                </td>
                <td>관리자</td>
                <td>2023-01-02</td>
                <td>22</td>
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
                <th scope="">4</th>
                <td>
                  <a href="" class="text-decoration-none text-black">
                    TOP3 와인 판매일 변경 안내</a
                  >
                </td>
                <td>관리자</td>
                <td>2022-12-30</td>
                <td>34</td>
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
