<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>와디즈 로그인</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?e5a9644b">
    <link rel="stylesheet" href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
    <link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?7df0a58c">
    <link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?6cd504ed">
    <link rel="stylesheet" href="https://static.wadiz.kr/main/main.5619fb79.css">
    <link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.0b5e20dd.css">
</head>
<style>
.SearchInputForm_container__1iCMr{
	    border: 1px solid #ff914d !important;
}
</style>
<body>
    <div id="wz-header">
        <div class="web-header">
            <div class="web-header-large">
                <header class="header-wrapper web-header-simple">
                    <div class="header-container">
                        <h1 class="wadiz-logo"><a href="/"><span class="label">와디즈</span>
                                <img alt="" src="${pageContext.request.contextPath}/images/logo.png" width="95" height="30">
                            </a></h1>
                        <ul class="gnb-large" style=" position: relative; display: inline; float: right; right: 0;">
                            <li class="login"><a href="${pageContext.request.contextPath}/user/login.us" class="item"><span>로그인</span></a>
                            </li>
                            <li class="signup"><a href="${pageContext.request.contextPath}/user/join.us"
                                    class="item"><span>회원가입</span></a></li>
                        </ul>
                    </div>
                </header>
            </div>
        </div>
    </div>
</body>



</html>