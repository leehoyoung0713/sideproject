<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지도 검색</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/service/mapMedia.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/service/map.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

</head>
<body>
	<%
	    String userId = (String)session.getAttribute("userId");
	    boolean loginOk = userId == null ? false : true;
	    if(loginOk){ %>
	 	<jsp:include page = '${pageContext.request.contextPath}/app/fix/header_MainLogin.jsp'/>
	<% }else{ %>
		<jsp:include page = '${pageContext.request.contextPath}/app/fix/header.jsp'/>
	<% } %>


     <main class="pg-search ng-scope reverse" ng-controller="mp20_search_result_controller" data-keyword="강남역">
        <article class="contents">
            <div class="black_screen" id="blackScreen" style="display:none;"></div>
            <div class="column-wrapper">
                <div class="column-contents flex-contents">
                    <!-- 검색결과 식당 리스트 flex로 변경 -->
                    <div class="inner">
                        <!-- 검색 식당 목록 -->
                        <section class="module search-results short-bottom">
                            <div class="search_info">

<!--                                 <div class="search-options"
                                    ng-class="{is_empty_result: search_result_list.length === 0}">
                                    <button class="btn filter"
                                        data-background_url="https://d1jrqqyoo3n46w.cloudfront.net/web/resources/prwed8gjtoikxz6h.png"
                                        style="position:relative;bottom:-47px;">필터</button>
                                </div> -->
                                <div class="search_top_title_wrap">
                                    <div class="title_wrap">
                                        <h1 class="title main" ng-show="search_result_list.length">멈미뭄미 프로젝트 지도</h1>
                                        
                                        <!-- 내가 수정한 내용 -->
                                        <div class="categoryContainer">
	                                        <input type="checkbox" id="hotel" class="categoryCheckbox" name="cc" value="반려견 동반 "/>
											<label for="hotel"><span><div class="categoryCheckboxText">숙소</div></span></label>
											
											<input type="checkbox" id="restaurant" class="categoryCheckbox" name="cc" value="반려견 동반 "/>
											<label for="restaurant"><span><div class="categoryCheckboxText">식당</div></span></label>
											
											<input type="checkbox" id="playground" class="categoryCheckbox" name="cc" value="반려동물 놀이터"/>
											<label for="playground"><span><div class="categoryCheckboxText" style="left: 2px;">놀이터</div></span></label>
											
											<input type="checkbox" id="hospital" class="categoryCheckbox" name="cc" value="동물병원"/>
											<label for="hospital"><span><div class="categoryCheckboxText">병원</div></span></label>
											
											<input type="checkbox" id="school" class="categoryCheckbox" name="cc" value="애견 훈련"/>
											<label for="school"><span><div class="categoryCheckboxText">학교</div></span></label>
											
											<input type="hidden" name="categoryValueForm" id="categoryValueForm" value="">
										</div>
										<!-- =================================== -->
										<section class="region_by_keywords_wrap">
                                        	<div class="region_by_keywords"></div>
                                    	</section>
										
                                        <div class="mapSearch">
                                            <div class="searchInputFormContainer">
                                                <form class="searchForm" onsubmit="searchPlaces(); return false;">
                                                    <i class="searchIcon">
                                                        <img src="${pageContext.request.contextPath}/images/searchIcon.PNG">
                                                    </i>
                                                   <input id="keyword" size="15" name = "placeSearch" type="text" placeholder="찾으시는 지역을 검색해주세요"
                                                        class="searchSection" value=""></input>
                                                        <button type="submit"></button>
                                                </form>
                                            </div>
                                        </div>
                                        <p class="searchError"></p>
                                    </div>

                                </div>
                            </div>
                            
                            
                       <div class="search-list-restaurants-inner-wrap">
                                <div class="search_loading_gray_layer ng-hide" ng-show="ajaxing"></div>
	                       <div id="menu_wrap" class="bg_white">
						        <div class="option">
						            <div>
						            </div>
						        </div>
	 					        <ul id="placesList"></ul>
	 					        <div id="pagination"></div>
					    	</div>
                       </div>
					</div>
  
                                    <!-- 다음 페이지 버튼 -->
                             <!--        <li class="afterPageArrowLeft">
                                        <button id = "nextPageButton" class="pageBtn afterPageBtnLeft" type="button">
                                            <svg width="1em" height="1em" viewBox="0 0 24 24">
                                                <path fill="currentColor" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z">
                                                </path>
                                            </svg>
                                        </button>
                                    </li>
                                </ul>
                            </div> -->

                        </section>
                    </div>

                    <aside class="popup search-filter" id="asideFilter" style="display:none;">
                        <div class="inner">
                            <div>
                                <div class="filter-item">
                                    <label for="sorting01">검색 필터</label>
                                    <p class="order_wrap">
                                        <input type="radio" id="sorting01" name="sorting"
                                            ng-checked="is_checked_sorting_value(2)" value="2" checked="checked"><label
                                            for="sorting01" data-filter="2"
                                            ng-click="set_temp_offset($event)">평점순</label>
                                        <input type="radio" id="sorting02" name="sorting"
                                            ng-checked="is_checked_sorting_value(0)" value="0"><label for="sorting02"
                                            data-filter="0" ng-click="set_temp_offset($event)">인기순</label>
                                    </p>
                                </div>

                                <div class="filter-item">
                                    <span class="options">중복 선택 가능</span>
                                    <label for="">가격/1인당</label>

                                    <p class="cost_wrap">
                                        <input type="checkbox" id="cost01" name="cost" class="cost" ng-checked="is_checked_price_value(price_filter_name, 1)" data-value="1"><label for="cost01" class="cost01 cost-zoom" data-filter="1" ng-click="set_filter_value(price_filter_name, $event, price_filter_value_hadler)"><span>카페</span></label>
                                        <input type="checkbox" id="cost02" name="cost" class="cost" ng-checked="is_checked_price_value(price_filter_name, 2)" data-value="2"><label for="cost02" class="cost02 cost-zoom" data-filter="2" ng-click="set_filter_value(price_filter_name, $event, price_filter_value_hadler)"><span>병원</span></label>
                                        <input type="checkbox" id="cost03" name="cost" class="cost" ng-checked="is_checked_price_value(price_filter_name, 3)" data-value="3"><label for="cost03" class="cost03 cost-zoom" data-filter="3" ng-click="set_filter_value(price_filter_name, $event, price_filter_value_hadler)"><span>관광지</span></label>
                                        <input type="checkbox" id="cost04" name="cost" class="cost" ng-checked="is_checked_price_value(price_filter_name, 4)" data-value="4"><label for="cost04" class="cost04 cost-zoom" data-filter="4,5" ng-click="set_filter_value(price_filter_name, $event, price_filter_value_hadler)"><span>놀이터</span></label>
                                      </p>
                                </div>

                                <div class="filter-item only-desktop">
                                    <span class="options">중복 선택 가능</span>
                                    <label for="">지역</label>

                                    <p class="region"><a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;"
                                            ng-repeat="region_item in filter_region_list | limitTo: filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="1"
                                            ng-bind="region_item.display_text"
                                            class="ng-binding ng-scope selected">서울-강남</a><a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}"
                                            dreturn false;"
                                            ng-repeat="region_item in filter_region_list | limitTo: filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="2"
                                            ng-bind="region_item.display_text" class="ng-binding ng-scope">서울-강북</a><a
                                            href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;"
                                            ng-repeat="region_item in filter_region_list | limitTo: filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="3"
                                            ng-bind="region_item.display_text" class="ng-binding ng-scope">경기도</a><a
                                            href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;"
                                            ng-repeat="region_item in filter_region_list | limitTo: filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="4"
                                            ng-bind="region_item.display_text" class="ng-binding ng-scope">인천</a><a
                                            href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;"
                                            ng-repeat="region_item in filter_region_list | limitTo: filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="6"
                                            ng-bind="region_item.display_text" class="ng-binding ng-scope">대구</a>
                                        <a href="#" class="more" ng-click="show_filter_more_region()" return
                                            false;">더보기</a>
                                    </p>
                                    <p class="metro"><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_01" name="region" data-value="11"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_01" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="11">
                                                <span data-filter="11" ng-bind="metro_item.display_text"
                                                    class="ng-binding">가로수길</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_02" name="region" data-value="3"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_02" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="3">
                                                <span data-filter="3" ng-bind="metro_item.display_text"
                                                    class="ng-binding">강남역</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_03" name="region" data-value="68"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_03" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="68">
                                                <span data-filter="68" ng-bind="metro_item.display_text"
                                                    class="ng-binding">강동구</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_04" name="region" data-value="69"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_04" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="69">
                                                <span data-filter="69" ng-bind="metro_item.display_text"
                                                    class="ng-binding">개포/수서/일원</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_05" name="region" data-value="44"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_05" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="44">
                                                <span data-filter="44" ng-bind="metro_item.display_text"
                                                    class="ng-binding">관악구</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_06" name="region" data-value="17"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_06" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="17">
                                                <span data-filter="17" ng-bind="metro_item.display_text"
                                                    class="ng-binding">교대/서초</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_07" name="region" data-value="48"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_07" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="48">
                                                <span data-filter="48" ng-bind="metro_item.display_text"
                                                    class="ng-binding">구로구</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_08" name="region" data-value="32"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_08" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="32">
                                                <span data-filter="32" ng-bind="metro_item.display_text"
                                                    class="ng-binding">금천구</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_09" name="region" data-value="21"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_09" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="21">
                                                <span data-filter="21" ng-bind="metro_item.display_text"
                                                    class="ng-binding">논현동</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_010" name="region" data-value="22"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_010" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="22">
                                                <span data-filter="22" ng-bind="metro_item.display_text"
                                                    class="ng-binding">대치동</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_011" name="region" data-value="23"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_011" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="23">
                                                <span data-filter="23" ng-bind="metro_item.display_text"
                                                    class="ng-binding">도곡동</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_012" name="region" data-value="16"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_012" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="16">
                                                <span data-filter="16" ng-bind="metro_item.display_text"
                                                    class="ng-binding">동작/사당</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_013" name="region" data-value="67"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_013" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="67">
                                                <span data-filter="67" ng-bind="metro_item.display_text"
                                                    class="ng-binding">등촌/강서</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_014" name="region" data-value="46"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_014" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="46">
                                                <span data-filter="46" ng-bind="metro_item.display_text"
                                                    class="ng-binding">목동/양천</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_015" name="region" data-value="15"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_015" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="15">
                                                <span data-filter="15" ng-bind="metro_item.display_text"
                                                    class="ng-binding">방배/반포/잠원</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_016" name="region" data-value="33"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_016" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="33">
                                                <span data-filter="33" ng-bind="metro_item.display_text"
                                                    class="ng-binding">방이동</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_017" name="region" data-value="18"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_017" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="18">
                                                <span data-filter="18" ng-bind="metro_item.display_text"
                                                    class="ng-binding">삼성동</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_018" name="region" data-value="5"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_018" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="5">
                                                <span data-filter="5" ng-bind="metro_item.display_text"
                                                    class="ng-binding">서래마을</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_019" name="region" data-value="49"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_019" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="49">
                                                <span data-filter="49" ng-bind="metro_item.display_text"
                                                    class="ng-binding">송파/가락</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_020" name="region" data-value="2"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_020" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="2">
                                                <span data-filter="2" ng-bind="metro_item.display_text"
                                                    class="ng-binding">신사/압구정</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_021" name="region" data-value="29"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_021" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="29">
                                                <span data-filter="29" ng-bind="metro_item.display_text"
                                                    class="ng-binding">신천/잠실</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_022" name="region" data-value="31"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_022" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="31">
                                                <span data-filter="31" ng-bind="metro_item.display_text"
                                                    class="ng-binding">양재동</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_023" name="region" data-value="24"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_023" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="24">
                                                <span data-filter="24" ng-bind="metro_item.display_text"
                                                    class="ng-binding">여의도</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_024" name="region" data-value="28"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_024" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="28">
                                                <span data-filter="28" ng-bind="metro_item.display_text"
                                                    class="ng-binding">역삼/선릉</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_025" name="region" data-value="47"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_025" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="47">
                                                <span data-filter="47" ng-bind="metro_item.display_text"
                                                    class="ng-binding">영등포구</span>
                                            </label>
                                        </span><span class="metro_btn ng-scope"
                                            ng-repeat="metro_item in filter_metro_list">
                                            <input type="checkbox" id="region01_026" name="region" data-value="4"
                                                ng-checked="is_checked_filter_value(metro_filter_name, metro_item.type_value)">
                                            <label for="region01_026" class="small"
                                                ng-click="set_filter_value(metro_filter_name, $event, default_filter_value_hadler)"
                                                data-filter="4">
                                                <span data-filter="4" ng-bind="metro_item.display_text"
                                                    class="ng-binding">청담동</span>
                                            </label>
                                        </span>
                                    </p>
                                    <div class="btn-region-cancel_wrap" ng-class="{visible: is_metro_filter_on()}">
                                        <button class="btn-region-cancel" ng-click="reset_metro()">전체 선택 취소</button>
                                    </div>
                                    <p></p>
                                    <div class="more-region">
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="1"
                                            class="ng-binding ng-scope ng-hide selected">서울-강남</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="2"
                                            class="ng-binding ng-scope ng-hide">서울-강북</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="3"
                                            class="ng-binding ng-scope ng-hide">경기도</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="4"
                                            class="ng-binding ng-scope ng-hide">인천</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="6"
                                            class="ng-binding ng-scope ng-hide">대구</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="7"
                                            class="ng-binding ng-scope">부산</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="5"
                                            class="ng-binding ng-scope">제주</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="11"
                                            class="ng-binding ng-scope">대전</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="15"
                                            class="ng-binding ng-scope">광주</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="18"
                                            class="ng-binding ng-scope">강원도</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="9"
                                            class="ng-binding ng-scope">경상남도</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="10"
                                            class="ng-binding ng-scope">경상북도</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="16"
                                            class="ng-binding ng-scope">전라남도</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="17"
                                            class="ng-binding ng-scope">전라북도</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="13"
                                            class="ng-binding ng-scope">충청남도</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="14"
                                            class="ng-binding ng-scope">충청북도</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="8"
                                            class="ng-binding ng-scope">울산</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="12"
                                            class="ng-binding ng-scope">세종</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="101"
                                            class="ng-binding ng-scope">일본</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="102"
                                            class="ng-binding ng-scope">중국</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="105"
                                            class="ng-binding ng-scope">아시아</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="104"
                                            class="ng-binding ng-scope">유럽</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="103"
                                            class="ng-binding ng-scope">미국</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="108"
                                            class="ng-binding ng-scope">캐나다</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="106"
                                            class="ng-binding ng-scope">중남미</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="107"
                                            class="ng-binding ng-scope">오세아니아</a>
                                        <a href="#"
                                            ng-class="{selected: filter_cuisine_value == region_item.type_value}" return
                                            false;" ng-repeat="region_item in filter_region_list"
                                            ng-show="$index + 1 > filter_region_list_length"
                                            ng-click="selected_region($event)" data-filter="100"
                                            class="ng-binding ng-scope">해외기타</a>

                                    </div>
                                </div>

                                <div class="filter-item only-desktop">
                                    <span class="options">중복 선택 가능</span>
                                    <label for="">음식종류</label>

                                    <p class="cuisine_list_wrap">
                                        <input type="checkbox" id="food01" name="food" class="food" data-value="1"
                                            ng-checked="is_checked_filter_value(cusine_filter_name, 1)"><label
                                            for="food01" class="food01"
                                            ng-click="set_filter_value(cusine_filter_name, $event, default_filter_value_hadler)"
                                            data-filter="1">한식</label>
                                        <input type="checkbox" id="food02" name="food" class="food" data-value="3"
                                            ng-checked="is_checked_filter_value(cusine_filter_name, 3)"><label
                                            for="food02" class="food02"
                                            ng-click="set_filter_value(cusine_filter_name, $event, default_filter_value_hadler)"
                                            data-filter="3">일식</label>
                                        <input type="checkbox" id="food03" name="food" class="food" data-value="2"
                                            ng-checked="is_checked_filter_value(cusine_filter_name, 2)"><label
                                            for="food03" class="food03"
                                            ng-click="set_filter_value(cusine_filter_name, $event, default_filter_value_hadler)"
                                            data-filter="2">중식</label>
                                        <input type="checkbox" id="food04" name="food" class="food" data-value="4"
                                            ng-checked="is_checked_filter_value(cusine_filter_name, 4)"><label
                                            for="food04" class="food04 line-break"
                                            ng-click="set_filter_value(cusine_filter_name, $event, default_filter_value_hadler)"
                                            data-filter="4">양식</label>
                                        <input type="checkbox" id="food05" name="food" class="food" data-value="5"
                                            ng-checked="is_checked_filter_value(cusine_filter_name, 5)"><label
                                            for="food05" class="food05"
                                            ng-click="set_filter_value(cusine_filter_name, $event, default_filter_value_hadler)"
                                            data-filter="5">세계음식</label>
                                        <input type="checkbox" id="food06" name="food" class="food" data-value="6"
                                            ng-checked="is_checked_filter_value(cusine_filter_name, 6)"><label
                                            for="food06" class="food06"
                                            ng-click="set_filter_value(cusine_filter_name, $event, default_filter_value_hadler)"
                                            data-filter="6">뷔페</label>
                                        <input type="checkbox" id="food07" name="food" class="food" data-value="7"
                                            ng-checked="is_checked_filter_value(cusine_filter_name, 7)"><label
                                            for="food07" class="food07"
                                            ng-click="set_filter_value(cusine_filter_name, $event, default_filter_value_hadler)"
                                            data-filter="7">카페</label>
                                        <input type="checkbox" id="food08" name="food" class="food" data-value="8"
                                            ng-checked="is_checked_filter_value(cusine_filter_name, 8)"><label
                                            for="food08" class="food08 line-break"
                                            ng-click="set_filter_value(cusine_filter_name, $event, default_filter_value_hadler)"
                                            data-filter="8">주점</label>
                                    </p>
                                </div>

                                <div class="filter-item only-desktop">
                                    <label for="parking01">주차</label>
                                    <p>
                                        <input type="radio" id="parking01" name="parking"
                                            ng-checked="is_checked_parking_value(0)" value="0" checked="checked"><label
                                            for="parking01" data-filter="0"
                                            ng-click="set_filter_value(parking_filter_name, $event, default_filter_value_hadler)">
                                            상관없음</label>
                                        <input type="radio" id="parking02" name="parking"
                                            ng-checked="is_checked_parking_value(1)" value="1"><label for="parking02"
                                            data-filter="1"
                                            ng-click="set_filter_value(parking_filter_name, $event, default_filter_value_hadler)">가능한
                                            곳만</label>
                                    </p>
                                </div>
                            </div>



                        </div>

                        <div class="submit-container" style="top: initial; bottom: 0px;">
                            <button class="btn cancel">취소</button>
                            <button type="submit" value="" ng-click="do_filter_search()" class="btn submit">적용</button>
                        </div>
                    </aside>

                </div> <!-- class="column-contents" -->
            </div>

            <div class="column-side">
                    <!-- 진정한 지도 -->
   			<div class="map_wrap">
                    <div class="map-container_wrap" id = "map" style="width:100%; height: 100%;position:relative;overflow:hidden;"></div>
   					        <div class="hAddr">
						        <span class="title">지도중심기준 행정동 주소정보</span>
						        <span id="centerAddr"></span>
						    </div>
					</div>
   
                    <div class="inner">
                        <section class="column-side-left" style="width:100%">
                            <div class="column-module">
                             
                                <!-- 리뷰 점수 -->
  								<div class="reviewItemContainer">
									<div class="reviewScoreWrap">
                                    	<div class="reviewScore">
                                        	<div class="leftReviewScore">
                                            	<span class="starIcon"></span>
                                            <span class="badge"></span>
                                        </div>
                                        
                                        <!-- 평점 점수 분포도-->
                                        <div class="rightReviewScoreWrap">
                                            <div class="rightReviewScore"></div>
                                        </div>
                                    </div>
                                </div>


								<!-- 베스트, 최신 순 -->
                                <div class="reviewFilter">
                                    <div class="reviewFilterWrap">
                                        <div class="reviewFilterUpper">
                                            <div class="reviewFilterRight">
                                                <button class="bestReview reviewSecond timeReview filterActive" type="button" aria-pressed="true" id="bestReview" value="b" onclick="filterLoad('b', 'order')">베스트순</button>
                                                <button class="bestReview reviewSecond timeReview" type="button" aria-pressed="true" id="recentReview" value="n" onclick="filterLoad(this.value, 'order')">최신순</button>
                                                <button class="bestReview reviewSecond filterPhoto" type="button" aria-pressed="true" id="filterPhoto" value="1" onclick="filterLoad(this.value, 'photo')">
                                                    <svg class="icon" width="18" height="18" viewBox="0 0 18 18" preserveAspectRatio="xMidYMid meet">
                                                        <path fill="currentColor" d="M15.821 3a.67.67 0 0 1 .679.672v10.656a.67.67 0 0 1-.679.672H2.18a.67.67 0 0 1-.679-.672V3.672c0-.375.3-.672.679-.672H15.82zm-.679 1.344H2.858v8.14L7.01 7.781c.094-.125.284-.125.394 0l2.321 2.657c.048.046.063.109.048.156l-.3 1.375c-.016.11.11.172.173.094l2.369-2.579a.202.202 0 0 1 .284 0l2.842 3.094V4.344zm-2.526 3.61a1.1 1.1 0 0 1-1.105-1.095 1.1 1.1 0 0 1 1.105-1.093 1.1 1.1 0 0 1 1.105 1.093 1.1 1.1 0 0 1-1.105 1.094z"></path>
                                                    </svg><div class=""></div>
                                                    사진리뷰
                                                </button>
                                            </div>

											<!-- 별점 -->
                                            <div class="reviewFilterLeft">
                                                <div class="filterBtnWrap" onclick="closeStarFilter()">
                                                    <div class="filterOptionBtn">별점
                                                        <svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                            <path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
                                                        </svg>
                                                        <div id="popOut" class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2" data-popout="true" style="position: absolute; z-index: 1000; top: 29px; right: 9.0156px;">
                                                            <div id="starFilterOption" class="filterBtnOff">
                                                                <div class="share-drop-down__content css-1q9dafi e11jpdq02">
                                                                    <div class="starCountWrap">
                                                                        <button type="button" class="css-3t2wtg e11jpdq01" value="5" onclick = "filterLoad(this.value,'star')">
                                                                            <span class="starCount">
                                                                                <span class="reviewWriterInfoTotalStar">
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                </span>
                                                                                <span class="starCountText"></span>
                                                                            </span>
                                                                        </button>
                                                                    </div>


                                                                    <div class="starCountWrap">
                                                                        <button type="button" class="css-3t2wtg e11jpdq01" value="4" onclick = "filterLoad(this.value, 'star')">
                                                                            <span class="starCount">
                                                                                <span class="reviewWriterInfoTotalStar">
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                </span>
                                                                                <span class="starCountText"></span>
                                                                            </span>
                                                                        </button>
                                                                    </div>



                                                                    <div class="starCountWrap">
                                                                        <button type="button" class="css-3t2wtg e11jpdq01" value="3" onclick = "filterLoad(this.value, 'star')">
                                                                            <span class="starCount">
                                                                                <span class="reviewWriterInfoTotalStar">
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                     <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                </span>
                                                                                <span class="starCountText"></span>
                                                                            </span>
                                                                        </button>
                                                                    </div>


                                                                    <div class="starCountWrap">
                                                                        <button type="button" class="css-3t2wtg e11jpdq01" value = "2" onclick = "filterLoad(this.value, 'star')">
                                                                            <span class="starCount">
                                                                                <span class="reviewWriterInfoTotalStar">
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                     <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                     <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                </span>
                                                                                <span class="starCountText"></span>
                                                                            </span>
                                                                        </button>
                                                                    </div>



                                                                    <div class="starCountWrap">
                                                                        <button type="button" class="css-3t2wtg e11jpdq01" value = "1" onclick = "filterLoad(this.value, 'star')">
                                                                            <span class="starCount">
                                                                                <span class="reviewWriterInfoTotalStar">
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-140">
                                                                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-140" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                     <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                    <svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                                                                        <defs>
                                                                                            <path id="star-path-2702" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path>
                                                                                            <clipPath id="star-clip-2702">
                                                                                                <rect x="0" y="0" width="0" height="24"></rect>
                                                                                            </clipPath>
                                                                                        </defs>
                                                                                        <use xlink:href="#star-path-2702" fill="#DBDBDB"></use>
                                                                                        <use clip-path="url(#star-clip-2702)" xlink:href="#star-path-2702"></use>
                                                                                    </svg>
                                                                                </span>
                                                                                <span class="starCountText"></span>
                                                                            </span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
							</div>
                                
                                <!-- 필터 들어갈 공간 -->
                                <div class="filteringStarWrap">
                                    <div class="filteringStar"></div>
                                </div>


                                <!-- 리뷰 코멘트들 -->
									<div class="reviewList" id="reviewList"></div>


                                <!-- 리뷰 작성 -->
                                <div class="attachWrap">
                                    <!-- 첨부파일 이미지 공간 -->
                                    <div class="xButton" onclick="xBtn()"></div>
                                    <label for="attach">
                                        <div class="attach"></div>
                                    </label>
                                </div>
                                <div class="reviewWritingSection">
                                    <div class="review-modal__section">
                                        <div class="review-modal__form__star__wrap" style="border-top: solid 1px #ededed;">
                                            <div class="review-modal__form__star">
                                                <div class="review-modal__form__star__label">별점</div>
                                                <div class="review-modal__form__star__value">
                                                    <ul class="rating-input">
                                                        <li>
                                                            <label class="rating-input__star" aria-label="별점 1점">
                                                                <input type="radio" value="1">
                                                                <svg class="star" fill="currentColor" width="1em" height="1em"
                                                                    preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
                                                                    <path fill-rule="evenodd"
                                                                        d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z">
                                                                    </path>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label class="rating-input__star" aria-label="별점 2점">
                                                                <input type="radio" value="2">
                                                                <svg class="star" fill="currentColor" width="1em" height="1em"
                                                                    preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
                                                                    <path fill-rule="evenodd"
                                                                        d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z">
                                                                    </path>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label class="rating-input__star" aria-label="별점 3점">
                                                                <input type="radio" value="3">
                                                                <svg class="star" fill="currentColor" width="1em" height="1em"
                                                                    preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
                                                                    <path fill-rule="evenodd"
                                                                        d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z">
                                                                    </path>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label class="rating-input__star" aria-label="별점 4점">
                                                                <input type="radio" value="4">
                                                                <svg class="star" fill="currentColor" width="1em" height="1em"
                                                                    preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
                                                                    <path fill-rule="evenodd"
                                                                        d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z">
                                                                    </path>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label class="rating-input__star" aria-label="별점 5점">
                                                                <input type="radio" value="5">
                                                                <svg class="star" fill="currentColor" width="1em" height="1em"
                                                                    preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
                                                                    <path fill-rule="evenodd"
                                                                        d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z">
                                                                    </path>
                                                                </svg>
                                                            </label>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

					<!-- 리뷰 텍스트 작성 및 사진 첨부 라인 -->   
                        <form class="reviewWritingForm" name="reviewForm" enctype="multipart/form-data">
								<img class="userProfileImg"
                                            src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&w=36&webp=1"
                                            srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&w=72&webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&w=72&webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&w=144&webp=1 3x">
                                        <div class="userCommentWrap">
                                            <div class="userCommentForm">
                                                <div class="userCommentFormReal">
                                                    <input type="text" class="userCommentWritingSector" placeholder="후기를 남겨보세요.">
                                                    <div class="commentPhoto">
                                                        <label class="cameraImg" for="attach">
                                                            <img src="${pageContext.request.contextPath}/images/camera.PNG">
                                                            <input type="file" id="attach" class="cameraImgWrap" style="display:none;"></input>
                                                        </label>
                                                    </div>
                                                    <button type="button" class="putComment" onclick="resist()">입력</button>
                                                </div>
                                            </div>
                                        </div>
                                	</form>
                              </div>
                        </section>
                        
                         <!--    <ul class="commentPageNumber">
                                이전 페이지 버튼
                                <li class="beforePageArrow firstPage" id="beforePageArrow">
                                    <button class="pageBtn beforePageBtn" type="button">
                                        <svg width="1em" height="1em" viewBox="0 0 24 24">
                                            <path fill="currentColor" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z">
                                            </path>
                                        </svg>
                                    </button>
                                </li>
                                <li><button class="pageBtnNumber clickNumber">1</button></li>
                                <li><button class="pageBtnNumber"">2</button></li>
                                <li><button class="pageBtnNumber">3</button></li>
                                <li><button class="pageBtnNumber">4</button></li>
                                <li><button class="pageBtnNumber">5</button></li>
                                <li><button class="pageBtnNumber">6</button></li>
                                <li><button class="pageBtnNumber">7</button></li>
                                <li><button class="pageBtnNumber">8</button></li>
                                <li><button class="pageBtnNumber">9</button></li>
                                <li><button class="pageBtnNumber">10</button></li>

                                다음 페이지 버튼
                                <li class="afterPageArrow">
                                    <button class="pageBtn afterPageBtn" type="button">
                                        <svg width="1em" height="1em" viewBox="0 0 24 24">
                                            <path fill="currentColor" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z">
                                            </path>
                                        </svg>
                                    </button>
                                </li>
                            </ul> -->
                        </div>
                    </div>
        </article>
    </main>
<jsp:include page ="${pageContext.request.contextPath}/app/fix/footer.jsp"/> 
</body>
 <script>
	let userNumber = "${sessionScope.userNumber}";
	let userId = "${sessionScope.userId}";
</script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<!-- 카카오맵 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5d2c50ee9854d5c91e1e42edc701879c&libraries=services"></script>
<script>var contextPath="${pageContext.request.contextPath}"</script>
<script>let context = "${pageContext.request.contextPath}"</script>
<script src="${pageContext.request.contextPath}/assets/js/service/map.js?ver=1"></script>
</html>