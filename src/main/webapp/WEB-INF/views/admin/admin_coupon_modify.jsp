<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin coupon add</title>
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
    <%-- admin nav --%>
    <%@ include file="../etc/admin_nav.jsp" %>
      <main class="col-9 p-0 mb-5 ms-5">
        <form action="/admin/admin_coupon_update/1" method="post" enctype="multipart/form-data" id="couponDate">
          <input type="hidden" name="COUPON_UID" value="${resultMap.COUPON_UID}" />
          <input type="hidden" name="COUPON_DATE" value="${resultMap.COUPON_DATE}" />
          <input type="hidden" name="NAME" value="${resultMap.NAME}" />
          <div class="mt-4 p-4 border bg-white">
            <div>
              <label for="" class="form-label fw-bold pe-3 m-0"
                >쿠폰 수정하기</label
              >
            </div>
            <table
              class="mt-3 table border text-center align-middle"
              style="font-size: small"
            >
              <thead class="align-middle">
                <tr>
                  <th scope="" class="bg-secondary bg-opacity-25">작성일</th>
                  <td scope="" >${resultMap.COUPON_DATE}</td>

                  <th scope="" class="bg-secondary bg-opacity-25">작성자</th>
                  <td scope="" >${resultMap.NAME}</td>
                </tr>
                <tr scope="row">
                  <th scope="" class="bg-secondary bg-opacity-25">쿠폰 이름</th>
                  <td scope="" colspan="3">
                    <input
                      type="text"
                      name="COUPON_NAME"
                      class="form-control"
                      value="${resultMap.COUPON_NAME}"
                    />
                  </td>
                </tr>
                <tr scope="row">
                  <th scope="" class="bg-secondary bg-opacity-25">쿠폰 기한</th>
                  <td scope="" colspan="1" class="">
                    <input
                      type="date"
                      name="COUPON_DATETIME1"
                      id="COUPON_DATETIME1"
                      class="form-control"
                      value="${resultMap.COUPON_DATETIME1}"
                    />
                  </td>
                  <td> ~ </td>
                  <td>
                     <input
                      type="date"
                      name="COUPON_DATETIME2"
                      id="COUPON_DATETIME2"
                      class="form-control"
                      value="${resultMap.COUPON_DATETIME2}"
                    />
                  </td>
                </tr>
              </thead>
              <tbody>
                    <tr scope=row>
                      <th class="bg-secondary bg-opacity-25">파일 첨부</th>
                      <td colspan="3">
                        <input type="file" name="COUPON_FILE" class="form-control" />
                      </td>
                    </tr>
                <c:choose>
                  <c:when test="${not empty resultMap.C_PHYSICALFILE_NAME}">
                       <tr scope=row>
                      <th class="bg-secondary bg-opacity-25">첨부한 파일</th>
                      <td colspan="3">
                        <img src="/files/${resultMap.C_PHYSICALFILE_NAME}/${resultMap.C_ORIGINALFILE_NAME}" class="w-25">
                        <%-- <input type="file" name="COUPON_FILE" value="${resultMap.COUPON_FILE}" class="form-control" /> --%>
                      </td>
                    </tr>
                  </c:when>
                </c:choose>
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

    <script>
    $(function() {
      $("#couponDate").submit(function() {
        var cDate1 = $("#COUPON_DATETIME1").val();
        var cDate2 = $("#COUPON_DATETIME2").val();
        var date1Array = cDate1.split('-');
        var date2Array = cDate2.split('-');
        var dateStart = new Date(date1Array[0], date1Array[1], date1Array[2]);
        var dateEnd = new Date(date2Array[0], date2Array[1], date2Array[2]);
        if(dateStart.getTime() > dateEnd.getTime()) {
          alert("시작날짜가 종료날짜보다 작아야 합니다.")
          return false;
        }
      });
    });
    </script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
