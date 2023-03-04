<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin users add</title>
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
        <form action="/admin/admin_stores_insert_done/1" method="post">
          <div class="mt-4 p-4 border bg-white">
            <div
              class="d-flex justify-content-between align-items-center input-group"
            >
              <div>
                <label for="" class="form-label fw-bold pe-3 m-0"
                  >판매처 추가</label
                >
              </div>
              <div class="">
                <button tpye="submit" class="btn btn-sm btn-outline-secondary">
                  추가하기
                </button>
              </div>
            </div>
            <table
              class="mt-3 table text-center align-middle"
              style="font-size: small"
            >
              <thead class="bg-secondary bg-opacity-25">
                <tr>
                  <th >판매처</th>
                  <th scope="">사업자번호</th>
                  <th scope="">대표자</th>
                  <th scope="">관리자</th>
                  <th scope="">와인UID</th>
                  <th scope="">URL</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><input type="text" class="form-control" name="STORE_NAME" /></td>
                  <td><input type="text" class="form-control" name="STORE_NO"  /></td>
                  <td><input type="text" class="form-control" name="STORE_CEO" /></td>
                  <td><input type="text" class="form-control" name="USER_UID" /></td>
                  <td><input type="text" class="form-control" name="WINE_UID" /></td>
                  <td><input type="text" class="form-control" name="STORE_URL"/></td>
                </tr>
              </tbody>
            </table>
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
