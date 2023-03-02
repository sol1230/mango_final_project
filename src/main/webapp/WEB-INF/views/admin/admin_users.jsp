<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
                 <form action="/admin/admin_users_search/1" method="get">
                  <div class="input-group">
                    <select class="form-select" name="keyType" id="">
                      <option>선택</option>
                      <option value="USER_UID">아이디</option>
                      <option value="NAME">이름</option>
                      <option value="BIRTH">생년월일</option>
                      <option value="PHONE">전화번호</option>
                    </select>
                    <input type="text" name="keyword" class="form-control w-50" />
                    <button class="btn btn-outline-secondary">검색</button>
                  </div>
                    <input type="hidden" name="currentPage" value="1" />
                    <input type="hidden" name="pageScale" value="10" />
                 </form>
                </div>
              </div>
              <form action="/admin/admin_users_insert" method="get">
              <div class="justify-content-right align-items-center pt-2">
                <a href="/admin/admin_users_insert" class="text-secondary">
                  <span class="material-symbols-outlined fs-3"> add_box </span>
                </a>
              </div>
              </form>
            </div>
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
        <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
              <tr>
                <td>1</td>
                <td>${resultData.USER_UID}</td>
                <td>${resultData.NAME}</td>
                <td>${resultData.BIRTH}</td>
                <td>${resultData.GENDER}</td>
                <td>${resultData.PHONE}</td>
                <td class="d-flex justify-content-center">
                  <form action="/admin/admin_users_edit" method="post">
                    <input type="hidden" name="USER_UID" value="${resultData.USER_UID}" />
                    <input type="hidden" name="PASSWORD" value="${resultData.PASSWORD}" />
                    <input type="hidden" name="NAME" value="${resultData.NAME}" />
                    <input type="hidden" name="BIRTH" value="${resultData.BIRTH}" />
                    <input type="hidden" name="GENDER" value="${resultData.GENDER}" />
                    <input type="hidden" name="PHONE" value="${resultData.PHONE}" />
                    <input type="hidden" name="AUTHORITY" value="${resultData.AUTHORITY}" />
                    <button class="btn btn-sm btn-outline-secondary">
                      수정
                    </button>
                  </form>
                  <form action="/admin/admin_users_delete/1" method="post" class="ps-2">
                       <input type="hidden" name="USER_UID" value="${resultData.USER_UID}" />
                     <button
                        class="btn btn-outline-danger btn-sm"
                        onclick="if(!confirm('정말로 삭제하시겠습니까?')) return false"
                      >
                        삭제
                      </button>
                  </form>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
          <%-- pagination --%>
          <c:set var="_pagination" value="${resultMap.paginations}" />
          ${paginations}
          <span>총 회원수 : ${_pagination.totalCount}명</span>
          <div class="pagination pagination-sm justify-content-center">
            <nav aria-label="Page navigation">
              <ul class="pagination pagination-sm">
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_users/${_pagination.previousPage}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">이전</span>
                  </a>
                </li>
                <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}" >
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_users/${i}">${i}</a>
                </li>
                </c:forEach>
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_users/${_pagination.nextPage}" aria-label="Next">
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
