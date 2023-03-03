<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

      <!-- collapse 버튼 클릭하면 나오는 검색 필터 -->
      <div
        class="collapse text-secondary shadow-sm pt-4 pb-2"
        style="margin: 0 auto; width: 70%"
        id="navbarFilter2"
      >
        <div class="mb-3">
          <div class="border-secondary border-opacity-25 pe-5 ps-5">
            <form action="/wine/wineDetailsSelect/1" method="get" id="detailSelectFrom" name="detailSelectFrom">
              <ul class="list-unstyled">
                <div class="fs-5 fw-bold mb-2 text-dark">가격</div>
                <li
                  class="pb-2 text-decoration-none text-secondary"
                  style="font-size: x-small"
                >
                  <input
                    type="range"
                    list="trickmarks"
                    class="form-range pe-3"
                    min="0"
                    max="100000"
                    step="20000"
                    name="WINE_PRICE"
                    id="WINE_PRICE"
                  />
                  <div class="d-flex justify-content-between">
                    <div>&#8361; 0~</div>
                    <div>20,000</div>
                    <div>40,000</div>
                    <div>60,000</div>
                    <div>80,000</div>
                    <div>100,000</div>
                  </div>
                </li>
              </ul>
            </div>
            <div class="border-secondary border-opacity-25 pe-5 ps-5">
              <ul class="list-unstyled">
                <div class="fs-5 fw-bold mb-2 text-dark">별점</div>
                <li class="pb-2 text-decoration-none text-secondary">
                  <div class="">
                    <span class="form-check form-check-inline">
                      <input
                        type="checkbox"
                        name="WINE_SCOPE"
                        value="5.0"
                        id="WINE_SCOPE5"
                        class="form-check-input"
                      />
                      <label for="WINE_SCOPE5" class="form-check-label"
                        >★★★★★</label
                      >
                    </span>
                    <span class="form-check form-check-inline">
                      <input
                        type="checkbox"
                        name="WINE_SCOPE"
                        value="4.0"
                        id="WINE_SCOPE4"
                        class="form-check-input"
                      />
                      <label for="WINE_SCOPE4" class="form-check-label"
                        >★★★★☆</label
                      >
                    </span>
                    <span class="form-check form-check-inline">
                      <input
                        type="checkbox"
                        name="WINE_SCOPE"
                        value="3.0"
                        id="WINE_SCOPE3"
                        class="form-check-input"
                      />
                      <label for="WINE_SCOPE3" class="form-check-label"
                        >★★★☆☆</label
                      >
                    </span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="border-secondary border-opacity-25 pe-5 ps-5">
              <ul class="list-unstyled">
                <div class="fs-5 fw-bold mb-2 text-dark">종류</div>
                <li class="pb-2">
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_TYPE"
                      value="레드"
                      id="WINE_TYPE1"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_TYPE1"
                      class="form-check-label text-decoration-none text-secondary"
                      >레드</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_TYPE"
                      value="화이트"
                      id="WINE_TYPE2"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_TYPE2"
                      class="form-check-label text-decoration-none text-secondary"
                      >화이트</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_TYPE"
                      value="로제"
                      id="WINE_TYPE3"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_TYPE3"
                      class="form-check-label text-decoration-none text-secondary"
                      >로제</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_TYPE"
                      value="스파클링"
                      id="WINE_TYPE4"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_TYPE4"
                      class="form-check-label text-decoration-none text-secondary"
                      >스파클링</label
                    >
                  </span>
                </li>
              </ul>
            </div>
            <div class="border-secondary border-opacity-25 pe-5 ps-5">
              <ul class="list-unstyled">
                <div class="fs-5 fw-bold mb-2 text-dark">나라</div>
                <li class="pb-2">
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_COUNTRY"
                      value="프랑스"
                      id="WINE_COUNTRY1"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_COUNTRY1"
                      class="form-check-label text-decoration-none text-secondary"
                      >프랑스</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_COUNTRY"
                      value="이탈리아"
                      id="WINE_COUNTRY2"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_COUNTRY2"
                      class="form-check-label text-decoration-none text-secondary"
                      >이탈리아</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_COUNTRY"
                      value="뉴질랜드"
                      id="WINE_COUNTRY3"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_COUNTRY3"
                      class="form-check-label text-decoration-none text-secondary"
                      >뉴질랜드</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_COUNTRY"
                      value="칠레"
                      id="WINE_COUNTRY4"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_COUNTRY4"
                      class="form-check-label text-decoration-none text-secondary"
                      >칠레</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_COUNTRY"
                      value="호주"
                      id="WINE_COUNTRY5"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_COUNTRY5"
                      class="form-check-label text-decoration-none text-secondary"
                      >호주</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_COUNTRY"
                      value="미국"
                      id="WINE_COUNTRY6"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_COUNTRY6"
                      class="form-check-label text-decoration-none text-secondary"
                      >미국</label
                    >
                  </span>
                </li>
              </ul>
            </div>
            <div class="border-secondary border-opacity-25 pe-5 ps-5">
              <ul class="list-unstyled">
                <div class="fs-5 fw-bold mb-2 text-dark">생산 지역</div>
                <li class="pb-2">
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="워싱턴"
                      id="WINE_REGION1"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION1"
                      class="form-check-label text-decoration-none text-secondary"
                      >워싱턴</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="캘리포니아"
                      id="WINE_REGION2"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION2"
                      class="form-check-label text-decoration-none text-secondary"
                      >캘리포니아</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="부르고뉴"
                      id="WINE_REGION3"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION3"
                      class="form-check-label text-decoration-none text-secondary"
                      >부르고뉴</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="콜리오"
                      id="WINE_REGION4"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION4"
                      class="form-check-label text-decoration-none text-secondary"
                      >콜리오</label
                    >
                  </span>

                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="마렘마"
                      id="WINE_REGION5"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION5"
                      class="form-check-label text-decoration-none text-secondary"
                      >마렘마</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="프로방스"
                      id="WINE_REGION6"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION6"
                      class="form-check-label text-decoration-none text-secondary"
                      >프로방스</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="남섬"
                      id="WINE_REGION7"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION7"
                      class="form-check-label text-decoration-none text-secondary"
                      >남섬</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="볼게리"
                      id="WINE_REGION8"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION8"
                      class="form-check-label text-decoration-none text-secondary"
                      >볼게리</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="북부 이탈리아"
                      id="WINE_REGION9"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION9"
                      class="form-check-label text-decoration-none text-secondary"
                      >북부 이탈리아</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="칠레"
                      id="WINE_REGION10"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION10"
                      class="form-check-label text-decoration-none text-secondary"
                      >칠레</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_REGION"
                      value="마운트 바커"
                      id="WINE_REGION11"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_REGION11"
                      class="form-check-label text-decoration-none text-secondary"
                      >마운트 바커</label
                    >
                  </span>
                </li>
              </ul>
            </div>
            <div class="border-secondary border-opacity-25 pe-5 ps-5">
              <ul class="list-unstyled">
                <div class="fs-5 fw-bold mb-2 text-dark">품종</div>

                <li class="pb-2">
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="카베르네 소비뇽"
                      id="WINE_VARIETY1"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY1"
                      class="form-check-label text-decoration-none text-secondary"
                      >카베르네 소비뇽</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="피노 누아"
                      id="WINE_VARIETY2"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY2"
                      class="form-check-label text-decoration-none text-secondary"
                      >피노 누아</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="샤르도네"
                      id="WINE_VARIETY3"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY3"
                      class="form-check-label text-decoration-none text-secondary"
                      >샤르도네</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="모스카토"
                      id="WINE_VARIETY4"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY4"
                      class="form-check-label text-decoration-none text-secondary"
                      >모스카토</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="소비뇽블랑"
                      id="WINE_VARIETY5"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY5"
                      class="form-check-label text-decoration-none text-secondary"
                      >소비뇽 블랑</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="6"
                      id="WINE_VARIETY6"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY6"
                      class="form-check-label text-decoration-none text-secondary"
                      >바르베라</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="메를로"
                      id="WINE_VARIETY7"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY7"
                      class="form-check-label text-decoration-none text-secondary"
                      >메를로</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="진판델"
                      id="WINE_VARIETY8"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY8"
                      class="form-check-label text-decoration-none text-secondary"
                      >진판델</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="리슬링"
                      id="WINE_VARIETY9"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY9"
                      class="form-check-label text-decoration-none text-secondary"
                      >리슬링</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="쉬라즈"
                      id="WINE_VARIETY10"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY10"
                      class="form-check-label text-decoration-none text-secondary"
                      >쉬라즈</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_VARIETY"
                      value="기타"
                      id="WINE_VARIETY11"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_VARIETY11"
                      class="form-check-label text-decoration-none text-secondary"
                      >기타</label
                    >
                  </span>
                </li>
              </ul>
            </div>
            <div class="border-secondary border-opacity-25 pe-5 ps-5">
              <ul class="list-unstyled">
                <div class="fs-5 fw-bold mb-2 text-dark">음식 페어링</div>

                <li class="pb-2">
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_FOOD_PAIRING"
                      value="소"
                      id="WINE_FOOD_PAIRING1"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_FOOD_PAIRING1"
                      class="form-check-label text-decoration-none text-secondary"
                      >소고기</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_FOOD_PAIRING"
                      value="양"
                      id="WINE_FOOD_PAIRING2"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_FOOD_PAIRING2"
                      class="form-check-label text-decoration-none text-secondary"
                      >양고기</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_FOOD_PAIRING"
                      value="돼지"
                      id="WINE_FOOD_PAIRING3"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_FOOD_PAIRING3"
                      class="form-check-label text-decoration-none text-secondary"
                      >돼지고기</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_FOOD_PAIRING"
                      value="닭"
                      id="WINE_FOOD_PAIRING4"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_FOOD_PAIRING4"
                      class="form-check-label text-decoration-none text-secondary"
                      >닭고기</label
                    >
                  </span>
                  <span class="form-check form-check-inline">
                    <input
                      type="checkbox"
                      name="WINE_FOOD_PAIRING"
                      value="치즈"
                      id="WINE_FOOD_PAIRING5"
                      class="form-check-input"
                    />
                    <label
                      for="WINE_FOOD_PAIRING5"
                      class="form-check-label text-decoration-none text-secondary"
                      >치즈</label
                    >
                  </span>
                </li>
                <div class="justify-content-between">
                  <div class="input-group justify-content-center mt-3">
                    <button type="submit" class="btn btn-danger" id="detailSelectFromButton">적용하기</button>
                  </div>
                </div>
              </ul>
            </div>
          </form>
        </div>
      </div>
      <script>
        $(function () {
          $("#detailSelectFromButton").click(function() {
            // WINE_SCOPE 배열로 만들어 max, min 추출
            var wine_scope_value = [];
            $('input:checkbox[name="WINE_SCOPE"]:checked').each(function(){
                wine_scope_value.push($(this).val());
            });
            var wine_scope_max = Math.max.apply(null, wine_scope_value);
            var wine_scope_min = Math.min.apply(null, wine_scope_value);
            if(wine_scope_value.length != 0){
              if(wine_scope_max == wine_scope_min) {
                wine_scope_max = wine_scope_min + 0.9
              } else {
                wine_scope_max = wine_scope_max + 0.9
              }
              $("#wineDetailsSelect").append("<input type='hidden' value="+ wine_scope_max +" name='WINE_SCOPE_MAX'>");
              $("#wineDetailsSelect").append("<input type='hidden' value="+ wine_scope_min +" name='WINE_SCOPE_MIN'>");
            }
          });
        });

        <c:forEach items="${params.WINE_SCOP_LIST}" var="wineScope" varStatus="loop">
          $("input:checkbox[name='WINE_SCOP_LIST']:checkbox[value='${wineScope}']").prop('checked', true);
        </c:forEach>
        <c:forEach items="${params.WINE_TYPE_LIST}" var="wineType" varStatus="loop">
          $("input:checkbox[name='WINE_TYPE']:checkbox[value='${wineType}']").prop('checked', true);
        </c:forEach>
        <c:forEach items="${params.WINE_COUNTRY_LIST}" var="wineCountry" varStatus="loop">
          $("input:checkbox[name='WINE_COUNTRY']:checkbox[value='${wineCountry}']").prop('checked', true);
        </c:forEach>
        <c:forEach items="${params.WINE_REGION_LIST}" var="wineRegion" varStatus="loop">
          $("input:checkbox[name='WINE_REGION']:checkbox[value='${wineRegion}']").prop('checked', true);
        </c:forEach>
        <c:forEach items="${params.WINE_VARIETY_LIST}" var="wineVariety" varStatus="loop">
          $("input:checkbox[name='WINE_VARIETY']:checkbox[value='${wineVariety}']").prop('checked', true);
        </c:forEach>
        <c:forEach items="${params.WINE_FOOD_PAIRING_LIST}" var="wineFoodPairing" varStatus="loop">
          $("input:checkbox[name='WINE_FOOD_PAIRING']:checkbox[value='${wineFoodPairing}']").prop('checked', true);
        </c:forEach>
        
      </script>