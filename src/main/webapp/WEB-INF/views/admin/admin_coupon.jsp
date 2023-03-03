<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin couoon</title>
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
     <%-- admin nav --%>
     <%@ include file="../etc/admin_nav.jsp" %>

      <main class="col-9 p-0 mb-5 ms-5">
        <div class="mt-4 p-4 border bg-white">
            <div
              class="d-flex justify-content-between align-items-center input-group"
            >
              <div class="d-flex align-items-center">
                <div>
                  <label for="" class="form-label fw-bold pe-3 m-0"
                    >쿠폰 관리</label
                  >
                </div>
              </div>
              <form action="/admin/admin_coupon_insert" method="get">
              <div class="justify-content-right align-items-center pt-2">
                <a href="/admin/admin_coupon_insert" class="text-secondary">
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
                <th scope="">쿠폰 코드</th>
                <th scope="">쿠폰 이미지</th>
                <th scope="">쿠폰 이름</th>
                <th scope="">작성일</th>
                <th scope="">기한</th>
                <th scope="">기능</th>
              </tr>
            </thead>
            <tbody>
        <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
              <tr>
                <th>${resultData.COUPON_UID}</th>
                <td>${resultData.COUPON_FILE}
                  <img src="/files/${resultData.C_PHYSICALFILE_NAME}/${resultData.C_ORIGINALFILE_NAME}" alt="${resultData.ORIGINALFILE_NAME}" style="width: 3rem" />
                </td>
                <td>${resultData.COUPON_NAME}</td>
                <td>${resultData.COUPON_DATE}</td>
                <td>${resultData.COUPON_DATETIME1} ~ ${resultData.COUPON_DATETIME2}</td>
                 <td>
                  <div class="d-flex justify-content-center">
                  <div>
                      <form action="/admin/admin_coupon_edit" method="post">
                        <input type="hidden" name="COUPON_UID" value="${resultData.COUPON_UID}" />
                        <input type="hidden" name="COUPON_DATE" value="${resultData.COUPON_DATE}" />
                        <input type="hidden" name="COUPON_NAME" value="${resultData.COUPON_NAME}" />
                        <input type="hidden" name="COUPON_DATETIME1" value="${resultData.COUPON_DATETIME1}" />
                        <input type="hidden" name="COUPON_DATETIME2" value="${resultData.COUPON_DATETIME2}" />
                        <input type="hidden" name="COUPON_FILE" value="${resultData.COUPON_FILE}" />
                        <input type="hidden" name="C_ATTACHFILE_SEQ" value="${resultData.C_ATTACHFILE_SEQ}" />
                        <input type="hidden" name="C_ORIGINALFILE_NAME" value="${resultData.C_ORIGINALFILE_NAME}" />
                        <input type="hidden" name="C_PHYSICALFILE_NAME" value="${resultData.C_PHYSICALFILE_NAME}" />
                        <button
                          type="submit"
                          class="btn btn-sm btn-outline-secondary"
                        >
                          수정
                        </button>
                      </form>
                    </div>
                    <div>
                      <form action="/admin/admin_coupon_delete/1" method="post" class="ps-2">
                        <input type="hidden" name="COUPON_UID" value="${resultData.COUPON_UID}" />
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
          <span>총 쿠폰 갯수 : ${_pagination.totalCount}개</span>
          <div class="pagination pagination-sm justify-content-center">
            <nav aria-label="Page navigation">
              <ul class="pagination pagination-sm">
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_coupon/${_pagination.previousPage}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">이전</span>
                  </a>
                </li>
                <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}" >
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_coupon/${i}">${i}</a>
                </li>
                </c:forEach>
                <li class="page-item">
                  <a class="page-link" href="/admin/admin_coupon/${_pagination.nextPage}" aria-label="Next">
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
