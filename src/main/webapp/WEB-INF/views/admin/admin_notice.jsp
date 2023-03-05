<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
                  <label for="" class="form-label fw-bold pe-3 m-0">공지</label>
                </div>
              </div>
              <div class="justify-content-right align-items-center pt-2">
                <a href="/admin/admin_notice_add" class="text-secondary">
                  <span class="material-symbols-outlined fs-3"> add_box </span>
                </a>
              </div>
            </div>
          </form>
          <table
            class="mt-3 mb-1 table table-hover align-middle"
            style="font-size: small"
          >
            <thead class="bg-secondary bg-opacity-25 text-center ">
              <tr>
                <th scope="">번호</th>
                <th scope="">제목</th>
                <th scope="">작성자</th>
                <th scope="">작성일</th>
                <th scope="">기능</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
                <tr class="text-center">
                  <th scope="">${resultData.NOTICE_UID}</th>
                  <td>
                    <a href="#noticeCont${loop.count}" class="text-decoration-none text-black" data-bs-toggle="collapse">
                      ${resultData.NOTICE_TITLE}</a
                    >
                  </td>
                  <td>${resultData.NAME}</td>
                  <td>${resultData.NOTICE_DATE}</td>
                  <td>
                    <div class="d-flex justify-content-center">
                      <div>
                        <form action="/admin/adminNoticeModify" method="post">
                          <input type="hidden" name="NOTICE_UID" value="${resultData.NOTICE_UID}" />
                          <input type="hidden" name="NOTICE_TITLE" value="${resultData.NOTICE_TITLE}" />
                          <input type="hidden" name="NOTICE_DATE" value="${resultData.NOTICE_DATE}" />
                          <input type="hidden" name="NOTICE_CONTENT" value="${resultData.NOTICE_CONTENT}" />
                          <button
                            type="submit"
                            class="btn btn-sm btn-outline-secondary"
                          >
                            수정
                          </button>
                        </form>
                      </div>
                      <div>
                        <form action="/admin/adminNoticeDelete/1" class="ps-2" method="post">
                          <input type="hidden" name="NOTICE_UID" value="${resultData.NOTICE_UID}" />
                          <button
                            type="submit"
                            class="btn btn btn-sm btn-outline-danger"
                            onclick="if(!confirm('정말로 삭제하시겠습니까?')) return false"
                          >
                            삭제
                          </button>
                        </form>
                      </div>
                    </div>
                  </td>
                </tr>
                <tr class="collapse" id="noticeCont${loop.count}">
                  <td  class="bg-light p-4" colspan="6">
                    <%-- 공지 내용 --%>
                    <div>
                      <span>
                        ${resultData.NOTICE_CONTENT}
                      </span>
                    </div>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
          <c:set var="_pagination" value="${resultMap.paginations}" />
          <span class="" style="font-size: small">총 갯수 : ${_pagination.totalCount}</span>
          <div class="pagination pagination-sm justify-content-center mt-1">
            <%-- pagination --%>
            <nav aria-label="Page navigation example ">
              <ul class="pagination pagination-sm">
                <li class="page-item">
                  <a class="page-link" href="/admin/adminNotice/${_pagination.previousPage}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">이전</span>
                  </a>
                </li>
                <%-- for(int i = 0; i > 9; i++){} --%>
                <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}">
                  <li class="page-item"><a class="page-link" href="/admin/adminNotice/${i}">${i}</a></li>
                </c:forEach>
                <li class="page-item">
                  <a class="page-link" href="/admin/adminNotice/${_pagination.nextPage}" aria-label="Next">
                    <span class="sr-only">다음</span>
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
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
