<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign up term</title>
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
    <link rel="stylesheet" href="/css/common.css" />

  </head>
  <body>
    <%-- header --%>
    <%@ include file="../etc/header.jsp" %>
    <%-- select --%>
    <%@ include file="../etc/nav_select.jsp" %>

    <!-- 본 페이지 content -->
    <div class="container" style="width: 40rem">
      <div class="fs-4 fw-bold text-center pt-5">회원가입</div>
      <form action="/signup_N_login/signup_form" method="">
        <div class="pt-3">
          <div class="">
            <div class="form-check">
              <input
                type="checkbox"
                class="form-check-input"
                name="termsService"
                id="termsService"
                required
              />
              <label for="termsService" class="form-check-label pb-2"
                >이용약관 동의<span class="text-danger">(필수)</span></label
              >
            </div>
            <div
              class="overflow-auto p-3 border rounded bg-light bg-opacity-10"
              style="height: 10rem"
            >
              <p class="m-0">
                서비스 및 제품을 이용해 주셔서 감사합니다. 본 약관은 다양한
                서비스의 이용과 관련하여 ooo서비스를 제공하는 ooo주식회사(이하
                ‘ooo’)와 이를 이용하는 ooo 서비스 회원(이하 ‘회원’) 또는
                비회원과의 관계를 설명하며, 아울러 여러분의 ooo 서비스 이용에
                도움이 될 수 있는 유익한 정보를 포함하고 있습니다. ooo 서비스를
                이용하시거나 ooo 서비스 회원으로 가입하실 경우 여러분은 본 약관
                및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을
                내시어 주의 깊게 살펴봐 주시기 바랍니다. 다양한 ooo 서비스를
                즐겨보세요.
              </p>
            </div>
          </div>
          <div class="pt-5">
            <div class="form-check">
              <input
                type="checkbox"
                class="form-check-input"
                name="termsPrivacy"
                id="termsPrivacy"
                required
              />
              <label for="termsPrivacy" class="form-check-label pb-2"
                >개인정보 수집 및 이용 동의<span class="text-danger"
                  >(필수)</span
                ></label
              >
            </div>
            <div
              class="overflow-auto p-3 border rounded bg-light bg-opacity-10"
              style="height: 10rem"
            >
              <p class="m-0">
                개인정보보호법에 따라 ooo에 회원가입 신청하시는 분께 수집하는
                개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및
                이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내
                드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
              </p>
              <p class="pt-2">
                1. 수집하는 개인정보 이용자는 회원가입을 하지 않아도 정보 검색,
                뉴스 보기 등 대부분의 ooo 서비스를 회원과 동일하게 이용할 수
                있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화
                혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, ooo는
                서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
                회원가입 시점에 ooo가 이용자로부터 수집하는 개인정보는 아래와
                같습니다. - 회원 가입 시 필수항목으로 아이디, 비밀번호, 이름,
                생년월일, 성별, 휴대전화번호를, 선택항목으로 본인확인
                이메일주소를 수집합니다. 단, 비밀번호 없이 회원 가입 시에는
                필수항목으로 아이디, 이름, 생년월일, 휴대전화번호를,
                선택항목으로 비밀번호를 수집합니다. 만약 이용자가 입력하는
                생년월일이 만14세 미만 아동일 경우에는 법정대리인
                정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI),
                휴대전화번호)를 추가로 수집합니다. - 단체아이디로 회원가입 시
                단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를
                필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로
                수집합니다.
              </p>
              <p class="pt-2">
                2. 수집한 개인정보의 이용 ooo 및 ooo 관련 제반 서비스(모바일
                웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷
                이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다. - 회원
                가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및
                법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등
                회원관리를 위하여 개인정보를 이용합니다. - 콘텐츠 등 기존 서비스
                제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및
                이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성,
                지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스
                요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를
                이용합니다. - 법령 및 ooo 이용약관을 위반하는 회원에 대한 이용
                제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에
                지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지,
                약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존,
                민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를
                이용합니다.
              </p>
              <p class="pt-2">
                3. 개인정보의 보관기간 회사는 원칙적으로 이용자의 개인정보를
                회원 탈퇴 시 지체없이 파기하고 있습니다. 단, 이용자에게 개인정보
                보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간
                정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를
                안전하게 보관합니다. 이용자에게 개인정보 보관기간에 대해
                회원가입 시 또는 서비스 가입 시 동의를 얻은 경우는 아래와
                같습니다. - 부정 가입 및 이용 방지 부정 이용자의 가입인증
                휴대전화번호 또는 DI (만14세 미만의 경우 법정대리인DI) :
                탈퇴일로부터 6개월 보관 탈퇴한 이용자의 휴대전화번호(복호화가
                불가능한 일방향 암호화(해시처리)) : 탈퇴일로부터 6개월 보관
              </p>
            </div>
          </div>
          <div class="mt-5 mb-5 text-center">
            <a
              href="/index"
              class="btn btn-outline-secondary btn-lg w-25 text-decoration-none"
            >
              취소
            </a>
            <button type="submit" class="btn btn-danger btn-lg w-25">
              확인
            </button>
          </div>
        </div>
      </form>
    </div>

    <%-- footer --%>
    <%@ include file="../etc/footer.jsp" %>
    
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
