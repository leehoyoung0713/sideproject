<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?e5a9644b">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?7df0a58c">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?56abc884">
<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=201803151400" rel="stylesheet">
<link rel="stylesheet" href="https://static.wadiz.kr/account/main.1b0cd3eb.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/iam/main.f99e3b76.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.0b5e20dd.css">
<style>
    .Button_button__3ip2b.Button_lg__m4_5e {
        padding: 9px 24px;
        line-height: 1.75;
        font-size: 16px;
        margin-top: 12px;
    }

    .bottom-message a {
        color: #FF914D !important;
    }
</style>

<body>
    <div id="page-container">

        <div class="black-bg-wrap" style="display:none;"></div>



        <script>
            window.dispatchEvent(new CustomEvent('WadizHeaderLoaded', {
                detail: {
                    element: document.getElementById('wz-header')
                }
            }));
        </script>


        <form id="forwardForm" method="get">
            <input type="hidden" id="returnURL" name="returnURL">
        </form>
        <input type="hidden" id="sessionLoginCheck" value="false">

        <main class="account-intro-login">
            <div class="user-sign-container">
                <div class="wz container form-container form-login">
                    <h2 class="wz text display2">로그인</h2>
                    
                    
                    <form name="frm_login" id="frm_login" class="wz form" action="${pageContext.request.contextPath}/user/loginOk.us">
                        <div class="field">
                            <div class="wz input">
                                <input type="email" id="userName" name="userName" class="input-text"
                                    placeholder="이메일 입력" title="이메일 입력">
                            </div>
                            <em id="emailError" class="error-text helper error">이메일 형식이 올바르지 않습니다.</em>
                        </div>
                    
                        <div class="field">
                            <div class="wz input">
                                <input type="password" id="password" name="password" class="input-text" maxlength="20"
                                    placeholder="비밀번호 입력" title="비밀번호 입력">
                            </div>
                            <span id="loginError"></span>
                        </div>
                        
                        
                        
                        
                        
                        <div class="login-action">
                            <p class="forgot"><a class="wz text" href="${pageContext.request.contextPath}/user/findId.us"
                                    data-event="iam.signin.goto.forgot">로그인 정보를 잊으셨나요?</a></p>
                        </div>
                        
                        
                        
                        
                        <button type="button" id="btnLogin" class="wz button primary block submit-button"
                            data-event="iam.signin.submit" style="background-color:#FF914D;border:0" onclick="loginCheck()">로그인</button>
                            
                           
                    </form>
                    <div id="iam-account-app">
                        <div>
                            <div>
                            
	                            <button class="Button_button__3ip2b Button_lg__m4_5e Button_block__2nblq SNSButtonList_kakaoButton__2lTDs SNSButtonList_spacer__38ac5" onclick="kakaoLogin()" type="button" style="background-color: #FEE500;">
		                            <span>
		                            	<span class="Button_children__VGHI5">
		                            		<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__1YH1P SNSButtonList_kakaoIcon__1s6gw" aria-hidden="true" style="position: absolute;
		                                                left: 16px;
		                                                width: 22px;
		                                                height: 22px
		                                                ">
		                                                <path d="M16 4.64c-6.96 0-12.64 4.48-12.64 10.08 0 3.52 2.32 6.64 5.76 8.48l-.96 4.96 5.44-3.6 2.4.16c6.96 0 12.64-4.48 12.64-10.08S22.96 4.56 16 4.64z"></path>
		                                    </svg>카카오로 시작하기
		                                </span>
		                            </span>
		                         </button>

                                 <!-- 구글 로그인 -->      	
	                             <div id="buttonDiv" style="margin-top:15px;"></div> 

                             
                             
                            </div>
                        </div>
                        <div class="bottom-message">
                            <p>아직 멈미뭄미 계정이 없나요?<a href="${pageContext.request.contextPath}/user/join.us" data-return-url=""
                                    data-event="iam.signin.goto.signup">회원가입</a></p>
                        </div>
                    </div>
                </div>
        </main>

        <!-- 카카오 로그인 히든 폼 --> 
        <form method="post" name="frm_login_kakao" id="frm_login_kakao" action="${pageContext.request.contextPath}/user/loginKakao.us">
        	<input type="hidden" name="kakaoLoginForm" id="kakaoLoginForm" value="">
        	<input type="hidden" name="kakaoNameForm" id="kakaoNameForm" value="">        	
        </form>
        
        <!-- 구글 로그인 히든 폼 --> 
        <form method="post" name="frm_login_google" id="frm_login_google" action="${pageContext.request.contextPath}/user/loginGoogle.us"> 
             <input type="hidden" name="googleLoginForm" id="googleLoginForm" value="">
        	<input type="hidden" name="googleNameForm" id="googleNameForm" value="">
        </form>
        
    </div>
</body>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>var contextPath="${pageContext.request.contextPath}";</script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js" integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
<script src = "https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 구글 api 사용을 위한 스크립트 -->
<script src="https://accounts.google.com/gsi/client" async defer></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/user/login.js"></script>
</html>