<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장례 업체</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/fix/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/user/funeral.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/fix/footer.css">
<script src="https://kit.fontawesome.com/5ee2c7b38b.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div id="page-container">
		<main id="main-app">
			<div class="web-header">
				<div class="web-header-large">
					<jsp:include
						page="${pageContext.request.contextPath}/app/fix/header.jsp" />
				</div>
			</div>
			<div class="MainWrapper_content__GZkTa">
				<ul class="RewardMainTab_container__geHTr">
					<li><a class="RewardMainTab_link___1r2a"
						href="${pageContext.request.contextPath}/app/service/animalfeed.jsp">
							<span>사료 검색</span>
					</a></li>
					<li><a class="RewardMainTab_link___1r2a"
						href="${pageContext.request.contextPath}/app/service/lostfoundanimal.jsp">
							<span>유기동물 찾기</span>
					</a></li>
					<li class="RewardMainTab_onlyLarge__1q7_V"><a
						class="RewardMainTab_link___1r2a RewardMainTab_active__1zRir"
						href="${pageContext.request.contextPath}funeral.fu"
						aria-current="page"> <span>장례업체</span>
					</a></li>
				</ul>
				<div id="image">
					<img src="https://www.goodbyeangel.co.kr/img/main2.gif" alt="error">
				</div>
				<div
					class="RewardMainWrapper_container__2HR7Y RewardMainCategory_container__19OYY">
					<!-- 글씨 추가부분 -->
					<div
						class="RewardProjectListApp_container__1ZYeD RewardMainProjectList_listApp__2noRS">
						<div
							class="ProjectListHead_container__rpQ37 RewardProjectListHead_container__2FzIj">
							<div class="ProjectListHead_bar__2dyHz">
								<span id="addtitle">인기순</span>
								<form class="ProjectListHead_search__HN3am" method="get" action="${pageContext.request.contextPath}/funeralSearch.fu" name="">
									<label
										for="search-keyword-df741586-8113-43b4-ac98-19be39fc487e">
										<input
										id="search-keyword-df741586-8113-43b4-ac98-19be39fc487e"
										class="" name="funeralSearch" type="search" placeholder="검색" value="">
										<div class="ProjectListHead_right__3_Jo1">
											<button class="ProjectListHead_find__3HsFc" type="submit"
												aria-label="검색">
												<img src="../../images/search.png"
													style="width: 25px; margin-top: 20px;" />
											</button>
										</div>
									</label>
								</form>
								
								<div class="ProjectListHead_children__2Y7-F"></div>
							</div>
						</div>
						<div class="ProjectCardList_container__3Y14k" id="funeralList">
							<div class="ProjectCardList_list__1YBa2" id="funeralList">
							
								<tbody>
									<c:choose>
										<c:when test="${(funerals != null and fn:length(funerals) > 0)}">
											<c:forEach var="funeral" items="${funerals}">
												<div class="ProjectCardList_item__1owJa">
													<div>
														<div
															class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">
															<a
																href="${funeral.getFuneralUrl()}"
																class="CardLink_link__1k83H CommonCard_image__vaqkf"
																aria-hidden="true" tabindex="-1">
																<div class="CommonCard_rect__2wpm4">
																	<span
																		class="CommonCard_background__3toTR CommonCard_visible__ABkYx"
																		style="background-image: url('https://cdn.imweb.me/upload/S2020060844c46e5f6596d/a47e7ff60709f.png');"></span>
																</div>
															</a>
															<div class="CommonCard_info__1f4kq">
																<div class="RewardProjectCard_info__3JFub">
																	<div class="RewardProjectCard_infoTop__3QR5w">
																		<a class="CardLink_link__1k83H"
																			href="/web/campaign/detail/54516?_refer_section_st=REWARD_0">
																			<p
																				class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">
																				<strong>장례업체ㅣ</strong><strong> <c:out value="${funeral.getFuneralName()}" /> </strong>
																			</p>
																		</a>
																		<div>
																			<span class="RewardProjectCard_category__2muXk">주소</span>
																			<span class="RewardProjectCard_makerName__2q4oH"><c:out value="${funeral.getFuneralAddress()}" /></span>
																		</div>
																		<div class="RewardProjectCard_gauge__3p9US">
																			<span style="width: 100%;"></span>
																		</div>
																		<span
																			class="RewardProjectCard_days__3eece RewardProjectCard_isAchieve__1LcUu">
																			<span class="RewardProjectCard_remainingDay__2TqyN">예약가능여부</span>
																			<span class="RewardProjectCard_isAchieve__1LcUu">
																				<em>가능</em>
																		</span>
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>

											</c:forEach>
										</c:when>
										<c:when test="${(funeralSearch != null and fn:length(funeralSearch) > 0)}">
											<c:forEach var="funeralSearch" items="${funeralSearch}">
												<div class="ProjectCardList_item__1owJa">
													<div>
														<div
															class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">
															<a
																href="${funeralSearch.getFuneralUrl()}"
																class="CardLink_link__1k83H CommonCard_image__vaqkf"
																aria-hidden="true" tabindex="-1">
																<div class="CommonCard_rect__2wpm4">
																	<span
																		class="CommonCard_background__3toTR CommonCard_visible__ABkYx"
																		style="background-image: url('https://cdn.imweb.me/upload/S2020060844c46e5f6596d/a47e7ff60709f.png');"></span>
																</div>
															</a>
															<div class="CommonCard_info__1f4kq">
																<div class="RewardProjectCard_info__3JFub">
																	<div class="RewardProjectCard_infoTop__3QR5w">
																		<a class="CardLink_link__1k83H"
																			href="/web/campaign/detail/54516?_refer_section_st=REWARD_0">
																			<p
																				class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">
																				<strong>장례업체ㅣ</strong><strong> <c:out value="${funeralSearch.getFuneralName()}" /> </strong>
																			</p>
																		</a>
																		<div>
																			<span class="RewardProjectCard_category__2muXk">주소</span>
																			<span class="RewardProjectCard_makerName__2q4oH"><c:out value="${funeralSearch.getFuneralAddress()}" /></span>
																		</div>
																		<div class="RewardProjectCard_gauge__3p9US">
																			<span style="width: 100%;"></span>
																		</div>
																		<span
																			class="RewardProjectCard_days__3eece RewardProjectCard_isAchieve__1LcUu">
																			<span class="RewardProjectCard_remainingDay__2TqyN">예약가능여부</span>
																			<span class="RewardProjectCard_isAchieve__1LcUu">
																				<em>가능</em>
																		</span>
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
												
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>

								<!-- 3개씩 반복 -->
							</div>
							<!-- page number추가 -->
							<div class="board-footer">
							<table style="font-size:1.3rem">
											<tr align="center" valign="middle">
												<td class="web-view">
													<c:if test="${prev}">
														<a href="${pageContext.request.contextPath}/funeral.fu?page=${startPage - 1}">&lt;</a>
													</c:if>
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${not (i eq page)}">
																<a href="${pageContext.request.contextPath}/funeral.fu?page=${i}">
																
																	<c:out value="${i}"/>&nbsp;&nbsp;
																</a>
															</c:when>
															<c:otherwise>
																	<c:out value="${i}"/>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													<c:if test="${next}">
														<a href="${pageContext.request.contextPath}/funeral.fu?page=${endPage + 1}">&gt;</a>
													</c:if>
												</td>
											</tr>
										</table>
							</div>
							<!-- page number 추가 끝 -->
						</div>
					</div>
				</div>
				<!-- footer -->
				<jsp:include
					page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
			</div>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/service/funeral.js"></script>
<script>
	
</script>
</html>