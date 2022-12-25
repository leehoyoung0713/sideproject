<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
	Altitude by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>회원가입</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
		<style>
			input[type='button'], input[type='submit']{border-radius:0;}
			textarea{resize:none;}
			label{margin-top:3%;}
			div.preview{overflow:hidden;}
			div.preview img{object-fit:cover;}
		</style>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Wrapper -->
					<div class="wrapper">
						<div class="inner">
							<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
						</div>
					</div>

				<!-- Wrapper -->
					<div class="wrapper">
						<div class="inner">

							<!-- Main -->
							<section class="main">
								<header class="major">
									<a href="javascript:void(0);" class="image main"><img src="${pageContext.request.contextPath}/images/join01.png" /></a>
									<h1>회원가입</h1>
									<p>
										환영합니다 고객님<br>
										회원가입 후 정상적인 서비스를 이용하실 수 있습니다.
									</p>
								</header>
								<hr />
								<form method="post" action="${pageContext.request.contextPath}/member/joinOk.me" name="joinForm">
									<div style="display:flex; justify-content:space-around;">
										<div style="width:40%">
											<p style="background:#fd3a3a2e"><span style="color:red; font-size:2rem; font-weight:bold;">*</span>아래 항목은 모두 작성해주세요.</p>
												<div>
													<div class="col-6 col-12-xsmall" style="width:100%">
														<p style="margin:0;">
															아이디 <span id="result" style="font-size:0.7em;"></span>
														</p>
														<input type="text" name="memberId" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" />
														<br>
														<p style="margin:0;">비밀번호</p>
														<input type="password" name="memberPw" placeholder="영문 4자 이상, 최대 20자"/>
														<br>
														<div style="display:flex; justify-content:space-between;">
															<div style="width:48%;">
																<p style="margin:0;">이름</p>
																<input type="text" name="memberName"/>
															</div>
															<div style="width:48%;">
																<p style="margin:0;">나이</p>
																<input type="text" name="memberAge"/>
															</div>
														</div>
														<hr>
														<div style="margin-top:6%; margin-bottom:6%;">
															<input type="checkbox" id="term" name="term">
															<label for="term" style="font-size:1.1em; font-weight:bold;">전체 동의합니다.</label>
														</div>
														<div class="col-12" style="display:flex; justify-content:space-between;">
															<div>
																<input type="checkbox" id="term1" name="term1" class="terms">
																<label for="term1">서비스 이용약관 </label>
															</div>
															<div>
																<a class="showTerm" href="term1-content">펼쳐보기</a>
															</div>
														</div>
														<textarea class="term-content" name="term1-content" id="term1-content" placeholder="Enter your message" rows="3" style="display:none;" data-index="0">안녕하세요</textarea>
														<br>
														<div class="col-12" style="display:flex; justify-content:space-between;">
															<div>
																<input type="checkbox" id="term2" name="term2" class="terms">
																<label for="term2">개인정보 수집 및 이용</label>
															</div>
															<div>
																<a class="showTerm" href="term2-content">펼쳐보기</a>
															</div>
														</div>
														<textarea class="term-content" name="term2-content" id="term2-content" placeholder="Enter your message" rows="3" style="display:none;" data-index="1"></textarea>
														<br>
													</div>
												</div>
												<hr />
												<p style="background:#3a6dfd2e"><span style="color:red; font-size:2rem; font-weight:bold;"> </span>아래 항목은 선택 사항입니다.</p>
												<p style="margin:0;">성별</p>
												<div class="col-4 col-12-small">
													<input type="radio" id="male" name="memberGender" value="남자">
													<label for="male">남자</label>
													<input type="radio" id="female" name="memberGender" value="여자">
													<label for="female">여자</label>
													<input type="radio" id="none" name="memberGender" value="선택안함" checked>
													<label for="none">선택안함</label>
												</div>
												<p style="margin:0;">이메일</p>
												<input type="text" name="memberEmail"/>
												<br>
												<p style="margin:0;">우편번호</p>
												<div style="display:flex;">
													<input type="text" name="memberZipcode" id="memberZipcode" placeholder="우편번호">
													<input type="button" onclick="find()" value="우편번호 찾기"><br>
												</div>
												<br>
												<input type="text" name="memberAddress" id="memberAddress" placeholder="주소">
												<input type="text" name="memberAddressDetail" id="memberAddressDetail" placeholder="상세주소">
												<div class="col-12" style="margin-top:8%;">
													<ul class="actions" style="display:flex; justify-content:center;">
														<li><input type="button" value="완료" class="primary" onclick="send()"/></li>
														<li><input type="button" value="취소" class="primary" onclick=""/></li>
													</ul>
												</div>
											</div>
											<div class="preview" style="width:40%">
												<div>
													<h4>광고1</h4>
													<img src="${pageContext.request.contextPath}/images/ex01.png">
												</div>
												<hr>
												<div>
													<h4>광고2</h4>
													<img src="${pageContext.request.contextPath}/images/ex03.png">
												</div>
												<hr>
												<div>
													<h4>광고3</h4>
													<img src="${pageContext.request.contextPath}/images/ex01.png">
												</div>
											</div>
										</div>
									</form>
							</section>
						</div>
					</div>
				<!-- Wrapper -->
					<div class="wrapper">
						<div class="inner">

							<!-- Footer -->
								<footer id="footer">
									<section class="links">
										<div>
											<h3>Magna</h3>
											<ul class="plain">
												<li><a href="#">Aliquam tempus</a></li>
												<li><a href="#">Ultrecies nul</a></li>
												<li><a href="#">Gravida ultricies</a></li>
												<li><a href="#">Commodo etiam</a></li>
											</ul>
										</div>
										<div>
											<h3>Feugiat</h3>
											<ul class="plain">
												<li><a href="#">Morbi sem lorem</a></li>
												<li><a href="#">Praes sed dapi</a></li>
												<li><a href="#">Sed adipis nullam</a></li>
												<li><a href="#">Fus dolor lacinia</a></li>
											</ul>
										</div>
										<div>
											<h3>Tempus</h3>
											<ul class="plain">
												<li><a href="#">Donecnec etiam</a></li>
												<li><a href="#">Aapibus sedun</a></li>
												<li><a href="#">Namnulla tempus</a></li>
												<li><a href="#">Morbi set amet</a></li>
											</ul>
										</div>
										<div>
											<h3>Aliquam</h3>
											<ul class="plain">
												<li><a href="#">Lorem prasent dia</a></li>
												<li><a href="#">Nellentes ipsum</a></li>
												<li><a href="#">Diamsed arcu dolor</a></li>
												<li><a href="#">Sit amet cursus</a></li>
											</ul>
										</div>
									</section>
									<ul class="contact-icons">
										<li class="icon solid fa-home">1234 Fictional Street #5432 Nashville, TN 00000-0000</li>
										<li class="icon solid fa-phone"><a href="#">(000) 000-0000</a></li>
										<li class="icon solid fa-envelope"><a href="#">info@untitled.tld</a></li>
									</ul>
									<p class="copyright">&copy; Untitled. All rights reserved.</p>
								</footer>

						</div>
					</div>
			</div>
	</body>
	<!-- Scripts -->
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/join.js"></script>
</html>




