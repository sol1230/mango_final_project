<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
        <div class="mt-4 p-4 border bg-white" id="qnaBoard">
          <form action="/admin/adminQnaSearch/1" method="post">
            <div
              class="d-flex justify-content-between align-items-center input-group"
            >
              <div class="d-flex align-items-center">
                <div>
                  <label for="" class="form-label fw-bold pe-3 m-0">문의</label>
                </div>
                <div>
                  <div class="input-group">
                    <select class="form-select" name="selectKeyField" id="" required="required">
                      <option value="">선택</option>
                      <option value="QNA_TITLE" <c:if test="${searchQnaStatus eq 'QNA_TITLE'}">selected</c:if>>제목</option>
                      <option value="USER_UID" <c:if test="${searchQnaStatus eq 'USER_UID'}">selected</c:if>>작성자</option>
                      <option value="ANSWER_STATUS" <c:if test="${searchQnaStatus eq 'ANSWER_STATUS'}">selected</c:if>>답변상태</option>
                    </select>
                    <input type="text" name="selectKeyWord" value="${searchQna}" class="form-control w-50" required/>
                    <button type="submit" class="btn btn-outline-secondary">검색</button>
                  </div>
                </div>
              </div>
            </div>
          </form>
          <table
            class="mt-3 mb-1 table table-hover align-middle"
            style="font-size: small"
          >
            <thead class="bg-secondary bg-opacity-25">
              <tr class=" text-center">
                <th scope="">번호</th>
                <th scope="">제목</th>
                <th scope="">작성자</th>
                <th scope="">답변상태</th>
                <th scope="">등록일</th>
                <th scope="">기능</th>
              </tr>
            </thead>
            <tbody>
              <c:if test="${fn:length(resultMap.resultList) == 0}">
                <tr class="text-center pt-2">
                  <td colspan="7" >검색 결과가 없습니다.</td>
                </tr>
              </c:if>
              <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
                <tr class=" text-center">
                  <th scope="">${loop.count}</th>
                  <td>
                    <a href="#qnaCont${loop.index}" class="text-decoration-none text-black" data-bs-toggle="collapse">
                      ${resultData.QNA_TITLE}</a
                    >
                  </td>

                  <td>${resultData.USER_UID}</td>
                  <td>${resultData.ANSWER_STATUS}</td>
                  <td>${resultData.QNA_DATE}</td>
                  <td class="d-flex justify-content-center">
                    <form action="/admin/adminQnaContent" method="post">
                      <input type="hidden" name="USER_UID" value="${resultData.USER_UID}"/>
                      <input type="hidden" name="QNA_DATE" value="${resultData.QNA_DATE}"/>
                      <input type="hidden" name="QNA_TITLE" value="${resultData.QNA_TITLE}"/>
                      <input type="hidden" name="QNA_CONTENT" value="${resultData.QNA_CONTENT}"/>
                      <button
                        type="submit"
                        class="btn btn-sm btn-outline-secondary"
                      >
                        답변등록
                      </button>
                    </form>
                    <form action="/admin/adminQnaDelete/1" class="ps-2" method="post">
                      <input type="hidden" name="QNA_UID" value="${resultData.QNA_UID}"/>
                      <button
                        type="submit"
                        class="btn btn btn-sm btn-outline-danger"
                        onclick="if(!confirm('정말로 삭제하시겠습니까?')) return false"
                      >
                        삭제
                      </button>
                    </form>
                  </td>
                </tr>
                <tr class="collapse" id="qnaCont${loop.index}">
                  <td  class="bg-light p-4" colspan="6">
                    <%-- 문의 내용 --%>
                    <div>
                      <span class="fw-bold fs-5 text-secondary">
                        Q. 
                      </span>
                      <span>
                        ${resultData.QNA_CONTENT}
                      </span>
                    </div>
                    <%-- 답변 내용 --%>
                    <div class="mt-2">
                      <span class="fw-bold fs-5 text-danger">
                        A. 
                      </span>
                      <span>
                        ${resultData.QNA_ANSWER}
                      </span>
                    </div>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
          <c:choose>
            <c:when test="${resultMap.paginations != null}">
              <c:set var="_pagination" value="${resultMap.paginations}" />
              <span class="" style="font-size: small">총 갯수 : ${_pagination.totalCount}</span>
              <div class="pagination pagination-sm justify-content-center mt-1">
                <%-- pagination --%>
                <nav aria-label="Page navigation example ">
                  <ul class="pagination pagination-sm">
                    <li class="page-item">
                      <a class="page-link" href="/admin/adminQna/${_pagination.previousPage}" aria-label="Previous">
                        <span class="sr-only">Pre</span>
                      </a>
                    </li>
                    <%-- for(int i = 0; i > 9; i++){} --%>
                    <c:forEach var="i" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}">
                      <li class="page-item"><a class="page-link" id="qnaPaginationBtn" href="/admin/adminQna/${i}">${i}</a></li>
                    </c:forEach>
                    <li class="page-item">
                      <a class="page-link" href="/admin/adminQna/${_pagination.nextPage}" aria-label="Next">
                        <span class="sr-only">Next</span>
                      </a>
                    </li>
                  </ul>
                </nav>
              </div>
            </c:when>
          </c:choose>
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
