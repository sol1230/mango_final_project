<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
  <%-- admin navbar --%>
      <nav class="p-5 bg-dark navbar-dark d-md-block col-2">
        <div>
          <ul class="list-unstyled navbar-nav">
            <li class="d-flex align-items-center">
            <a
                href="/admin/admin_users/1"
                class="text-decoration-none nav-link fs-5 fw-bold"
                >관리자페이지</a
              >
            </li>
            <li class="d-flex align-items-center">
              <a href="/admin/admin_users/1" class="text-decoration-none nav-link"
                >회원 관리</a
              >
            </li>
            <li class="d-flex align-items-center">
              <a
                href="/admin/adminQna/1"
                class="text-decoration-none nav-link"
                >문의 관리</a
              >
            </li>
            <li class="d-flex align-items-center">
              <a
                href="/admin/adminNotice/1"
                class="text-decoration-none nav-link"
                >공지 관리</a
              >
            </li>
            <li class="d-flex align-items-center">
              <a
                href="/admin/adminEvent/1"
                class="text-decoration-none nav-link"
                >이벤트 관리</a
              >
            </li>
            <li class="d-flex align-items-center">
              <a
                href="/admin/admin_stores/1"
                class="text-decoration-none nav-link"
                >판매처 관리</a
              >
            </li>
            <li class="d-flex align-items-center">
              <a
                href="/admin/adminReview/1"
                class="text-decoration-none nav-link"
                >리뷰 관리</a
              >
            </li>
            <li class="d-flex align-items-center">
              <a
                href="/admin/admin_coupon/1"
                class="text-decoration-none nav-link"
                >쿠폰 관리</a
              >
            </li>
            <li class="d-flex align-items-center" style="margin-top:100px">
              <a href="/logout" class="text-decoration-none nav-link">
              로그아웃
              </a>
            </li>
          </ul>
        </div>
      </nav>