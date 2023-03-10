### final project

# 🍷 와인 검색 사이트

![main](https://user-images.githubusercontent.com/111327647/223902851-c5e7ac98-e7d5-473c-aef0-03f1d93b6357.png)
![main](https://user-images.githubusercontent.com/111327647/223906547-de980aa7-f17f-4f27-96a4-2a01246a6b3f.png)

## 💁 프로젝트 기간

2023.01.06 ~ 2023.03.09

## 프로젝트 참여 인원

📗이은솔 /
📘김소희 /
📙박찬희 /
📕배하선

## 🎒 업무 분담

#### 📗이은솔

| 프론트엔드(html)                                                                                                                 | 백엔드(jsp)                                                                                                                                        | Controller                                                                                                                                                              | mapper                                                                                                                                     |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| [와인-목록 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/wine_list.html)                                 | [메인 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/index.html)                                                            | [메인 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/NoticeController.java)              | [메인 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/NoticeMapper.xml)              |
| [와인-상세 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/wine_info.html)                                 | [공지 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/notice_N_qna/notice.jsp)                      | [공지 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/NoticeController.java)              | [공지 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/NoticeMapper.xml)              |
| [와인-나라별 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/wine_country_france.html)                     | [공지 콘텐츠 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/notice_N_qna/notice_content.jsp)       |
| [와인-가격별 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/wine_price.html)                              | [공지 검색 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/notice_N_qna/notice_search.jsp)          |
| [관리자-쿠폰 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_coupon.html)                 | [관리자-쿠폰 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_coupon.jsp)     | [관리자-쿠폰 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/AdminCouponController.java)  | [관리자 쿠폰 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/AdminCouponMapper.xml)  |
| [관리자-쿠폰 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_coupon_add.html)                   | [관리자 - 쿠폰 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_coupon_add.jsp)     |
| [관리자-쿠폰 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_coupon_modify.html)                | [관리자-쿠폰 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_coupon_modify.jsp)    |
| [비밀번호 찾기 후 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/login_find_password_result%20.html) | [관리자-판매처 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_stores.jsp)   | [관리자-판매처 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/AdminStoreController.java) | [관리자-판매처 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/AdminStoreMapper.xml) |
| [아이디 찾기 후 결과 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/login_find_id_result.html)            | [관리자-판매처 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_stores_add.jsp)     |
| [관리자-판매처 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_stores_add.html)                 | [관리자-회원 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_users.jsp)      | [관리자-회원 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/AdminUserController.java)    | [관리자-회원 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/AdminUserMapper.xml)    |
| [회원-리뷰 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/user_REVIEW_modify.html)                   | [관리자-회원 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_users_add.jsp)        |
| [회원-문의 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/user_qna_modify.html)                      | [관리자-회원정보 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_users_modify.jsp) |
| &nbsp;                                                                                                                           | [관리자-회원정보 검색 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_users_search.jsp) |

#### 📘김소희

| 프론트엔드(html)                                                                                                         | 백엔드(jsp)                                                                                                                                      | Controller                                                                                                                                                                 | mapper                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| [관리자-문의 답변/공지 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_boards.html)          | [관리자-공지 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_notice.jsp)   | [관리자-공지, 문의 컨트롤러](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/AdminBoardController.java)  | [관리자-공지, 문의 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/AdminBoardMapper.xml) |
| [관리자-공지 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_boards_add.html)           | [관리자-공지 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_notice_add.jsp)     |
| [관리자-공지 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_boards_notice_modify.html) | [관리자-공지 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_notice_modify.jsp)  |
| [관리자-문의 답변 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_boards_qna.html)           | [관리자-문의 답변 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_qna_answer.jsp)     |
| &nbsp;                                                                                                                   | [관리자-문의 목록, 검색, 삭제 화면](https://github.com/sol1230mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_qna.jsp) |
| [관리자-이벤트 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_events.html)       | [관리자-이벤트 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_events.jsp) | [관리자-이벤트 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/AdminEventController.java)    | [관리자-이벤트 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/AdminEventMapper.xml)     |
| [관리자-이벤트 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_events_add.html)         | [관리자-이벤트 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_events_add.jsp)   |
| [관리자-이벤트 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_event_modify.html)       | [관리자-이벤트 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_event_modify.jsp) |
| [관리자-리뷰 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_reviews.html)        | [관리자-리뷰 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/admin/admin_reviews.jsp)  | [관리자-리뷰 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/AdminReviewController.java)     | [관리자-리뷰 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/AdminReviewMapper.xml)      |
| [관리자-회원 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_users.html)          | [이벤트-목록 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/event/event.jsp)                     | [이벤트 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/EventController.java)                | [이벤트 mapper]()                                                                                                                              |
| [관리자-회원 추가 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_users_add.html)            | [이벤트-콘텐츠 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/event/event_content.jsp)           |
| [관리자-회원정보 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_users_modify.html)     | [와인-검색 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_details_select.jsp)          | [와인-검색 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/WineDetailsSelectController.java) | [와인-검색 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/WineDetailsSelectMapper.xml)  |
| [관리자-판매처 목록, 삭제 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/admin_stores.html)       | [와인-디테일 검색 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/details_select.jsp)        |
| [회원가입 개인정보동의 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/signup_terms.html)          |
| [회원가입 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/signup_form.html)                        |
| [로그인 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/login.html)                                |
| [아이디 찾기 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/login_find_id.html)                   |
| [회사 소개 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/companyInfo.html)                       |

#### 📙박찬희

| 프론트엔드(html)                                                                                           | 백엔드(jsp)                                                                                                                                                          | Controller                                                                                                                                                    | mapper                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [메인 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/index.html)                    | [회원가입 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/signup_N_login/signup_form.jsp)                             | [회원 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/user/Controller/UserController.java) | [회원 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/userMapper.xml) |
| [회원-개인정보 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/changeInfo.html) | [회원-개인정보 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/user/changeInfo.jsp)                              |
| [회원-마이페이지](https://github.com/sol1230/mango_final_project/blob/master/docs/myPage.html)             | [회원-마이페이지](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/user/myPage.jsp)                                          |
| [회원-리뷰 관리 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/user_review.html)    | [회원-리뷰 관리 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/user/user_review.jsp)                                 |
| [회원-상품 문의 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/user_qna.html)       | [상품 문의 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/user/user_qna.jsp)                                         |
| [회원-쿠폰 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/user_coupon.html)         | [회원-쿠폰 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/user/user_coupon.jsp)                                      |
| &nbsp;                                                                                                     | [회원-리뷰 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/user/user_review_modify.jsp)                          |
| &nbsp;                                                                                                     | [회원-문의 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/user/user_qna_modify.jsp)                             |
| &nbsp;                                                                                                     | [회원-위시리스트 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/user/user_wishlist.jsp)                              |
| &nbsp;                                                                                                     | [로그인 modal](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/etc/header.jsp)                                              | [로그인 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/loginController.java)   |
| &nbsp;                                                                                                     | [아이디 찾기 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/signup_N_login/login_find_id.jsp)                        |
| &nbsp;                                                                                                     | [비밀번호 찾기 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/signup_N_login/login_find_password.jsp)                |
| &nbsp;                                                                                                     | [비밀번호 찾기 후 수정 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/signup_N_login/login_find_password_result.jsp) |
| &nbsp;                                                                                                     |                                                                                                                                                                      |

#### 📕배하선

| 프론트엔드(html)                                                                                             | 백엔드(jsp)                                                                                                                                     | Controller                                                                                                                                                            | mapper                                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| [공지 목록 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/notice.html)                | [와인-나라 칠레 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_country_chile.jsp)     | [와인-나라 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/WineCountryController.java)  | [와인-나라 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/WineCountryMapper.xml)  |
| [공지 콘텐츠 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/notice_content.html)      | [와인-나라 프랑스 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_country_france.jsp)  |
| [이벤트 목록 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/event.html)               | [와인-나라 독일 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_country_germany.jsp)   |
| [이벤트 콘텐츠 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/event_content01.html)   | [와인-나라 이탈리아 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_country_italy.jsp) |
| [와인-음식별 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/wine_food.html)           | [와인-나라 스페인 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_country_spain.jsp)   |
| [와인-종류별 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/wine_red.html)            | [와인-나라 미국 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_country_usa.jsp)       |
| [회원-위시리스트 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/wishlist.html)        | [와인-음식 소고기 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_food_beef.jsp)       | [와인-음식 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/WineFoodController.java)     | [와인-음식 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/WineFoodMapper.xml)     |
| [개인정보처리방침 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/privacy_policy.html) | [와인-음식 치즈 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_food_cheese.jsp)       |
| [이용약관 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/terms_of_use.html)           | [와인-음식 닭고기 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_food_chicken.jsp)    |
| [자주묻는 질문 화면](https://github.com/sol1230/mango_final_project/blob/master/docs/notice_questions.html)  | [와인-음식 양고기 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_food_lamb.jsp)       |
| &nbsp;                                                                                                       | [와인-음식 버섯 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_food_mushroom.jsp)     |
| &nbsp;                                                                                                       | [와인-음식 돼지고기 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_food_pork.jsp)     |
| &nbsp;                                                                                                       | [와인-상세화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_info.jsp)                    | [와인-상세화면 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/WineInfoController.java) | [와인-상세화면 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/WineInfoMapper.xml) |
| &nbsp;                                                                                                       | [와인-목록 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_list.jsp)                   | [와인-목록 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/WineListController.java)     | [와인-목록 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/WineListMapper.xml)     |
| &nbsp;                                                                                                       | [와인-가격 ~3 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_price_3.jsp)             | [와인-가격 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/WinePriceController.java)    | [와인-가격 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/WinePriceMapper.xml)    |
| &nbsp;                                                                                                       | [와인-가격 3~6 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_price_3.jsp)            |
| &nbsp;                                                                                                       | [와인-가격 6~9 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_price_6_9.jsp)          |
| &nbsp;                                                                                                       | [와인-가격 9~15 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_price_9_15.jsp)        |
| &nbsp;                                                                                                       | [와인-가격 15~20 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_price_15_20.jsp)      |
| &nbsp;                                                                                                       | [와인-가격 20~ 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_price_20.jsp)           |
| &nbsp;                                                                                                       | [와인-종류 레드 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_red.jsp)               | [와인-종류 controller](https://github.com/sol1230/mango_final_project/blob/master/src/main/java/com/mango/mango_final_project/Controller/WineTypeController.java)     | [와인-종류 mapper](https://github.com/sol1230/mango_final_project/blob/master/src/main/resources/sqlmapper/mysql/WineTypeMapper.xml)     |
| &nbsp;                                                                                                       | [와인-종류 로제 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_rose.jsp)              |
| &nbsp;                                                                                                       | [와인-종류 스파클링 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_sparkling.jsp)     |
| &nbsp;                                                                                                       | [와인-종류 화이트 화면](https://github.com/sol1230/mango_final_project/blob/master/src/main/webapp/WEB-INF/views/wine/wine_white.jsp)           |

## 📷 구현 페이지 이미지

-와인 목록, 검색

<div> 
<img width="500" height="500" src="https://user-images.githubusercontent.com/111327647/223936133-d53987ce-eded-4340-98e4-1a0bcc89776c.png">
<img width="500" src="https://user-images.githubusercontent.com/111327647/223941229-0021b7da-05be-4783-8402-17544a9c2cbb.png">
<img width="550" src="https://user-images.githubusercontent.com/111327647/223940988-0ea89c3d-6a58-4c0a-a5e9-7dea830d89ec.png">  
</div>
<hr /> 
-와인 상세
<div>
<img width="700" height="530" src="https://user-images.githubusercontent.com/111327647/223942702-15276f7a-f16e-41c5-a883-c62a14e1f581.png">
<img width="700" height="450" src="https://user-images.githubusercontent.com/111327647/223943308-fe9a07b6-fb86-4cfa-b1a0-d3e5e776b011.png">  
</div>
<hr /> 
-마이페이지(회원) 
<div>
<img width="500" height="300" src="https://user-images.githubusercontent.com/111327647/223939957-e57b2350-7543-4fdb-9221-956827d554a6.png">
<img width="500" src="https://user-images.githubusercontent.com/111327647/223939325-2c4eb5e6-82e4-4598-96aa-01242b6a1b1e.png">  
</div>
<hr /> 
-관리자 페이지  
<div>
<img width="500" height="300" src="https://user-images.githubusercontent.com/111327647/223942013-7aef5218-a702-4305-8ec8-c6014293c56d.png">
<img width="500" height="300" src="https://user-images.githubusercontent.com/111327647/223942122-b5977e96-afec-4973-8344-d81a4027b3a2.png">
</div>

## 📀 구현 페이지 영상

[video](https://youtu.be/-R9-58lSz_M)

## 💻 주요 코드

#### 코드내용

```
📗이은솔 : 검색기능 구현
- controller

 @RequestMapping(
    value = "/admin_users_search/{currentPage}", method = RequestMethod.GET)
  public ModelAndView userSearch(@RequestParam Map<String, Object> params,@PathVariable String currentPage,ModelAndView modelAndView) {
    params.put("currentPage", Integer.parseInt(currentPage));
    Object resultMap = adminUserService.getSearchUserAndGetList(params);
    Object searchUser = params.get("SERCH_KEYWORD");
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.addObject("searchUser", searchUser);
    modelAndView.setViewName("admin/admin_users_search");
    return modelAndView;
  }
```

```
📘김소희 : 서블릿의 기능을 이용하여 파라미터의 각 항목별로 배열로 만들어 사용
-controller

 @RequestMapping(value = "/wine/wineDetailsSelect/{currentPage}", method = RequestMethod.GET)
    public ModelAndView wineDetailsSelect(HttpServletRequest request, @PathVariable String currentPage, @RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        String[] WINE_SCOPE_LIST = request.getParameterValues("WINE_SCOPE");
        String[] WINE_TYPE_LIST = request.getParameterValues("WINE_TYPE");
        String[] WINE_COUNTRY_LIST = request.getParameterValues("WINE_COUNTRY");
        String[] WINE_REGION_LIST = request.getParameterValues("WINE_REGION");
        String[] WINE_VARIETY_LIST = request.getParameterValues("WINE_VARIETY");
        String[] WINE_FOOD_PAIRING_LIST = request.getParameterValues("WINE_FOOD_PAIRING");
```

```
📙박찬희 : 아이디 중복 체크
-controller

  @ResponseBody
  @RequestMapping("idCheck")
  public String idCheck(String checkId) {
    int count = uService.idCheck(checkId);

    return count > 0 ? "NNNNN" : "NNNNY";
  }
```

```
📕배하선 : Mybatis 동적 쿼리 조건문 <choose> <when> <otherwise>를 사용
-jsp

<th>바디</th>
  <c:choose>
    <c:when test="${(resultMap.WINE_BODY).equals('가벼움')}">
      <td>
        <span class="label" style="background: #dfb8b8">가벼움</span>
      </td>
      <td><span>중간</span></td>
      <td><span>무거움</span></td>
    </c:when>
    <c:when test="${(resultMap.WINE_BODY).equals('중간')}">
      <td>
        <span>가벼움</span>
      </td>
      <td><span class="label" style="background: #dfb8b8">중간</span></td>
      <td><span>무거움</span></td>
    </c:when>
    <c:otherwise>
      <td>
        <span>가벼움</span>
      </td>
      <td><span>중간</span></td>
      <td><span class="label" style="background: #dfb8b8">무거움</span></td>
    </c:otherwise>
  </c:choose>
  <td>
</tr>
```
