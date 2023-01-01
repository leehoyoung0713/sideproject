<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- taglib지시자로 라이브러리 선언 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header id="header">
	<a href="index.html" class="logo">Altitude <span>by Pixelarity</span></a>
	<nav>
		<ul>
			<li><a href="#menu">Menu</a></li>
		</ul>
	</nav>
</header>

<!-- Nav -->
<nav id="menu">
	<ul class="actions stacked">
	
		<!-- 회원의 번호가 없다면 -->
		<c:choose>
			<c:when test="${empty memberNumber}">
			
				<!-- 회원가입 페이지로 이동 -->
				<li><a href="${pageContext.request.contextPath}/member/join.me" class="button primary fit">회원가입</a></li>
				
				<!-- 로그인 페이지로 이동 -->
				<li><a href="${pageContext.request.contextPath}/member/login.me" class="button fit">로그인</a></li>
			</c:when>
			<c:otherwise>
			
				<!-- 로그아웃 페이지로 이동 -->
				<li><a href="${pageContext.request.contextPath}/member/logout.me" class="button fit">로그아웃</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</nav>













