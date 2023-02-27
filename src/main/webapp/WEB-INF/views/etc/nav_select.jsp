<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <!-- 검색 navbar -->
    <nav class="navbar p-3 justify-content-center shadow-sm">
      <div class="navbarFilter">
        <ul class="list-unstyled nav justify-content-center">
          <li class="dropdown nav-item">
            <a href="/wine/1" class="nav-link link-secondary">와인</a>
          </li>
          <li>
            <a href="/wine/wine_france/1" class="nav-link link-secondary">국가</a>
          </li>
          <li>
            <a href="/wine/wine_price_3/1" class="nav-link link-secondary">가격</a>
          </li>
          <li>
            <a href="/wine/wine_beef/1" class="nav-link link-secondary">음식페어링</a>
          </li>
          <li class="">
            <a
              class="nav-link link-secondary navbar-toggler collapsed border-0"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarFilterMenu"
              aria-controls="navbarFilterMenu"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="material-symbols-outlined fs-3">
                arrow_drop_down
              </span>
            </a>
          </li>
        </ul>
        <!-- collapse 버튼 클릭하면 나오는 검색 필터 -->
        <div class="collapse text-secondary pt-4" id="navbarFilterMenu">
          <div class="d-flex justify-content-center mb-3">
            <div class="border-end border-secondary border-opacity-25 pe-5">
              <ul class="list-unstyled">
                <li class="pb-2">
                  <a href="/wine/wine_red/1" class="text-decoration-none text-secondary"
                    >레드</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_white/1" class="text-decoration-none text-secondary"
                    >화이트</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_rose/1" class="text-decoration-none text-secondary"
                    >로제</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_sparkling/1" class="text-decoration-none text-secondary"
                    >스파클링</a
                  >
                </li>
              </ul>
            </div>
            <div
              class="border-end border-secondary border-opacity-25 pe-5 ps-5"
            >
              <ul class="list-unstyled">
                <li class="pb-2">
                  <a href="/wine/wine_france/1" class="text-decoration-none text-secondary"
                    >프랑스</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_italy/1" class="text-decoration-none text-secondary"
                    >이탈리아</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_spain/1" class="text-decoration-none text-secondary"
                    >스페인</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_germany/1" class="text-decoration-none text-secondary"
                    >독일</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_chile/1" class="text-decoration-none text-secondary"
                    >칠레</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_usa/1" class="text-decoration-none text-secondary"
                    >미국</a
                  >
                </li>
              </ul>
            </div>
            <div
              class="border-end border-secondary border-opacity-25 pe-5 ps-5"
            >
              <ul class="list-unstyled">
                <li class="pb-2">
                  <a href="/wine/wine_price_3/1" class="text-decoration-none text-secondary"
                    >3만원 이하</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_price_3_6/1" class="text-decoration-none text-secondary"
                    >3만원 ~ 6만원</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_price_6_9/1" class="text-decoration-none text-secondary"
                    >6만원 ~ 9만원</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_price_9_15/1" class="text-decoration-none text-secondary"
                    >9만원 ~ 15만원</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_price_15_20/1" class="text-decoration-none text-secondary"
                    >15만원 ~ 20만원</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_price_20/1" class="text-decoration-none text-secondary"
                    >20만원 이상</a
                  >
                </li>
              </ul>
            </div>
            <div class="ps-5">
              <ul class="list-unstyled">
                <li class="pb-2">
                  <a href="/wine/wine_beef/1" class="text-decoration-none text-secondary"
                    >소고기</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_lamb/1" class="text-decoration-none text-secondary"
                    >양고기</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_pork/1" class="text-decoration-none text-secondary"
                    >돼지고기</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_chicken/1" class="text-decoration-none text-secondary"
                    >닭고기</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_mushroom/1" class="text-decoration-none text-secondary"
                    >버섯</a
                  >
                </li>
                <li class="pb-2">
                  <a href="/wine/wine_cheese/1" class="text-decoration-none text-secondary"
                    >치즈</a
                  >
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>
