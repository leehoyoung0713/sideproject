<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/footer.css">
</head>
<body>
    <footer class="footer">
        <div class="footerMenu_container">
            <div class="footer_menu">
                <div id="footer_menu_left" class="footer_menu">
                    <span><a href="${pageContext.request.contextPath}/app/commonterm/CommonTerm_community.jsp" style=" text-decoration-line: none; color: inherit;">정책 · 약관</a></span>
                    <svg class='footer_menu_svg' viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__20lDO FooterMenu_openLinkIcon__15pDJ" aria-hidden="true"><path d="M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z"></path><path d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z"></path></svg>

                    <span><a href="${pageContext.request.contextPath}/app/commonterm/CommonTerm_community.jsp" style=" text-decoration-line: none; color: inherit;">개인정보처리방침</a></span>
                    <svg class='footer_menu_svg' viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__20lDO FooterMenu_openLinkIcon__15pDJ" aria-hidden="true"><path d="M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z"></path><path d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z"></path></svg>
                </div>
                
            </div>
        </div>
        <div class="footer_container">

            <div class="footer_inner">
    
                <section class="left_section">
                    <div class="section_title">멈미뭄미 고객센터</div>
                    <div class="footer_buttons">
                        <button type="button" class="footer_button" onclick="OnClick()">채팅 상담하기
                            <svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon" aria-hidden="true">
                                <path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path>
                            </svg>
                        </button>
    
                       <!--  <a href="" class="footer_a">문의 등록하기
                            <svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon" aria-hidden="true">
                                <path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path>
                            </svg>
                        </a>
                        <a href="" class="footer_a">도움말 센터 바로가기
    
                            <svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon" aria-hidden="true">
                                <path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path>
                            </svg>
                        </a> -->
    
                        <hr class="diver">
                        <dl class="footer_dl" style="font-size: 14px; font-weight: bold;">
                            <dt>상담 가능 시간</dt>
                            <dd>평일 오전 9시 ~ 오후 6시 (주말, 공휴일 제외)</dd>
                        </dl>
    
                    </div>
                </section>
                    <section class="right_section">
                        <ul>
                            <li class="item">멈미뭄미㈜</li>
                            <li class="item">달려라 강산아</li>
                            <li class="item">사업자등록번호 123-45-67890</li>
                            <li class="item">통신판매업신고번호 2021-서울강남C-1153</li>
                            <li>서울특별시 강남구 역삼동 736-7</li>
                        </ul>
                        <div>
                        <ul>
                            <li class="item">이메일 상담
                               pmk3211111@naver.com
                            </li>
                            <li class="item item1">유선 상담
                                010-1234-1234
                            </li>
                        </ul>
                        <address>© meommi Co., Ltd.</address>
                        </div>
                       
        
                    </section>
    
    
            </div>
        </div>
    </footer>
</body>
<script>
function OnClick()  {
	  alert('준비중입니다');
	  return;
	}
</script>
</html>