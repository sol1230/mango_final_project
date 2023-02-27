<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin stores</title>
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
                    >판매처 목록</label
                  >
                </div>
              </div>
              <form action="/admin/admin_stores_insert" method="get">
              <div class="justify-content-right align-items-center pt-2">
                <a href="/admin/admin_stores_insert" class="text-secondary">
                  <span class="material-symbols-outlined fs-3"> add_box </span>
                </a>
              </div>
              </form>
            </div>
          </form>
          <table
            class="mt-3 table table-hover text-center align-middle"
            style="font-size: small"
          >
            <thead class="bg-secondary bg-opacity-25">
              <tr>
                <th scope="">판매처</th>
                <th scope="">사업자번호</th>
                <th scope="">대표자</th>
                <th scope="">와인UID</th>
                <th scope="">와인URL</th>
                <th scope="">기능</th>
              </tr>
            </thead>
            <tbody>
        <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
              <tr>
                <th scope="">${resultData.STORE_NAME}</th>
                <td scope="">${resultData.STORE_NO}</td>
                <td>${resultData.STORE_CEO}</td>
                <td>${resultData.WINE_UID}</td>
                <td><a href="${resultData.STORE_URL}" target="_blank">${resultData.STORE_URL}</a></td>
                <td>
                  <div class="d-flex justify-content-center">
                    <div>
                      <form action="/admin/admin_stores_delete/1" method="post" class="ps-2">
                       <input type="hidden" name="STORE_UID" value="${resultData.STORE_UID}" />
                    <button
                        class="btn btn-outline-danger btn-sm"
                        onclick="if(!confirm('정말로 삭제하시겠습니까?')) return false"
                      >
                        삭제
                      </button>
                      </form>
                    </div>
                  </div>
                </td>
              </tr>
        </c:forEach>

            </tbody>
          </table>
          <%-- pagination --%>
          <c:set var="_pagination" value="${resultMap.paginations}" />
          ${paginations}
          <span>총 판매처 수 : ${_pagination.totalCount} 개</span>
          <div class="pagination pagination-sm justify-content-center">
            <nav aria-label="Page navigation">
              <ul class="pagination pagination-sm">
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_stores/${_pagination.previousPage}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">이전</span>
                  </a>
                </li>
                <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}" >
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_stores/${i}">${i}</a>
                </li>
                </c:forEach>
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_stores/${_pagination.nextPage}" aria-label="Next">
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
