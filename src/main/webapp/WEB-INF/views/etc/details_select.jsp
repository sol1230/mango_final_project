<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

      <!-- collapse 버튼 클릭하면 나오는 검색 필터 -->
      <div
        class="collapse text-secondary shadow-sm pt-4 pb-2"
        style="margin: 0 auto; width: 70%"
        id="navbarFilter2"
      >
        <div class="mb-3">
          <div class="border-end border-secondary border-opacity-25 pe-5 ps-5">
            <ul class="list-unstyled">
              <div class="fs-5 fw-bold mb-2 text-dark">가격</div>
              <li
                class="pb-2 text-decoration-none text-secondary"
                style="font-size: x-small"
              >
                <input
                  type="range"
                  list="trickmarks"
                  class="form-range"
                  min="0"
                  max="42"
                  step="7"
                  name=""
                  id=""
                />

                <span>&#8361; 0~</span>
                <span style="margin-left: 10%">30,000</span>
                <span style="margin-left: 10%">60,000</span>
                <span style="margin-left: 11%">90,000</span>
                <span style="margin-left: 10%">150,000</span>
                <span style="margin-left: 9%">200,000</span>
                <span style="margin-left: 6%">300,000~</span>
              </li>
            </ul>
          </div>
          <div class="border-end border-secondary border-opacity-25 pe-5 ps-5">
            <ul class="list-unstyled">
              <div class="fs-5 fw-bold mb-2 text-dark">별점</div>
              <li class="pb-2 text-decoration-none text-secondary">
                <div class="">
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="star_rating"
                      value="1"
                      id="star_rating1"
                      class="form-check-input"
                    />
                    <label for="star_rating1" class="form-check-label"
                      >★★★★★</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="star_rating"
                      value="2"
                      id="star_rating2"
                      class="form-check-input"
                    />
                    <label for="star_rating2" class="form-check-label"
                      >★★★★☆</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="star_rating"
                      value="3"
                      id="star_rating3"
                      class="form-check-input"
                    />
                    <label for="star_rating3" class="form-check-label"
                      >★★★☆☆</label
                    >
                  </span>
                </div>
              </li>
            </ul>
          </div>
          <div class="border-end border-secondary border-opacity-25 pe-5 ps-5">
            <ul class="list-unstyled">
              <div class="fs-5 fw-bold mb-2 text-dark">종류</div>
              <li class="pb-2">
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="wine"
                    value="1"
                    id="wine1"
                    class="form-check-input"
                  />
                  <label
                    for="wine1"
                    class="form-check-label text-decoration-none text-secondary"
                    >레드</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="wine"
                    value="2"
                    id="wine2"
                    class="form-check-input"
                  />
                  <label
                    for="wine2"
                    class="form-check-label text-decoration-none text-secondary"
                    >화이트</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="wine"
                    value="3"
                    id="wine3"
                    class="form-check-input"
                  />
                  <label
                    for="wine3"
                    class="form-check-label text-decoration-none text-secondary"
                    >로제</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="wine"
                    value="4"
                    id="wine4"
                    class="form-check-input"
                  />
                  <label
                    for="wine4"
                    class="form-check-label text-decoration-none text-secondary"
                    >스파클링</label
                  >
                </span>
              </li>
            </ul>
          </div>
          <div class="border-end border-secondary border-opacity-25 pe-5 ps-5">
            <ul class="list-unstyled">
              <div class="fs-5 fw-bold mb-2 text-dark">나라</div>
              <li class="pb-2">
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="country"
                    value="1"
                    id="country1"
                    class="form-check-input"
                  />
                  <label
                    for="country1"
                    class="form-check-label text-decoration-none text-secondary"
                    >프랑스</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="country"
                    value="2"
                    id="country2"
                    class="form-check-input"
                  />
                  <label
                    for="country2"
                    class="form-check-label text-decoration-none text-secondary"
                    >이탈리아</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="country"
                    value="3"
                    id="country3"
                    class="form-check-input"
                  />
                  <label
                    for="country3"
                    class="form-check-label text-decoration-none text-secondary"
                    >스페인</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="country"
                    value="4"
                    id="country4"
                    class="form-check-input"
                  />
                  <label
                    for="country4"
                    class="form-check-label text-decoration-none text-secondary"
                    >독일</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="country"
                    value="5"
                    id="country5"
                    class="form-check-input"
                  />
                  <label
                    for="country5"
                    class="form-check-label text-decoration-none text-secondary"
                    >칠레</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="country"
                    value="6"
                    id="country6"
                    class="form-check-input"
                  />
                  <label
                    for="country6"
                    class="form-check-label text-decoration-none text-secondary"
                    >미국</label
                  >
                </span>
              </li>
            </ul>
          </div>
          <div class="border-end border-secondary border-opacity-25 pe-5 ps-5">
            <ul class="list-unstyled">
              <div class="fs-5 fw-bold mb-2 text-dark">생산 지역</div>
              <li class="pb-2">
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="region"
                    value="1"
                    id="region1"
                    class="form-check-input"
                  />
                  <label
                    for="region1"
                    class="form-check-label text-decoration-none text-secondary"
                    >보르도</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="region"
                    value="2"
                    id="region2"
                    class="form-check-input"
                  />
                  <label
                    for="region2"
                    class="form-check-label text-decoration-none text-secondary"
                    >부르고뉴</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="region"
                    value="3"
                    id="region3"
                    class="form-check-input"
                  />
                  <label
                    for="region3"
                    class="form-check-label text-decoration-none text-secondary"
                    >프로방스</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="region"
                    value="4"
                    id="region4"
                    class="form-check-input"
                  />
                  <label
                    for="region4"
                    class="form-check-label text-decoration-none text-secondary"
                    >프리울리</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="region"
                    value="5"
                    id="region5"
                    class="form-check-input"
                  />
                  <label
                    for="region5"
                    class="form-check-label text-decoration-none text-secondary"
                    >까딸루냐</label
                  >
                </span>
              </li>
              <li class="pb-2">
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="region"
                    value="6"
                    id="region6"
                    class="form-check-input"
                  />
                  <label
                    for="region6"
                    class="form-check-label text-decoration-none text-secondary"
                    >토스카나</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="region"
                    value="7"
                    id="region7"
                    class="form-check-input"
                  />
                  <label
                    for="region7"
                    class="form-check-label text-decoration-none text-secondary"
                    >리오하</label
                  >
                </span>
              </li>
            </ul>
          </div>
          <div class="border-end border-secondary border-opacity-25 pe-5 ps-5">
            <ul class="list-unstyled">
              <div class="fs-5 fw-bold mb-2 text-dark">품종</div>

              <li class="pb-2">
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="kind"
                    value="1"
                    id="kind1"
                    class="form-check-input"
                  />
                  <label
                    for="kind1"
                    class="form-check-label text-decoration-none text-secondary"
                    >카베르네 소비뇽</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="kind"
                    value="2"
                    id="kind2"
                    class="form-check-input"
                  />
                  <label
                    for="kind2"
                    class="form-check-label text-decoration-none text-secondary"
                    >피노 누아</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="kind"
                    value="3"
                    id="kind3"
                    class="form-check-input"
                  />
                  <label
                    for="kind3"
                    class="form-check-label text-decoration-none text-secondary"
                    >샤르도네</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="kind"
                    value="4"
                    id="kind4"
                    class="form-check-input"
                  />
                  <label
                    for="kind4"
                    class="form-check-label text-decoration-none text-secondary"
                    >모스카토</label
                  >
                </span>
              </li>
              <li class="pb-2">
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="kind"
                    value="5"
                    id="kind5"
                    class="form-check-input"
                  />
                  <label
                    for="kind5"
                    class="form-check-label text-decoration-none text-secondary"
                    >소비뇽 블랑</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="kind"
                    value="6"
                    id="kind6"
                    class="form-check-input"
                  />
                  <label
                    for="kind6"
                    class="form-check-label text-decoration-none text-secondary"
                    >바르베라</label
                  >
                </span>
              </li>
            </ul>
          </div>
          <div class="border-end border-secondary border-opacity-25 pe-5 ps-5">
            <ul class="list-unstyled">
              <div class="fs-5 fw-bold mb-2 text-dark">음식 페어링</div>

              <li class="pb-2">
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="food"
                    value="1"
                    id="food1"
                    class="form-check-input"
                  />
                  <label
                    for="food1"
                    class="form-check-label text-decoration-none text-secondary"
                    >소고기</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="food"
                    value="2"
                    id="food2"
                    class="form-check-input"
                  />
                  <label
                    for="food2"
                    class="form-check-label text-decoration-none text-secondary"
                    >양고기</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="food"
                    value="3"
                    id="food3"
                    class="form-check-input"
                  />
                  <label
                    for="food3"
                    class="form-check-label text-decoration-none text-secondary"
                    >돼지고기</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="food"
                    value="4"
                    id="food4"
                    class="form-check-input"
                  />
                  <label
                    for="food4"
                    class="form-check-label text-decoration-none text-secondary"
                    >닭고기</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="food"
                    value="5"
                    id="food5"
                    class="form-check-input"
                  />
                  <label
                    for="food5"
                    class="form-check-label text-decoration-none text-secondary"
                    >버섯</label
                  >
                </span>
                <span class="form-check form-check-inline">
                  <input
                    type="checkbox"
                    name="food"
                    value="6"
                    id="food6"
                    class="form-check-input"
                  />
                  <label
                    for="food6"
                    class="form-check-label text-decoration-none text-secondary"
                    >치즈</label
                  >
                </span>
              </li>
              <div class="justify-content-between">
                <div class="input-group justify-content-center mt-3">
                  <button class="btn btn-danger">적용하기</button>
                </div>
              </div>
            </ul>
          </div>
        </div>
      </div>