<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멈미뭄미 회원가입</title>
<link rel="icon" type="image/x-icon" href="diolpit5.ico">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
        <link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?e5a9644b">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?7df0a58c">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?56abc884">
<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=201803151400" rel="stylesheet">
<link rel="stylesheet" href="https://static.wadiz.kr/account/main.1b0cd3eb.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/iam/main.f99e3b76.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.0b5e20dd.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/join_in.css">
</head>

<body>
       
   
    <main>
        <!-- 간편 로그인 -->
        <div id="easy_join_in">
          <h2>간편가입</h2>
          <div class="FirstBenefitPopper_firstBenefitPopper__1dKmf">
              <div class="FirstBenefitPopper_content__2XS-G">
                  <span class="FirstBenefitPopper_giftIcon__1RCpf"></span>

                
                  <span class="FirstBenefitPopper_text__3hDUb">멈미뭄미가 처음이라면?
                  </span>
              </div>
          </div>
          <div id="square_btns">
              	                       
          </div>
      </div>
      
        <div class="SignUpIntroApp_divider__24Rgj"></div>
      <!-- 아이디 간편가입 -->
<form method="post" action="${pageContext.request.contextPath}/app/user/joinOk.us" name="joinForm">
        <div id="email_join_in">

            <h3 style="font-size:18.72px;font-weight:bold">아이디 간편가입</h3>
            <p id="joinErrorMsg"></p>
            <div class="label"><label for="아이디">아이디</label></div>
            <div id="email">
            <!-- 아이디 입력창 -->
                <div class="input" style="width:70%">
                	<input type="text" class="inputId" name="inputId" id="id" placeholder="아이디 입력(이메일 주소 포함)">
                </div>
                
                <!-- 중복 확인 버튼 -->
                <div>
                	<button class="OverlapCheck" style="background-color: #d55506; color: #fff; font-weight:400;">중복확인</button></div>
            	</div>
            	<!-- 중복확인 메시지 나오는 공간 -->
            <p class="idalter" style="position: absolute;"></p>
            <div id="name">
                <div class="label"><label for="이름">이름</label></div>
                <div class="input"><input type="text" placeholder="이름 입력" class="namecheck" name="inputName"></div>
            </div>

            <div id="password">
                <div class="label"><label for="비밀번호">비밀번호</label></div>
                <div class="input"><input type="password" placeholder="비밀번호 입력" id="oioioio111" name="inputPassword">
                    <svg id = "password_1" class="eye" viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon__vtskP" aria-hidden="true">
                        <path d="M23.589 7.895l.411.001c10.56 0 20.16 6.504 23.34 15.78l.132.432-.144.396c-3.216 9.168-12.816 15.6-23.328 15.6A24.84 24.84 0 0 1 .684 24.492l-.168-.432.156-.42A24.804 24.804 0 0 1 24 7.896zM24 14.46a9.6 9.6 0 1 0 0 19.2 9.6 9.6 0 0 0 0-19.2zm0 4.14a5.4 5.4 0 1 1 0 10.8 5.4 5.4 0 0 1 0-10.8z">
                    </svg>
                </div>
                <div class="input"><input type="password" placeholder="비밀번호 확인" id="oioioio112" name="inputPasswordCheck" style="margin-top: 6px;">
                    <svg id = "password_2" class="eye" viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon__vtskP" aria-hidden="true">
                        <path d="M23.589 7.895l.411.001c10.56 0 20.16 6.504 23.34 15.78l.132.432-.144.396c-3.216 9.168-12.816 15.6-23.328 15.6A24.84 24.84 0 0 1 .684 24.492l-.168-.432.156-.42A24.804 24.804 0 0 1 24 7.896zM24 14.46a9.6 9.6 0 1 0 0 19.2 9.6 9.6 0 0 0 0-19.2zm0 4.14a5.4 5.4 0 1 1 0 10.8 5.4 5.4 0 0 1 0-10.8z">
                    </svg>
                </div>
            </div>



			<!-- 약관 동의 -->
            <div id = "agreement">
                <div id = "agreement_check" style="margin-top: 24px; align-items:center;">
                    <button class="Button_button__3ip2b Button_text__3Q5QV Button_iconOnly__fOIQf iconButton SignUpAllCheckTermsCheckbox_termsMoreButton__wal9S" id="Button_button__3ip2b2" type="button" style="position: relative; left: 328px;">
                      	<span>
                            <span class="Button_children__VGHI5">
                                <svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__1YH1P" aria-hidden="true">
                                    <path d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path>
                                </svg>
                            </span>
        				</span>
    				</button>
                    <input id = "allterm" type="checkbox" style="position: absolute;" name="allterm">
                    <label for = "agreement_checkbox"></label>
                    <span >전체동의</span>
                </div>
                <div id = "agreement_explanation" >
                회원 서비스(필수), 이벤트·혜택알림 동의(선택)
                </div>
            </div>
            
            <!-- 회원가입 완료 버튼 -->
            <div>
                <button type="button" id="finish" class="wz button primary block submit-button" style="cursor:pointer;background-color:#ff914d" onclick="joinCheck()">완료</button>
            </div>
</form>

            <img id='inqueryImg' alt="멈미뭄미 상담 버튼" src="https://cf.channel.io/pub-file/22503/5fd6fd874e7f9156515f/group-4-copy.png" width="60" height="60" class="Launcherstyled__Image-ch-front__sc-oef45p-4 gzwqUH">

        <p class="footer_p">
            이미 멈미뭄미 계정이 있나요?&nbsp&nbsp; <a href="${pageContext.request.contextPath}/user/login.us" data-return-url="" data-event="iam.signin.goto.signup">로그인</a>
        </p>
    </main>
    	<div class="WadizModal_portal__JMa0C">
    	 
    	</div>
    <div class="modalclass modalclass_hidden" >
        <div class="modalclass_overlay"></div>
        <div class="modalclass_content" style="padding-right: 0px; padding-bottom: 0; left:40.5%; top: 15.5%; padding-right: 20px;
        padding-bottom: 20px; padding-left: 20px;">
            <button class="modalclassbutton_one" type="button" aria-label="닫기"><svg viewBox="0 0 40 40" focusable="false" role="presentation" class="modalclassbutton_two" aria-hidden="true"><path d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z">

            </path>
        </svg>
    </button>
            <header class="modalclass_header">
            <h1 style="font-size:28px;margin-top:16px;margin-bottom:8px;font-weight:bold;">약관확인</h1>
            <p class="modalclass_content_title" style="font-size:14px;">약관에 동의하셔야 해당 서비스를 이용 가능합니다.</p>
        </header>
            <section class="modalclass_content_checkboxAll">
                <label class="modalcalss_content_checkboxAll_label">
                    <input type="checkbox" class="checkbox_All" id="term">
                    <span class="Checkbox_content_contents">
                        <span>
                            <span class="Checkbox_content_contents_title">전체 동의</span>
                        </span>
                    </span>

                </label>
            </section>
            <div class="modalclass_contents_mid">
                <div class="modalclass_contents_midone">
                    <div>
                        <label class="modalclass_contents_midone_one">
                        <input type="checkbox" id="modalCheck" class="modalclass_contents_midone_one_ckeckbox" name="terms">
                        <span>
                            <div class="modalclass_contents_midone_one_one"><span style="color: black; font-weight: 700;">펀딩 · 스토어 · 회원</span>서비스 가입
                                <span class="modalclass_contents_midone_one_one_one">(필수)</span>
                            </div>
                        </span>
                    </label>
                    </div>
                    <button class="okokokok" aria-label="내용 닫기"><svg viewBox="0 0 32 32" focusable="false" role="presentation" class="kookokoko1111" aria-hidden="true">
                        <path d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z">
                            
                        </path>
                    </svg>
                </button>
                </div>
                    <div class="modalclass_contents_midtwo">
                        <div class="modalclass_contents_midtwo_one">
                            <div class="modalclass_contents_midtwo_onediv">
                                <label class="modalclass_contents_midtwo_onelabel">
                                    <input type="checkbox" class="modalclass_contents_midtwo_oneinput">
                                    <span class="modalclass_contents_midtwo_onespan"></span>
                                    <span class="modalclass_contents_midtwo_onespanone">
                                        <span>
                                            <div>회원가입 약관</div>
                                        </span>

                                    </span>

                                </label>
                            </div>
                                <button class="modalclass_contents_midtwo_onebutton_one">내용보기</button>
                        </div>
                        <div class="modalclass_contents_midtwo_checkboxopen_one" style="display: none;">
                            <main class="modalclass_contents_midtwo_checkboxopen_main">
                                <article class="modalclass_contents_midtwo_checkboxopen_main_artricle">
                                        <h1>회원가입약관</h1>
                                        <p>와디즈 회원가입과 관련하여 필요한 사항을 규정합니다.</p>
                                        <div class="update">
                                          <h5>업데이트 노트</h5>
                                          <ul>
                                            <li>본 이용약관은 2022년 3월 24일부터 시행됩니다.</li>
                                            <li>개정 2022.03.17</li>
                                            <li>개정 2021.11.02 <a href="/web/wterms/signup/20211102" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2021.08.24 <a href="/web/wterms/signup/20210824" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2021.07.12 <a href="/web/wterms/signup/20210712" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2020.11.17 <a href="/web/wterms/signup/20201117" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2020.04.20 <a href="/web/wterms/signup/20200420" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2020.03.26 <a href="/web/wterms/signup/20200326" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2019.07.17 <a href="/web/wterms/signup/20190717" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2019.06.20 <a href="/web/wterms/signup/20190620" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2019.04.29 <a href="/web/wterms/signup/20190429" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>시행 2018.12.27 <a href="/web/wterms/signup/20181227" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>개정 2018.12.20 <a href="/web/wterms/signup/20160125" class="previous-terms" target="_blank">이전 회원가입약관 보기<i class="icon chevron-right" aria-hidden="true"></i></a></li>
                                            <li>시행 2016.01.20</li>
                                          </ul>
                                        </div>
                                        <ol class="table">
                                          <li><a href="#제1장-총칙">제1장 총칙</a></li>
                                          <li><a href="#제2장-서비스의-이용">제2장 서비스의 이용</a></li>
                                          <li><a href="#제3장-회원정보의-보호-및-관리">제3장 회원정보의 보호 및 관리</a></li>
                                          <li><a href="#제4장-기타">제4장 기타</a></li>
                                          <li><a href="#부칙">부칙</a></li>
                                          <li><a href="#별지-서비스-이용료">별지: 서비스 이용료</a></li>
                                        </ol>
                                        <hr>
                                        <h2 id="제1장-총칙">제1장 총칙</h2>
                                        <h3>제1조 (목적)</h3>
                                        <p>본 약관은 와디즈 주식회사(이하 "회사")가 인터넷 사이트(https://www.wadiz.kr)를 통하여 제공하는 회원 서비스, 크라우드펀딩 서비스, 스토어 서비스 등 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
                                        <h3>제2조 (정의)</h3>
                                        <p>본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
                                        <ol>
                                          <li>서비스 : 회원이 온라인 홈페이지를 통하여 본 약관에 따라 이용할 수 있는 회사 또는 회사의 자회사가 제공하는 모든 서비스를 의미합니다.</li>
                                          <li>홈페이지 : 본 약관에 따라 회사가 제공하는 서비스가 구현되는 온라인상의 웹페이지(https://www.wadiz.kr)를 말합니다.</li>
                                          <li>회원 : 본 약관에 따라 회사와 서비스이용계약을 체결하고 홈페이지를 통하여 서비스를 이용할 수 있는 자격을 부여받은 자를 말합니다.</li>
                                          <li>아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 회사가 승인하는 문자와 숫자의 조합을 의미합니다.</li>
                                          <li>비밀번호 : 회원이 부여 받은 아이디와 일치되는 회원임을 확인하고 비밀보호를 위해 회원 자신이 정한 문자 또는 숫자의 조합을 의미합니다.</li>
                                          <li>게시물 : 회원이 서비스를 이용함에 있어 홈페이지의 게시판에 게재한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</li>
                                        </ol>
                                        <h2 id="제2장-서비스의-이용">제2장 서비스의 이용</h2>
                                        <h3>제3조 (서비스의 제공)</h3>
                                        <ol>
                                          <li>본 약관에 동의하여 서비스 이용계약을 체결하여 회원이 된 자는 서비스를 구성하는 다음 각 호의 서비스를 이용할 수 있습니다.
                                            <ol>
                                              <li>회원 서비스</li>
                                              <li>투자형 크라우드 펀딩 관련 서비스</li>
                                              <li>a호 외 리워드형 크라우드 펀딩 관련 서비스</li>
                                              <li>통신 판매 서비스</li>
                                              <li>통신 판매 중개 서비스</li>
                                              <li>서포터클럽 멤버십 서비스</li>
                                              <li>위 각 호 서비스 제공을 위해 필요하거나 이에 부수하는 서비스</li>
                                            </ol>
                                          </li>
                                          <li>회원은 제1항 각 호의 서비스 중 특정 개별 서비스를 이용하기 위해서는 회사 또는 회사의 자회사가 별도로 제공하는 이용약관 및 운영정책, 세부지침(이하 "개별약관 등")에 동의 하셔야 할 수 있습니다. 이 경우 각 개별 서비스의 구체적인 내용은 각 개별약관 등에서 정한 바에 따릅니다.</li>
                                          <li>서비스는 연중무휴, 1일 24시간 제공함을 원칙으로 합니다. 다만, 회사는 서비스를 일정범위로 분할하여 각 범위 별로 이용가능시간을 별도로 지정할 수 있으며 이러한 경우에는 그 내용을 사전에 공지합니다.</li>
                                          <li>회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 서비스의 제공을 일시적으로 중단할 수 있습니다. 이 경우 회사는 회원에게 통지합니다. 다만, 회사가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.</li>
                                          <li>회사는 서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.</li>
                                        </ol>
                                        <h3>제4조 (서비스의 변경)</h3>
                                        <ol>
                                          <li>회사는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경할 수 있습니다.</li>
                                          <li>서비스의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등은 그 변경 전에 해당 서비스 초기화면에 게시됩니다.</li>
                                          <li>회사는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관계법령에 특별한 규정이 없는 한 회원에게 별도의 보상을 하지 않습니다.</li>
                                        </ol>
                                        <h3>제5조 (이용계약의 체결)</h3>
                                        <ol>
                                          <li>회사가 본 약관에 따라 제공하는 서비스를 이용하기 위하여 회사와 서비스이용계약(이하 “이용계약”)을 체결하여 회원가입에 따른 회원의 자격을 부여받아야 합니다.</li>
                                          <li>서비스를 이용하고자 하는 자(이하 "이용신청자")가 본 약관의 내용에 대하여 동의를 한 다음 회사가 제공하는 양식에 따라 정보입력을 하고 본인확인을 위한 인증절차를 이행하는 방법으로 회원가입신청을 하면 서비스에 대한 이용신청(이하 “이용신청”)이 있는 것으로 보며, 이용신청에 대하여 회사가 승낙함으로써 이용계약이 체결됩니다.</li>
                                          <li>제2항의 회원가입신청 절차의 방법과 내용은 회원이 개인(자연인)인 경우와 법인인 경우에 따라 다를 수 있습니다.</li>
                                          <li>회사는 관계 법령에 따라 이용신청자가 제1항에 따라 입력한 정보에 대한 사실 확인을 위하여 필요한 경우 이용신청자에게 증빙자료의 제출을 요청할 수 있으며, 이용신청자는 이에 따라 증빙자료를 제출하여야 합니다.</li>
                                          <li>회사는 다음 각 호에 해당하는 이용신청에 대하여는 승낙을 하지 않을 수 있습니다.
                                            <ol>
                                              <li>이용신청자가 이전에 본 약관에 의하여 회원자격을 상실한 적이 있는 경우(회사의 회원 재가입 승낙을 얻은 경우 제외)</li>
                                              <li>이용신청자가 본 약관에 의하여 이전에 회사로부터 서비스 이용제한 조치를 받은 상태에서 이용계약을 해지하고 다시 이용신청을 한 경우</li>
                                              <li>제2항의 이용신청 시 실명이 아니거나 타인의 명의를 이용하여 이용신청을 한 경우</li>
                                              <li>제2항의 이용신청 시 필요한 정보를 입력하지 않거나 허위의 정보를 기재한 경우</li>
                                              <li>제4항에 따라 요청받은 사실확인을 위한 증빙자료를 제출하지 않은 경우</li>
                                              <li>14세 미만 아동이 법정대리인의 동의를 얻지 아니한 경우</li>
                                              <li>사회의 안녕과 질서, 미풍양속을 저해할 우려가 있는 경우</li>
                                              <li>타인의 서비스 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협할 우려가 있는 경우</li>
                                              <li>위법 또는 부당한 목적으로 이용신청을 한 경우</li>
                                              <li>본 약관을 위반하며 신청하는 경우</li>
                                            </ol>
                                          </li>
                                          <li>회사는 다음 각 호의 경우에 승낙을 유보할 수 있습니다.
                                            <ol>
                                              <li>제공하는 서비스 관련 설비의 용량이 부족한 등 여유가 없는 경우</li>
                                              <li>기타 서비스 제공을 위한 재정적, 기술적 문제가 있다고 판단되는 경우</li>
                                            </ol>
                                          </li>
                                          <li>회사는 본 약관 및 개별약관에서 정한 바에 따라 회원별로 서비스의 이용시간, 이용횟수, 메뉴 등을 세분하여 달리 적용할 수 있습니다.</li>
                                        </ol>
                                        <h3>제6조 (서비스 이용료)</h3>
                                        <ol>
                                          <li>회사는 제3조에 따른 서비스를 이용하는 회원에 대하여 &lt;별지&gt;에서 정하는 수수료를 징수할 수 있으며, 서비스 이용을 위한 접속통신망의 이용료는 회원이 직접 납부하여야 합니다.</li>
                                          <li>회원이 타 유료서비스에 접속하여 서비스를 이용하는 경우에 부과되는 일체의 요금은 회원이 해당 서비스 업체에 지불하여야 합니다.</li>
                                        </ol>
                                        <h3>제6조의2 (포인트)</h3>
                                        <ol>
                                          <li>'포인트'라 함은 서비스를 이용하는 과정에서 대금 결제 수단으로 사용할 수 있는 현금등가의 결제수단을 의미합니다.</li>
                                          <li>포인트는 회원이 유료로 구매하는 유료 포인트와 회사가 회원의 구매 활동, 이벤트참여 등에 따라 적립, 부여하는 무료 포인트로 구분됩니다. 단, 법인회원의 경우, 유료포인트를 구매할 수 없습니다.</li>
                                          <li>무료 포인트의 유효기간은 회사에서 회원에게 적립 시 공지한 유효기간에 따르며, 유효기간 동안 사용하지 않을 경우 자동으로 소멸됩니다.</li>
                                          <li>회원 탈퇴 시 사용하지 아니한 무료 포인트는 자동으로 소멸되며, 회사는 무료 포인트에 대하여서는 별도의 보상을 하지 않습니다.</li>
                                          <li>유료 포인트는 적립일로부터 5년 경과 시까지 이용하지 않을 경우 상사소멸시효에 따라 소멸됩니다.</li>
                                          <li>포인트 사용은 만료 기간이 빠른 무료 포인트부터 사용됩니다.</li>
                                          <li>회사는 이용자가 잔여 유료 포인트에 대한 환급을 요구할 경우, 환급할 수 있습니다. 단, 무료포인트는 환급되지 않습니다.</li>
                                          <li>회사는 회원이 홈페이지에서 포인트를 사용하는 경우 휴대폰인증, I-PIN 인증 등 회사가 정한 절차를 거치도록 할 수 있습니다.</li>
                                        </ol>
                                        <h3>제6조의3 (쿠폰)</h3>
                                        <ol>
                                          <li>회사는 서비스를 이용하는 회원에게 서비스 이용 시 일정금액 또는 일정비율을 할인 받거나 일정금액이 지급되는 쿠폰을 발급할 수 있으며, 쿠폰별 유효기간, 할인금액 및 지급금액, 사용방법 등은 개별 안내사항을 통하여 확인 가능합니다.</li>
                                          <li>할인 쿠폰은 회원 본인의 구매에만 사용할 수 있으며, 어떠한 경우에도 타인에게 매매하거나 양도할 수 없습니다.</li>
                                          <li>회원이 쿠폰의 적용을 위해 필요한 정보의 입력과정에서 발행한 오류에 따른 모든 불이익에 대하여 회사는 책임을 지지 않습니다.</li>
                                          <li>쿠폰은 일부 품목이나 금액에 따라 사용이 제한될 수 있으며 유효기간이 지난 후에는 사용할 수 없고, 서비스 이용 후 환불이 이루어졌을 때에는 재사용을 할 수 없습니다.</li>
                                          <li>회원에게 제공된 쿠폰은 서비스 이용을 위한 적용 시에 중복으로 사용할 수 없습니다. 단, 쿠폰의 종류와 내용에 따라 회사, 발행자, 회원의 중복사용 허용 등 사용범위를 달리 정한 경우에는 그러하지 않습니다.</li>
                                          <li>쿠폰은 현금으로 출금될 수 없으며, 쿠폰에 표시된 유효기간이 만료되거나 이용계약이 종료되면 소멸합니다.</li>
                                          <li>회사는 회원이 부정한 목적과 방법으로 할인쿠폰 등을 획득하거나 사용하는 사실이 확인될 경우, 해당 이용자에 대한 할인쿠폰을 회수 또는 소멸시키거나 회원자격을 제한할 수 있습니다.</li>
                                        </ol>
                                        <h3>제7조 (회원의 이용계약 해지 등)</h3>
                                        <ol>
                                          <li>회원은 서비스 중단을 원할 경우 회사가 제공하는 양식에 따라 회원탈퇴신청을 하면 이용계약 해지의 의사표시를 한 것으로 보며, 회사에 해지의 의사표시가 도달한 때에 이용계약의 해지효력이 발생합니다.</li>
                                          <li>해지효력이 발생한 때로부터 회원은 회원의 자격을 상실하며, 회사가 제공하는 모든 서비스를 이용할 수 없게 됩니다.</li>
                                          <li>제1항에도 불구하고 회원이 개별약관에 따라 회사의 개별 서비스를 이용하고 있는 경우에는 회원탈퇴신청이 제한될 수 있습니다.</li>
                                          <li>제2항에도 불구하고 이용계약의 해지효력이 발생할 당시 당해 회원이 회사가 제공하는 서비스를 통해 진행 중인 거래 또는 절차가 있다면 당해 서비스에 관한 개별약관 또는 회사의 안내에 따라 정산절차를 거쳐야 합니다.</li>
                                          <li>회원이 제1항과 제2항에 따라 이용계약을 해지하여 회원자격을 상실하게 될 경우, 당해 회원은 본 약관에 따라 다시 회원가입을 신청하는 데 있어 제한을 받을 수 있습니다.</li>
                                          <li>회원이 제1항과 제2항에 따라 이용계약을 해지할 경우, 관계법령 및 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고는 회원의 모든 데이터는 소멸됩니다. 다만, 이 경우에도 타인에 의해 담기, 스크랩 등이 되어 재게시되거나, 공용게시판에 등록된 게시물 등은 삭제되지 않을 수 있습니다.</li>
                                        </ol>
                                        <h3>제8조 (회사의 이용계약의 제한, 해지 등)</h3>
                                        <ol>
                                          <li>회사는 회원에게 다음 각 호의 해지사유가 있는 경우 7일 이상으로 정한 기간 내에 그 해지사유의 시정을 요구하고, 이와 같이 정한 기간 내에 회원이 이를 시정하지 아니하면 회사는 이용계약을 해지할 수 있습니다.
                                            <ol>
                                              <li>제5조 제5항 각 호에서 정한 승낙거부사유가 있음이 밝혀진 경우</li>
                                              <li>회원이 공공질서 및 미풍양속에 위배되는 거래행위를 하거나 시도한 경우</li>
                                              <li>회원이 본 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우</li>
                                              <li>주민등록법을 위반한 명의도용 및 결제도용, 저작권법 및 컴퓨터프로그램보호법을 위반한 불법프로그램의 제공 및 운영방해, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 "정보통신망법")을 위반한 불법통신 및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등 관계법령을 위반한 경우</li>
                                              <li>제3자의 결제수단이나 개인정보를 도용한 경우</li>
                                              <li>회사와 기타 제3자의 저작권 등 지적재산권에 대한 침해행위를 한 경우</li>
                                              <li>회사 및 기타 제3자의 권리나 명예, 신용 기타 정당한 이익을 침해하는 행위를 한 경우</li>
                                              <li>외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위 </li>
                                              <li>회사의 동의 없이 영리를 목적으로 서비스를 이용한 경우 </li>
                                              <li>기타 위법하거나 부당한 목적으로 서비스를 이용한 경우 </li>
                                              <li>제16조 제5항 단서의 경우에 해당하는 경우</li>
                                              <li>본 약관에 위반하는 행위를 한 경우</li>
                                            </ol>
                                          </li>
                                          <li>제1항의 경우에도 불구하고 회사는 제1항 각호의 사유가 시정이 가능하다고 인정되는 경우 회원에게 그 사유를 통지를 하고 일정한 기간 동안 회원에게 경고, 일시정지, 영구이용정지 등으로 서비스의 이용을 단계적으로 제한할 수 있습니다. 다만, 개별 서비스의 이용제한에 관한 조건 및 세부내용은 개별 서비스상의 개별약관 또는 회사가 미리 고지한 정책에서 정하는 바에 의합니다.</li>
                                          <li>제1항에 따라 이용계약이 해지된 경우 해지되기 전까지 회원이 서비스 이용을 통해 획득한 "포인트" 및 기타 혜택 등도 모두 소멸되며, 회사는 이에 대해 별도로 보상하지 않습니다. </li>
                                          <li>본 조에 따라 서비스 이용을 제한하거나 이용계약을 해지하는 경우에는 회사는 제13조에 따라 통지합니다. </li>
                                          <li>회원은 제1항과 제2항에 따른 이용해지 또는 이용제한 등에 대하여 회사가 제공하는 양식과 절차에 따라 이의신청을 할 수 있습니다. 이 경우 이의신청이 정당하다고 회사가 인정하는 경우 회사는 서비스의 이용을 재개합니다.</li>
                                        </ol>
                                        <h2 id="제3장-회원정보의-보호-및-관리">제3장 회원정보의 보호 및 관리</h2>
                                        <h3>제9조 (회원정보의 수집과 보호)</h3>
                                        <ol>
                                          <li>회사는 서비스 제공을 위하여 이용계약의 체결 시 필요한 정보(이하 “회원정보”)를 수집할 수 있으며, 그 외에도 수집목적 또는 이용목적을 밝혀 회원으로부터 정보를 수집할 수 있습니다. 이 경우 회사는 회원으로부터 정보수집에 대한 동의를 받으며, 회원은 정보제공에 동의를 한 이후에도 회사가 제공하는 양식에 따라 그 동의를 철회할 수 있습니다.</li>
                                          <li>회원의 개인정보의 수집, 보호 및 사용에 대해서는 관계법령 및 회사의 개인정보처리방침이 적용됩니다. 다만, 회사의 홈페이지 이외의 링크된 사이트에서는 회사의 개인정보처리방침이 적용되지 않습니다.</li>
                                          <li>관계 법령에 따라 회원정보의 이용과 제3자에 대한 정보제공을 허용하고 있는 경우를 제외하고 회사는 제1항에 따라 회원으로부터 동의를 받은 목적 외에 회원의 동의 없이 다른 제3자에게 회원정보를 제공하지 않습니다.</li>
                                          <li>회사는 정보통신망법 등 관계 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. </li>
                                          <li>회사의 개인정보 보호책임자 및 연락처는 아래와 같습니다.
                                            <ul>
                                              <li>성명: 윤동균</li>
                                              <li>소속: 플랫폼개발팀</li>
                                              <li>연락처: 1661-9056</li>
                                              <li>이메일: info@wadiz.kr</li>
                                            </ul>
                                          </li>
                                        </ol>
                                        <h3>제10조 (회원의 회원정보 관리에 대한 의무)</h3>
                                        <ol>
                                          <li>회원의 아이디와 비밀번호를 포함한 회원정보에 관한 관리책임은 회원에게 있습니다.</li>
                                          <li>회사는 회원의 아이디가 개인정보 유출의 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 회사 및 회사의 운영자로 오인할 우려가 있는 경우, 해당 아이디의 이용을 제한할 수 있습니다. </li>
                                          <li>회원은 주민등록번호, 동일숫자, 연속숫자 등의 비밀번호를 사용하지 말아야 하며 타인이 쉽게 추측할 수 있는 비밀번호 사용을 자제하여 관리에 유의하여야 합니다.</li>
                                          <li>회원은 아이디, 비밀번호 등을 포함한 회원정보를 타인에게 누설하여서는 아니 되며, 만약 누설하였을 경우 지체 없이 회사에게 이러한 사실을 [서면 또는 전자우편]의 방법으로 통지하여 알려야 합니다.</li>
                                          <li>회원은 회원정보를 제3자가 양도, 대여, 이용하도록 하여서는 안 됩니다.</li>
                                          <li>회원은 제3자에 의해 회원정보가 도용되거나 사용되고 있음을 인지한 경우에는 이를 즉시 회사에 제4항과 같은 방법으로 통지하고 회사의 안내에 따라야 합니다. </li>
                                          <li>제4항과 제6항의 경우에 해당 회원이 회사에 그 사실을 통지하지 않거나, 통지한 경우에도 회사의 안내에 따르지 않아 발생한 불이익에 대하여 회사는 책임을 지지 않습니다. </li>
                                        </ol>
                                        <h3>제11조 (쿠키(Cookie)의 운용 및 활용)</h3>
                                        <ol>
                                          <li>회사는 회원에게 적합하고 유용한 서비스를 제공하기 위해서 회원의 정보를 저장하고 수시로 불러오는 쿠키(cookie)를 이용합니다.</li>
                                          <li>제1항과 관련하여 회원은 쿠키이용에 대한 선택권을 가지며 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 이용하는 컴퓨터 브라우저의 설정을 변경할 수 있습니다. 다만, 쿠키의 저장을 거부할 경우, 로그인이 필요한 서비스를 이용할 수 없게 됨으로써 발생되는 문제에 대한 책임은 회원에게 있습니다.</li>
                                        </ol>
                                        <h3>제12조 (회원정보의 변경)</h3>
                                        <ol>
                                          <li>회원은 서비스 내 “회원정보” 화면을 통하여 회원의 정보를 열람하고 수정할 수 있습니다. 다만, 서비스의 제공 및 관리를 위해 필요한 실명, 주민등록번호, 아이디 등은 수정이 불가능할 수 있습니다. </li>
                                          <li>회원은 회원가입신청 시 입력한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 회사에 대하여 그 변경사항을 알려야 하며, 이와 같이 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다. </li>
                                        </ol>
                                        <h2 id="제4장-기타">제4장 기타</h2>
                                        <h3>제13조 (회원에 대한 통지)</h3>
                                        <ol>
                                          <li>회사가 회원에 대한 통지를 하는 경우 본 약관에 별도 규정이 없는 한 서비스 내 전자우편주소, 전자쪽지 등으로 할 수 있습니다. </li>
                                          <li>회사는 회원 전체에 대한 통지의 경우 7일 이상 회사의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다. </li>
                                        </ol>
                                        <h3>제14조 (정보의 제공 및 광고의 게재)</h3>
                                        <ol>
                                          <li>회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 관계법령에 따른 거래 관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편의 수신에 대하여 거절할 수 있습니다.  </li>
                                          <li>제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 회원의 사전 동의를 받아서 전송합니다. 다만, 회원의 거래관련 정보 및 고객문의 등에 대하여 회사가 회신을 하는 경우에는 제외됩니다. </li>
                                          <li>회사는 서비스화면, 홈페이지, 전자우편 등에 회사 또는 제휴업체의 광고를 게재할 수 있습니다. 다만, 회원은 광고가 게재된 전자우편의 수신에 대하여 거절할 수 있습니다. </li>
                                        </ol>
                                        <h3>제15조 (게시물의 관리 등)</h3>
                                        <ol>
                                          <li>회원이 홈페이지 내에 게시한 게시물의 저작권은 해당 게시물의 저작자에게 귀속됩니다. </li>
                                          <li>회원이 홈페이지 내에 게시하는 게시물은 검색결과 내지 서비스 및 관련 프로모션 등에 의해 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어 게시될 수 있습니다. 이 경우 회사는 저작권법 규정을 준수하며, 회원은 회사의 고객센터 또는 서비스 내 관리기능을 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 회사가 정한 절차에 따라 요구할 수 있습니다. </li>
                                          <li>회사는 제2항 이외의 방법으로 회원의 게시물을 이용하고자 하는 경우에는 회원의 동의를 받습니다. </li>
                                          <li>회원의 게시물이 정보통신망법 및 저작권법 등 관계법령에 위반되는 내용을 포함하거나 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에 회사는 삭제, 비공개 등의 조치를 취할 수 있습니다.</li>
                                        </ol>
                                        <h3>제16조 (권리의 귀속)</h3>
                                        <ol>
                                          <li>서비스에 대한 저작권 및 지적재산권은 회사에 귀속됩니다. 다만, 회원의 게시물 및 제휴계약에 따라 제공된 저작물 등은 제외합니다. </li>
                                          <li>회사는 서비스와 관련하여 회원에게 본 약관에 따라 "아이디", “콘텐츠”, "포인트" 등을 포함한 서비스를 이용할 수 있는 이용권만을 부여하며, 회원은 이를 양도, 판매, 담보제공 등의 처분행위를 할 수 없습니다. </li>
                                        </ol>
                                        <h3>제17조 (책임제한)</h3>
                                        <ol>
                                          <li>개별약관에서 개별 서비스에 관한 회사의 책임범위를 별도로 정한 경우 그에 따릅니다.</li>
                                          <li>회사는 천재지변 또는 이에 준하는 불가항력, 정보통신설비상의 문제(보수, 점검, 교체, 고장, 통신두절 등)으로 인하여 서비스를 원활하게 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다. </li>
                                          <li>회사는 제3자 또는 회원의 고의 또는 과실로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다. </li>
                                          <li>회사는 회원이 홈페이지에 게재한 정보, 자료, 사실에 대하여 신뢰도, 정확성 등을 보증하지 않으며, 회사의 고의 또는 과실이 없는 한 회원이 이를 신뢰함에 따라 입은 손해에 대하여 책임을 지지 않습니다. </li>
                                          <li>회사는 회원 간 또는 회원과 제3자 상호간에 서비스를 매개로 하여 개별적으로 거래 등을 한 경우에는 책임을 지지 않습니다. </li>
                                          <li>회사는 무료로 제공되는 서비스 이용과 관련하여 관계법령에 특별한 규정이 없는 한 책임을 지지 않습니다.</li>
                                          <li>회사는 독자적으로 운영되는 회사의 서비스 화면과 링크 등으로 연결된 사이트를 운영하는 법인(이하 “피연결회사”) 또는 홈페이지에 게재되어 있거나 회사의 제휴업체와 회원과 사이에 이루어진 교신, 거래 및 이로 인해 발생한 손해, 손실 등에 대하여 책임을 지지 않습니다. </li>
                                          <li>회사는 피연결회사가 온라인 또는 오프라인을 통해 제공하는 정보나 서비스에 대하여는 일체의 책임을 지지 않습니다.</li>
                                        </ol>
                                        <h3>제18조 (약관의 게시와 개정)</h3>
                                        <ol>
                                          <li>회사는 본 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다. </li>
                                          <li>회사는 약관의 규제에 관한 법률, 정보통신망법 등 관계법령을 위반하지 않는 범위에서 본 약관을 개정할 수 있습니다. </li>
                                          <li>회사가 약관을 개정할 경우에는 적용일자를 명시하여 제1항의 방법에 따라 그 개정약관을 7일 이상 공지합니다. 다만, 회원에게 불리한 내용으로 약관의 개정이 있는 경우에는 공지 외에 일정기간 서비스 내 전자우편, 전자쪽지, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 합니다.</li>
                                          <li>회사가 제3항에 따라 개정약관을 공지 또는 통지하면서 회원에게 7일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.</li>
                                          <li>회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용하지 않으며, 이 경우 회원은 제7조에서 정한 바에 따라 이용계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사가 동의하지 않은 회원과의 이용계약을 해지할 수 있습니다.</li>
                                        </ol>
                                        <h3>제19조 (약관의 효력 및 해석)</h3>
                                        <ol>
                                          <li>개별약관 등의 내용이 본 약관과 상충할 경우에는 "개별약관 등"이 우선하여 적용됩니다. </li>
                                          <li>본 약관에서 정하지 아니한 사항이나 해석에 대해서는 "개별약관 등" 및 관계법령 또는 상관례에 따릅니다. </li>
                                        </ol>
                                        <h3>제20조 (준거법 및 재판관할)</h3>
                                        <ol>
                                          <li>회사와 회원 간 제기된 소송은 대한민국법을 준거법으로 합니다. </li>
                                          <li>회사와 회원 간 발생한 분쟁에 관한 소송은 민사소송법 상의 관할법원에서 해결 합니다.</li>
                                        </ol>
                                        <h2 id="부칙">부칙</h2>
                                        <h3>제1조 (시행일)</h3>
                                        <ol>
                                          <li>본 약관은 2022년 3월 24일부터 적용됩니다.</li>
                                        </ol>
                                        <h2 id="별지-서비스-이용료">별지: 서비스 이용료 (제6조 제1항 관련)</h2>
                                        <p>회사 또는 회사의 자회사가 제공하는 서비스 이용에 대한 이용료 또는 수수료는 다음 각 호와 같습니다.</p>
                                        <ol>
                                          <li>투자하기 서비스
                                            <ol>
                                              <li>투자자 회원: 청약증거금 이체 시 이체 수수료를 부담하게 될 수 있습니다.</li>
                                              <li>발행인 회원: 회사의 자회사와 별도로 체결하는 약정에 따라 착수수수료, 사실확인 등 수수료, 성공수수료가 발생할 수 있으며, 성공수수료의 경우 모집금액의 10% 이하(부가세 별도)의 범위에서 결정됩니다.</li>
                                            </ol>
                                          </li>
                                          <li>펀딩하기 서비스
                                            <ol>
                                              <li>펀딩 서포터: 별도의 수수료가 부과되지 않습니다. 단, 회사가 별도로 제공하는 서포터클럽 멤버십 서비스에 가입하는 경우에는 관련 개별약관 및 정책에 따라 수수료가 발생할 수 있습니다.</li>
                                              <li>펀딩 메이커: 회사가 별도로 제공하는 펀딩 서비스 메이커 이용약관 및 펀딩 요금제 정책에 따라 수수료가 발생할 수 있습니다.</li>
                                            </ol>
                                          </li>
                                          <li>구매하기 서비스
                                            <ol>
                                              <li>스토어 서포터: 별도의 수수료가 부과되지 않습니다.</li>
                                              <li>스토어 메이커: 회사가 별도로 제공하는 스토어 서비스 이용약관 및 스토어 서비스 운영정책에 따라 수수료가 발생할 수 있습니다.</li>
                                            </ol>
                                          </li>
                                        </ol>
                                      </article>
                            </main>
                        </div>
                        <div class="modalclass_contents_midtwo_one">
                            <div class="modalclass_contents_midtwo_onediv">
                                <label class="modalclass_contents_midtwo_onelabel">
                                    <input type="checkbox" class="modalclass_contents_midtwo_oneinput">
                                    <span class="modalclass_contents_midtwo_onespan"></span>
                                    <span class="modalclass_contents_midtwo_onespanone">
                                        <span>
                                            <div>펀딩 * 스토어 서비스 서포터 이용약관</div>
                                        </span>

                                    </span>

                                </label>
                            </div>
                                <button class="modalclass_contents_midtwo_onebutton_two">내용보기</button>
                        </div>
                        <div class="modalclass_contents_midtwo_checkboxopen_two" style="display: none;">
                            <main class="modalclass_contents_midtwo_checkboxopen_main">
                                <article class="modalclass_contents_midtwo_checkboxopen_main_artricle">
                            <h1>펀딩 · 스토어 서비스 서포터 이용약관</h1>
                            <p>와디즈(주)의 펀딩 · 스토어 서비스 서포터 이용약관을 규정합니다.</p>
                            <div class="update">
                              <h5>업데이트 노트</h5>
                              <ul>
                                <li>본 이용약관은 2022년 10월 7일부터 시행됩니다.</li>
                                <li>개정 2022.09.30</li>
                                <li>개정 2022.08.23 <a href="/web/wterms/service_reward/20220823" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2022.08.16 <a href="/web/wterms/service_reward/20220816" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2022.04.14 <a href="/web/wterms/service_reward/20220414" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2022.03.08 <a href="/web/wterms/service_reward/20220308" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2021.12.14 <a href="/web/wterms/service_reward/20211214" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2021.10.28 <a href="/web/wterms/service_reward/20211028" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2021.09.01 <a href="/web/wterms/service_reward/20210901" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2021.07.12 <a href="/web/wterms/service_reward/20210712" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2021.01.05 <a href="/web/wterms/service_reward/20210105" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2020.04.20 <a href="/web/wterms/service_reward/20200420" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2020.03.12 <a href="/web/wterms/service_reward/20200312" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2020.01.20 <a href="/web/wterms/reward_supporter" class="previous-terms" target="_blank">이전 정책 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2019.06.20 <a href="/web/wterms/service_reward/20190620" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2018.04.21 <a href="/web/wterms/service_reward/20180421" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>개정 2016.01.25 <a href="/web/wterms/service_reward/20160125" class="previous-terms" target="_blank">이전 이용약관 보기 <i class="icon-chevron-right" aria-hidden="true"></i></a></li>
                                <li>시행 2016.01.25</li>
                              </ul>
                            </div>
                            <ol class="table">
                              <li><a href="#제1장 펀딩 서비스">제1장 펀딩 서비스</a></li>
                              <li><a href="#제2장 스토어 서비스">제2장 스토어 서비스</a></li>
                              <li><a href="#부칙">부칙</a></li>
                            </ol>
                            <hr>
                            <h2 id="제1장 펀딩 서비스">제1장 펀딩 서비스</h2>
                            <h3 style="font-weight: bold;">제1조 (목적)</h3>
                            <p>본 장의 약관은 와디즈 주식회사(이하 "회사")와 회사가 제공하는 크라우드펀딩 중개 서비스를 이용하는 서포터 간의 서비스 이용에 관한 권리·의무 관련 사항을 정함을 그 목적으로 합니다.</p>
                            <h3 style="font-weight: bold;">제2조 (정의)</h3>
                            <p>본 장에서 사용하는 용어의 정의는 다음 각 호와 같습니다.</p>
                            <ol>
                              <li>서비스 : 회원가입약관에 따른 회원이 전자적 시스템에 접속하여 홈페이지에서 온라인상의 거래 등을 할 수 있게 본 약관에 따라 회사가 제공하는 크라우드펀딩 중개서비스를 말합니다.</li>
                              <li>홈페이지 : 본 약관에 따라 회사가 제공하는 서비스가 구현되는 온라인상의 웹페이지(https://www.wadiz.kr)를 말합니다.</li>
                              <li>메이커 : 회사와 별도의 이용계약을 체결하고 홈페이지에서 펀딩 서비스 메이커 이용약관에 따른 프로젝트를 개설하여 서포터들로부터 펀딩을 받으려는 자를 말합니다.</li>
                              <li>서포터 : 회사의 회원가입약관에 따른 회원 중에서 메이커가 개설한 프로젝트에 펀딩을 하려는 자를 말합니다.</li>
                              <li>펀딩 : 메이커가 와디즈 홈페이지를 통해 재화 또는 용역 개발, 생산 등 특정한 자금조달의 목적을 밝히고 그 목적달성을 위해 필요한 자금을 제공한 서포터들에게 약속한 재화 또는 용역을 제공하는 것을 말합니다.</li>
                              <li>성공 : 펀딩기간의 종료시점을 기준으로 서포터의 펀딩 신청에 따라 모집된  결제예약금 합계액이 메이커가 설정한 목표 금액 이상인 경우를 의미합니다.</li>
                              <li>실패 : 펀딩기간의 종료시점을 기준으로 서포터의 펀딩 신청에 따라 모집된  결제예약금 합계액이 메이커가 설정한 목표 금액 미만인 경우를 의미합니다.</li>
                              <li>앵콜 펀딩: 메이커가 성공한 펀딩 프로젝트의 리워드와 동일한 리워드를 대상으로 다시 펀딩하는 프로젝트를 말합니다. 단, 이전에 성공한 펀딩 프로젝트의 리워드와 동일하지 않은 리워드가 포함되어 구성되는 경우에는 본 약관 및 <a href="/web/wterms/reward_screening_policy">펀딩 심사 정책</a> 등에서 규정한 펀딩 요건을 충족하여야 합니다. </li>
                              <li>글로벌 펀딩 : 메이커가 해외에서 유통되었던 제품을 국내에 공식 유통하기 위한 목적으로 자금을 모으는 펀딩 프로젝트를 말합니다. </li>
                              <li>후원 펀딩 : 개인 메이커가 자아 실현 또는 사회적 가치 창출 등을 위해 불특정 다수로부터 후원을 받을 목적으로 개설할 수 있는 펀딩 프로젝트를 말합니다. 단, 프로젝트가 성공하는 경우에도 앵콜 펀딩 진행은 불가능합니다.</li>
                              <li>프리오더 : 전자상거래 등에서의 소비자보호에 관한 법률이 적용되는 통신판매 중개서비스로서, 앵콜 펀딩 및 글로벌 펀딩을 의미합니다.</li>
                              <li>리워드 : 메이커가 펀딩과 관련하여 서포터로부터 자금을 받으면서 서포터에게 제공하기로 약속한 유형의 제품 또는 무형의 서비스를 의미합니다.</li>
                              <li>프로젝트 : 메이커가 서포터에게 리워드 제공을 약속하고 펀딩을 통해 자금을 모으기 위하여 회사의 승인을 받아 회사의 홈페이지에 개설한 페이지 및 이를 통해 서포터에게 약속한 내용을 의미합니다.</li>
                              <li>펀딩의 신청 : 서포터가 프로젝트의 펀딩 기간 내에 회사가 정한 방법에 따라 펀딩의 의사표시를 하는 것을 말합니다.</li>
                              <li>펀딩의 취소 : 서포터가 프로젝트의 펀딩기간 내에 펀딩의 의사표시를 철회하는 것을 말합니다.</li>
                              <li>펀딩 달성률 : 서포터가 목표한 금액을 기준으로 펀딩의 신청 접수가 완료된 결제예약금이 차지하는 비율을 말합니다.</li>
                              <li>결제예약금 : 서포터가 펀딩의 신청에 따라 결제를 예약한 금액을 의미합니다.</li>
                              <li>결제 취소 : 서포터가 프로젝트 종료 후 리워드의 발송 또는 제공 전까지 회사가 정한 특별한 사유가 있는 경우에 한하여 카드결제 등의 결제 취소를 요청함으로써 펀딩의 의사표시를 철회하는 것을 말합니다.</li>
                              <li>펀딩금 : 프로젝트 종료 시점에 모집된 결제예약금 중 결제 기간(프로젝트 종료일로부터 4영업일) 종료 시 결제절차가 완료된 금원을 의미합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제3조 (약관의 효력)</h3>
                            <ol>
                              <li>회사는 이 약관에 규정되지 않은 세부적인 내용에 대해 회사가 수시로 개정할 수 있는 개별 정책 등(이하 "정책"이라 함)을 제정하여 운영할 수 있으며, 해당 내용을 사이트를 통하여 게시합니다. 정책은 이 약관과 더불어 서비스 이용계약(이하 "이용계약"이라 함)의 일부를 구성합니다. 서포터가 본 약관 및 정책에 동의하는 것은 양 당사자의 인감을 날인하여 이용계약을 체결하는 것과 동일한 효력을 갖습니다.</li>
                              <li>회사는 서비스 중 특정 서비스에 관한 약관(이하 "개별약관"이라 함)을 별도로 제정할 수 있으며, 서포터가 개별약관에 동의한 경우 개별약관은 이용계약의 일부를 구성하고 개별약관에 이 약관과 상충하는 내용이 있을 경우 개별 약관이 우선적으로 적용됩니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제4조 (약관의 게시 및 개정)</h3>
                            <ol>
                              <li>회사는 본 약관의 내용을 서포터가 쉽게 알 수 있도록 사이트를 통하여 게시합니다.</li>
                              <li>회사는 필요한 경우 관련 법령을 위배하지 않는 범위 내에서 본 약관 및 정책을 개정할 수 있으며, 이 경우 개정내용과 적용일자를 명시하여 사이트를 통해 그 적용일자 7일 전부터 적용일자 전일까지 공지합니다. 다만, 변경 내용이 서포터에게 불리한 변경의 경우에는 개정약관 및 정책의 적용일자 30일 전부터 적용일자까지 공지합니다.</li>
                              <li>관계법령의 제·개정에 따른 제도변경 등으로 약관 또는 운영정책이 변경되는 경우 등 본문에 따라 안내하기가 어려운 급박하고 부득이한 사정이 있는 경우에는 변경내용을 제2항과 같은 방법으로 개정 약관 또는 운영정책의 시행일 전에 게시합니다.</li>
                              <li>서포터가 개정약관 및 정책에 동의하지 않는 경우에는 개정약관 및 정책의 적용일 이전에 거부 의사를 표시하고 본 약관 및 정책에 의한 이용계약을 해지할 수 있습니다.</li>
                              <li>회사가 본 조 제2항에 따라 개정약관 및 정책을 공지 또는 통지하면서 서포터에게 적용일 전까지 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 서포터가 명시적으로 거부의사를 표명하지 아니한 경우 개정약관 및 정책에 동의한 것으로 봅니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제5조 (대리행위 및 보증의 부인)</h3>
                            <ol>
                              <li>회사는 서포터와 메이커간의 리워드의 펀딩 중개시스템의 운영 및 관리 책임만을 부담하며, 리워드의 펀딩과 관련하여 회사의 어떠한 행위도 메이커 또는 서포터를 대리하는 행위로 간주되지 않습니다.</li>
                              <li>회사는 서비스를 통하여 이루어지는 펀딩과 관련하여 펀딩의사의 존부 및 진정성, 리워드의 품질, 완전성, 안전성, 적법성 및 타인의 권리에 대한 비침해성, 메이커가 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 등 일체에 대하여 보증하지 아니하며, 이와 관련한 일체의 위험과 책임은 관련 당사자가 부담해야 합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제6조 (서비스의 제공)</h3>
                            <ol>
                              <li>회사가 본 약관에 따라 제공하는 서비스의 종류는 다음 각 호와 같습니다.
                                <ol>
                                  <li>펀딩서비스 : 펀딩의 신청 접수, 펀딩의 취소, 펀딩 달성률 게시, 펀딩 가능 여부 통지, 펀딩결과 통보 등</li>
                                  <li>위 각 호의 서비스 제공을 위해 필요하거나 이에 부수하는 서비스</li>
                                </ol>
                              </li>
                              <li>서비스의 이용은 1일 24시간, 연중무휴로 가능한 것을 원칙으로 합니다. 다만, 업무 또는 기술상 장애 또는 기술적 보완 및 사이트의 개선을 이유로 하는 경우 등에는 서비스가 일시중지 되거나 이체서비스 이용시간의 제한 등의 사유로 인하여 서비스 이용시간이 변경되는 경우 이와 같은 사유를 홈페이지를 통하여 공지합니다.</li>
                              <li>제2항에도 불구하고 회사는 서비스를 일정 범위로 분할하여 각 범위 별로 이용가능시간을 별도로 지정할 수 있습니다. 이 경우 그 내용을 홈페이지를 통하여 공지합니다.</li>
                              <li>회사는 본 약관에 따라 펀딩을 하는 서포터에게 별도의 수수료를 징수하지 않습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제7조 (펀딩의 신청 전 유의사항)</h3>
                            <ol>
                              <li>서포터는 본 약관에 따른 펀딩을 신청하기 전에 홈페이지를 통해 제공되는 정보뿐만 아니라 프로젝트 펀딩기간, 리워드 제공의 조건 등 프로젝트의 내용을 충분히 숙지한 후 펀딩을 신청하여야 합니다.</li>
                              <li>메이커가 프로젝트 개시 전 펀딩 신청의 시기 등 유형별로 리워드 제공의 조건과 기준, 방법 등을 다르게 설정할 수 있도록 회사에 요청할 수 있으며, 회사는 그 조건과 기준이 합리적이고 명확한 기준에 의한 것인 경우 그 내용을 홈페이지에 게시합니다. 이 경우 서포터가 위 내용에 따라 리워드를 제공받을 때 제한이 있을 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제8조 (서포터들의 의견교환 등)</h3>
                            <ol>
                              <li>서포터는 사이트에 개설된 게시판을 통해 프로젝트에 대한 질의 또는 답변을 게시하는 방법으로 메이커와 의견을 교환할 수 있습니다.</li>
                              <li>회사는 홈페이지에 게시된 서포터들의 의견을 임의로 삭제하거나 수정하지 않습니다. 다만, 다른 법률에 근거가 있거나 게시된 글이 회원가입약관 및 기타 커뮤니티 정책에 따라 삭제될 수 있는 경우에는 그러하지 아니합니다.</li>
                              <li>회사는 서포터의 권리 보호를 도모함과 동시에 분쟁을 방지하고 메이커와 서포터 간의 원활한 소통을 돕기 위하여 1:1 메시지 기능의 대화 내용을 수집 및 암호화하여 5년 동안 저장하고, 필요한 경우 적법한 권한이 있는 자 또는 해당 업무의 책임자에 의한 열람이 가능하도록 합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제9조 (회원의 의무)</h3>
                            <ol>
                              <li>회원은 회사의 약관, 규정, 회사의 이용정책, 이용안내 사항 및 관계 법령 등을 준수하여야 하며, 기타 회사 업무에 방해되는 행위를 하여서는 안 됩니다.</li>
                              <li>회원은 다음 각 호의 행위를 하여서는 안 됩니다.
                                <ol>
                                  <li>회사가 제공하는 서비스를 이용하지 아니하고 메이커와 직접 거래하는 행위(이하 “직거래”) 또는 이를 유도하는 행위</li>
                                  <li>회사 또는 메이커의 활동을 방해하거나 사이트를 이용하여 부당한 이득을 취하는 등 통상적인 거래 관행에 부합하지 않는 거래상의 부정 행위</li>
                                  <li>리워드의 펀딩을 가장한 현금 융통 등 “여신전문금융업법”, “정보통신망 이용촉진 및 정보보호 등에 관한 법률” 및 기타 관계 법령에 위배되거나 비정상적인 결제 행위</li>
                                  <li>회사가 제공하는 서비스 이용방법에 의하지 아니하고 비정상적인 방법으로 서비스를 이용하거나 회사의 정보처리시스템에 접근하는 행위</li>
                                  <li>회사가 제공하는 서비스와 관련 없거나 비합리적인 요청, 공공의 질서와 선량한 풍속에 반하는 행위 등으로 회사의 업무를 방해하는 행위</li>
                                  <li>기타 위 각 호에 준하여 회사 또는 제3자의 권리를 침해 또는 침해할 우려가 있거나, 상거래 질서를 위협하는 행위</li>
                                </ol>
                              </li>
                              <li>회사는 제2항을 위반한 회원에 대하여 이용계약 해제, 쿠폰의 환수, 회원 자격의 제한, 카드 결제 취소 또는 취소 보류 등의 조치 및 민∙형사 상의 법적 조치 등을 취할 수 있으며, 회사와 계약한 PG사 등에 의하여 동일 또는 유사한 조치가 이루어 질 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제10조 (펀딩의 신청 방법)</h3>
                            <ol>
                              <li>서포터는 펀딩하려는 프로젝트의 페이지에서 회사가 제공하는 양식에 따라 펀딩내용(결제예약금, 리워드의 내용, 수량, 추가 결제예약금 등)과 결제방법을 입력하면 회사에 대한 펀딩의 신청이 이루어지며, 이에 대하여 회사에 접수되면 펀딩의 신청이 완료됩니다.</li>
                              <li>회사는 메이커가 합리적이고 명확한 기준에 따라 서포터의 자격 또는 결제예약금의 액수에 제한을 두기를 요청한 경우 그에 따라 펀딩의 신청을 제한할 수 있습니다.</li>
                              <li>서포터는 각 프로젝트별로 회사가 제공하는 결제수단(신용카드, 체크카드를 통한 예약결제, 가상계좌 등)을 통하여 홈페이지 내에서 펀딩 신청에 따른 결제예약을 할 수 있습니다.</li>
                              <li>회사는 정확하고 안전한 결제 처리를 위해 관계법령에 따라 아래와 같은 서포터의 정보를 결제 대행사에 위탁하게 됩니다.</li>
                            </ol>
                            <div class="scroll-table">
                              <table style="min-width:500px;width:100%">
                                <thead>
                                <tr>
                                  <th style="width:50%">결제와 관련한 정보를 제공 받는 자</th>
                                  <th style="width:50%">위탁되는 정보</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                  <td>
                                    <ul>
                                      <li>주식회사 케이지이니시스</li>
                                      <li>나이스정보통신 주식회사</li>
                                    </ul>
                                  </td>
                                  <td>
                                    <ul>
                                      <li>신용카드의 번호, 유효기간</li>
                                      <li>신용카드 소유자의 성명</li>
                                      <li>계좌번호, 은행, 예금주 성명</li>
                                      <li>이메일, 휴대폰번호 등 결제 확인을 위한 연락처</li>
                                    </ul>
                                  </td>
                                </tr>
                                </tbody>
                              </table>
                            </div>
                            <ol start="5">
                              <li>서포터가 1개의 프로젝트에 1회 펀딩을 신청할 때 최소 1,000원 이상을 입력하여야 합니다. 서포터는 1개의 프로젝트에 중복하여 펀딩을 신청할 수 있습니다.</li>
                              <li>서포터는 펀딩 신청의 접수 결과는 전자우편 또는 문자메시지 등을 통해 통보 받게 됩니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제11조 (펀딩의 취소)</h3>
                            <ol>
                              <li>펀딩의 취소는 본 약관 및 홈페이지의 이용안내에 규정된 사항에 따릅니다.</li>
                              <li>서포터는 펀딩기간의 종료 전(본 약관에서 정한 사유로 펀딩기간이 연장된 경우에는 연장된 펀딩기간의 종료 전)까지만 펀딩을 취소할 수 있습니다. 단, 메이커가 펀딩의 취소에 대해 본 약관에서 정한 것보다 서포터에게 더 유리하도록 정한 것이 있는 경우에는 그에 따릅니다.</li>
                              <li>이미 펀딩을 신청한 서포터가 결제예약금을 수정하고 싶은 경우에는 추가로 펀딩을 신청하거나 또는 이전 펀딩을 취소한 후 다시 펀딩을 신청하여야 합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제12조 (펀딩 달성률의 게시)</h3>
                            <ol>
                              <li>펀딩의 신청이 접수되면 홈페이지에 펀딩 달성률이 게시됩니다. 다만, 본 약관에 따라 펀딩의 취소가 있거나 펀딩의 신청 효력이 상실되는 경우에는 펀딩 달성률은 변동될 수 있습니다.</li>
                              <li>제1항에도 불구하고 제14조에 따라 전달되는 펀딩금의 액수에는 결제기간 중 결제실패금액이 추가로 반영될 수 있어 펀딩 달성률과 차이가 있을 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제13조 (펀딩결과의 게시 및 통보 등)</h3>
                            <p>펀딩기간이 종료되면 회사는 펀딩결과를 제2조 제6항 및 제7항에 따라 "성공" 또는 "실패"로 구분하여 홈페이지에 게시합니다.</p>
                            <h3 style="font-weight: bold;">제14조 (펀딩금의 전달)</h3>
                            <ol>
                              <li>제2조에 따라 펀딩결과가 “성공”인 경우 펀딩금은 서비스약정에서 정한 바에 따라 메이커에게 전달됩니다. 다만, 프로젝트의 특성에 따라 서비스약정에서 달리 약정한 경우에는 조건부 또는 분할하여 지급될 수 있습니다.</li>
                              <li>회사는 특별한 사정이 없는 한 서비스약정에서 정한 바에 따라 메이커에 대한 확인절차가 완료된 경우에 한하여 위 완료된 날로부터 15영업일 이내에 메이커에게 펀딩금의 전액(일시 지급하기로 한 경우) 또는 일부(분할 지급하기로 한 경우)를 전달합니다.</li>
                              <li>제1항, 제2항에도 불구하고 메이커가 프로젝트를 이행할 수 없거나 서포터에게 리워드를 제공할 수 없음이 분명한 경우 또는 메이커 서비스 이용약관상 펀딩금을 정산할 수 없다고 규정된 경우에는 회사는 펀딩금의 지급을 유보하거나 전달하지 아니할 수 있습니다.</li>
                              <li>펀딩금 지급 도중 제3항과 같은 사유가 발생한 경우에는 회사는 지급하지 않은 잔여 펀딩금의 지급을 유보할 수 있고, 필요한 경우 이미 지급받은 펀딩금에 대하여도 메이커가 서포터들에게 반환하도록 요청할 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제15조 (할인쿠폰)</h3>
                            <ol>
                              <li>할인쿠폰은 발행대상, 발행경로, 사용대상 등에 따라 구분될 수 있으며, 할인쿠폰의 세부구분, 할인금액(할인율), 사용방법, 사용기한 및 제한에 대한 사항은 할인쿠폰 또는 서비스 화면에 표시됩니다. 할인쿠폰의 종류 및 내용과 발급 여부는 회사의 서비스 정책에 따라 변경될 수 있습니다.</li>
                              <li>할인쿠폰은 현금으로 출금될 수 없으며, 할인쿠폰에 표시된 유효기간이 만료되거나 회원자격이 상실되면 소멸합니다.</li>
                              <li>할인쿠폰은 회사에서 별도로 명시한 경우를 제외하고는 타인에게 양도할 수 없으며, 부정한 목적이나 용도로 사용할 수 없습니다. 이를 위반한 경우 회사는 할인쿠폰을 소멸시키거나 회원자격을 제한 또는 상실시킬 수 있습니다.</li>
                              <li>회원이 부정한 방법으로 할인쿠폰을 획득한 사실이 확인될 경우, 회사는 이를 회수하고, 회원자격 상실 및 민∙형사 상의 법적 조치 등을 취할 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제16조 (결제예약의 취소 및 펀딩금의 반환)</h3>
                            <ol>
                              <li>회사는 다음 각 호의 사유가 발생한 경우 해당 사유가 발생한 날로부터 지체 없이 펀딩기간 종료 시까지 모집된 결제예약금을 일괄적으로 취소합니다.
                                <ol>
                                  <li>프로젝트가 펀딩기간 중에 중도 철회 또는 취소된 경우</li>
                                  <li>제2조에 따라 펀딩결과가 “실패”인 경우</li>
                                </ol>
                              </li>
                              <li>본조 제1항의 경우 메이커는 프로젝트의 펀딩기간 동안 모집된 결제예약금에 대하여 어떠한 권리도 주장할 수 없습니다.</li>
                              <li>
                                서포터는 다음 각 호에서 정한 사유로 펀딩금의 일부 또는 전부에 대하여 회사가 <a href="/web/wterms/funding_refund">펀딩금 반환 정책</a>에서 정한 방식과 절차에 따라 반환 신청을 할 수 있습니다. 메이커가 서포터가 펀딩금 반환 신청을 한 날로부터 14일 이내에 펀딩금 반환 신청을 승인한 경우 회사가 카드결제를 취소하여 서포터에게 펀딩금을 반환합니다. 단, 앵콜 또는 글로벌 펀딩의 경우 서포터의 단순변심에 의한 개별 반환 신청에 대하여 전자상거래법에서 정한 거부사유가 없는 한 메이커는 서포터에게 지체없이 반환합니다.
                                <ol>
                                  <li>리워드의 유통 및 제작에 법적으로 문제가 있는 경우</li>
                                  <li>리워드가 프로젝트 페이지에 표시∙광고된 내용과 현저하게 다른 경우</li>
                                  <li>메이커가 수거 접수 지연 등 고지한 교환∙AS 등의 절차를 정당한 사유 없이 지연하는 경우</li>
                                  <li>회사의 <a href="/web/wterms/funding_refund">펀딩금 반환 정책</a>상 펀딩금 개별 반환 사유에 해당하는 경우</li>
                                </ol>
                              </li>
                              <li>
                                회사는 다음 각 호에서 정한 사유가 발생한 경우 직접 펀딩금 반환 신청을 승인하고 카드결제 취소 등의 방법을 통하여 서포터에게 펀딩금을 반환할 수 있습니다. 단, 제a호부터 제c호까지의 사유 발생 시 반환신청을 한 서포터에 한정하여 해당 서포터에게 펀딩금을 반환하고, 제d호는 사유발생 시 서포터들 전체에게 일괄하여 각 펀딩금을 반환합니다.
                                <ol>
                                  <li>본 조 제3항에 따른 펀딩금 반환 사유가 인정됨에도 불구하고 메이커가 펀딩금 반환을 거부하는 경우</li>
                                  <li>메이커가 본 조 제3항에 따른 서포터의 펀딩금 반환 신청이 접수된 날로부터 14일 이내에 펀딩금 반환을 승인하지 않는다는 의사를 회사에게 표시하지 않은 경우</li>
                                  <li>앵콜 또는 글로벌 펀딩의 경우 <a href="/web/wterms/funding_refund">펀딩금 반환 정책</a>상 서포터가 적법하게 단순변심에 의한 개별 반환 신청을 하는 경우</li>
                                  <li>회사의 <a href="/web/wterms/funding_refund">펀딩금 반환 정책</a>상 펀딩금 일괄 반환 사유에 해당하는 경우</li>
                                </ol>
                              </li>
                            </ol>
                            <h3 style="font-weight: bold;">제17조 (결제 취소)</h3>
                            <ol>
                              <li>서포터는 프로젝트 종료 후 리워드의 발송 또는 제공 전에 다음 각 호에서 정한 사유에 근거하여 회사에 결제 취소를 요청할 수 있습니다. 단, 후원 펀딩의 경우 아래 c호의 적용이 배제됩니다.
                                <ol>
                                  <li>동일한 리워드를 중복적으로 결제한 경우 및 동일 프로젝트의 여러 리워드 구성을 중복적으로 결제한 경우</li>
                                  <li>펀딩에 참여한 리워드가 타인의 지식재산권을 침해한 것으로 의심되는 합리적인 사유가 있는 경우</li>
                                  <li>펀딩에 참여한 리워드가 발송되기 전 국내외 타 크라우드펀딩 플랫폼 또는 타 유통채널을 통해 펀딩 또는 판매된 것으로 의심되는 합리적인 사유가 있는 경우</li>
                                  <li>펀딩에 참여한 프로젝트 스토리 내에 허위 사실이 포함된 것으로 의심되는 합리적인 사유가 있는 경우</li>
                                  <li>리워드의 배송 지연이 예상되는 등 프로젝트의 목적 달성이 어렵거나 어렵다고 예측되는 경우와 같이 기타 서포터 보호를 위해 그 필요성이 현저히 인정되는 경우</li>
                                </ol>
                              </li>
                              <li>회사는 서포터의 결제 취소 요청이 제1항의 결제 취소 사유에 해당한다고 판단되는 경우에는 결제 취소를 위한 조치를 취합니다. </li>
                              <li>결제 취소에 따른 환불은 취소절차가 완료된 이후 각종 카드 결제 및 기타 회사가 추가 지정하는 결제 수단을 통해 이루어집니다. 할인쿠폰을 사용한 경우에는, 해당 할인쿠폰 사용이 취소됩니다. 단, 유효기간이 지난 경우 반환 즉시 소멸됩니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제18조 (개인정보의 제공)</h3>
                            <ol>
                              <li>회사는 메이커가 리워드 제공 및 리워드 제공을 위해 필요한 행위를 하기 위하여 필요한 개인 정보를 회사의 개인정보처리방침에 따라 서포터로부터 확인 및 동의를 받은 후 메이커에게 제공합니다.</li>
                              <li>메이커는 개인정보를 제공 받은 목적 외의 목적을 밝히고 별도로 동의를 받지 않는 이상 제공받은 서포터의 정보를 제1항의 동의를 받은 목적 외의 용도로 제공받은 정보를 수집 이용하여서는 안 되며, 이를 위반하여 발생한 개인정보 노출 사고 등에 대한 모든 책임은 회사의 고의 또는 과실이 없는 이상 메이커가 단독으로 부담하여야 합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제19조 (면책)</h3>
                            <ol>
                              <li>
                                회사는 홈페이지를 통하여 플랫폼을 제공하는 방식으로 온라인상의 거래를 중개하는 중개자이며 크라우드펀딩계약(리워드 제공 및 펀딩 등 프로젝트에 관한 계약 등 포함)의 당사자가 아닙니다. 따라서 회사는 아래 각 호의 사항을 포함하여  위 크라우드펀딩 계약과 관련하여 발생하는 분쟁에 대한 책임을 지지 않습니다. 단, 중개 과정에서 회사의 고의 또는 중대한 과실이 인정되는 경우는 그러지 아니합니다.
                                <ol>
                                  <li>메이커가 프로젝트 페이지에 게재한 정보, 자료, 사실 등의 진실성, 정확성, 신뢰성 및 게시된 자료의 활용으로 인하여 야기되는 일체의 결과</li>
                                  <li>서포터 간 및 서포터와 메이커를 포함한 제3자간에 서비스를 매개로 발생한 분쟁</li>
                                  <li>메이커가 변경금지사항을 임의로 변경하거나, 변경한 내용을 공지하지 아니한 경우에는 해당 프로젝트의 서포터와의 관계에서발생할 수 있는 법적 분쟁과 책임 및 불이익</li>
                                  <li>메이커가 본 약관에 따라 전달받은 펀딩금을 프로젝트의 수행 및 완료, 약속한 리워드의 제공 및 발송을 위한 용도로만 사용하여야 한다는 제한을 위반함에 따라 발생하는 불이익 및 법적 책임</li>
                                  <li>펀딩결과가 성공임에도 불구하고 메이커가 고의 또는 과실로 약속한 내용의 일부 또는 전부를 이행하지 않거나, 다르게 이행하는 경우 발생할 수 있는 모든 결과</li>
                                </ol>
                              </li>
                              <li>
                                회사는 회사의 고의 또는 과실이 없는 한 아래 각 호의 사항으로부터 발생하는 손해에 대하여 책임을 지지 아니합니다.
                                <ol>
                                  <li>회사가 본 약관 제6조 제2항 등 본 약관 또는 그의 위임을 받은 하위 정책에서 정하는 방식으로 서비스 제공을 제한 또는 중지한 경우</li>
                                  <li>서포터가 전자우편 등 개인정보를 부실하게 기재하거나, 본 약관에 따라 입력하여야 하는 정보의 최신화의무를 다하지 아니하여 발생한 손해</li>
                                  <li>서비스에 대한 접속 및 이용과 관련하여 서포터의 고의 또는 과실로 인하여 서포터 또는 제3자에게 발생한 손해</li>
                                </ol>
                              </li>
                            </ol>
                            <h3 style="font-weight: bold;">제20조 (권리의 귀속 등)</h3>
                            <p>회사가 제공하는 서비스(데이터, 소프트웨어, 게시물의 저작권 등)에 관한 권리는 회사에게 귀속됩니다.</p>
                            <h3 style="font-weight: bold;">제21조 (불가항력에 따른 면책) </h3>
                            <p>회사는 천재지변, 전시·사변 또는 이에 준하는 불가항력이라고 인정되는 사유로 인하여 서포터에게 발생하는 손해에 대하여 책임을 지지 아니합니다.</p>
                            <h3 style="font-weight: bold;">제22조 (준거법 등)</h3>
                            <ol>
                              <li>이용계약의 준거법은 대한민국 법률로 합니다.</li>
                              <li>이용계약과 관련하여 회사와 서포터 간에 발생하는 모든 분쟁/소송은 민사소송법 상의 관할법원에서 해결합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제23조 (앵콜 및 글로벌 펀딩에 대한 특례)</h3>
                            <ol>
                              <li>앵콜 펀딩 및 글로벌 펀딩의 경우 서포터는 전자상거래법 등 관련 법령 및 펀딩금 반환 정책에 따라 리워드를 배송 받은 날로부터 7일 이내에 펀딩금 반환 또는 교환을 신청할 수 있습니다. 다만, 리워드가 무형의 서비스인 경우 서포터의 단순 변심으로 인한 펀딩금 반환은 전자상거래법에 따라 해당 서비스를 이용하거나 제공받을 수 있는 권리를 받은 날로부터 7일 간 가능합니다. 청약철회와 관련하여 전자상거래법에 본 항과 달리 정함이 있는 경우에는 동법 규정에 따릅니다.</li>
                              <li>서포터는 제1항에도 불구하고 다음 각 호에 해당하는 경우에는 펀딩금 반환이나 교환을 요청할 수 없습니다.
                                <ol>
                                  <li>서포터의 책임 있는 사유로 리워드가 멸실 또는 훼손된 경우(다만, 리워드의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외함)</li>
                                  <li>서포터의 사용 또는 일부 소비로 인하여 리워드의 가치가 현저히 감소한 경우</li>
                                  <li>시간의 경과에 의하여 재판매가 곤란할 정도로 리워드의 가치가 현저히 감소한 경우</li>
                                  <li>복제 가능한 리워드의 포장을 훼손한 경우</li>
                                  <li>용역 또는 “문화산업진흥 기본법” 제2조 제5호의 디지털콘텐츠의 제공이 개시된 경우(다만, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우에는 제공이 개시되지 아니한 부분에 대하여는 제외함)</li>
                                  <li>주문에 따라 개별적으로 생산되는 리워드 등 그에 대하여 청약철회 등을 인정할 경우 메이커에게 회복할 수 없는 중대한 피해가 예상되는 경우로서, 사전에 해당 거래에 대하여 별도로 그 사실을 고지하고 서포터의 서면(전자문서를 포함)에 의한 동의를 받은 경우</li>
                                  <li>그 밖에 관련 법령에 따른 반품 제한 사유에 해당되는 경우</li>
                                </ol>
                              </li>
                              <li>서포터는 제1항 및 제2항에도 불구하고 리워드의 내용이 표시∙광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 리워드를 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 펀딩금 반환 또는 교환을 신청할 수 있습니다.</li>
                              <li>서포터는 제2항 또는 제4항에 따라 교환 신청을 하더라도 메이커에게 교환할 리워드의 재고가 없는 경우에는 해당 리워드의 교환을 받을 수 없습니다. 이 경우 메이커는 서포터의 의향을 확인하여 해당 교환 신청을 펀딩금 반환으로 처리할 수 있습니다.</li>
                              <li>펀딩금 반환이나 교환에 필요한 배송비 및 기타 비용은 귀책사유가 있는 당사자가 부담합니다. 이 경우 리워드의 하자 또는 오배송으로 인한 펀딩금 반환이나 교환의 경우에는 메이커가 그 비용을 부담하나, 서포터의 단순 변심으로 인한 펀딩금 반환이나 교환의 경우에는 서포터가 그 비용을 부담합니다.</li>
                              <li>메이커는 서포터가 배송상의 문제로 손해를 입은 경우에는 그에 대한 책임을 부담합니다.</li>
                              <li>회사는 메이커가 서포터의 결제완료에 대한 통지를 받은 이후에도 상당 기간 배송 절차 등을 이행하지 아니하여 서포터가 펀딩을 취소하거나 ‘리워드 준비 중’ 상태에서 90일 동안 아무런 조치를 취하지 않을 경우, 회사는 직권으로 서포터의 결제를 취소하고 결제대금예치서비스 이용 중인 결제대금을 서포터에게 환불할 수 있습니다.</li>
                              <li>메이커가 서포터의 교환 또는 펀딩금 반환 신청에 대하여 적극적으로 임하지 않거나 이를 지연하는 경우, 회사는 서포터에게 그 교환 또는 펀딩금 반환 신청의 사유를 파악하여 정당한 사유가 있는 경우에는 해당 거래를 취소하는 한편, 예치 중인 결제대금을 서포터에게 환불할 수 있습니다. 다만 서포터의 교환 또는 펀딩금 반환 신청에 정당한 사유가 없는 경우에는 그러하지 아니합니다.</li>
                              <li>서포터의 펀딩금 반환 요청 후 7영업일이 경과할 때까지 메이커가 이를 처리하기 위한 아무런 조치를 취하지 않을 경우 서포터의 요청은 회사의 직권으로 승인될 수 있습니다. 단, 카드로 결제가 이루어진 경우 환불은 해당 카드 결제 취소를 통해서만 가능합니다.</li>
                              <li>서포터는 리워드 수령완료일로부터 7일이 경과한 이후에는 회사에 대하여 리워드의 하자, 펀딩 취소, 펀딩금 반환, 교환 등의 사유로 이의를 제기할 수 없습니다. 그 이후에 발생하는 펀딩금 반환, 교환 등 기타 메이커와 서포터 간의 모든 문제는 전자상거래법에 따라 거래 당사자인 메이커와 서포터가 직접 해결해야 하며, 회사는 이에 개입하지 아니합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제24조 (앵콜 및 글로벌 펀딩의 결제대금예치서비스 이용)</h3>
                            <ol>
                              <li>회사는 앵콜 및 글로벌 펀딩의 경우 서포터와 메이커 간에 이루어지는 펀딩의 안전성과 신뢰성을 높이고 리워드를 제공받기 전에 펀딩금을 결제해야 하는 서포터를 보호하기 위하여, 메이커로 하여금 법에서 정하는 한도 내에서 서포터에게 결제대금예치서비스를 제공하도록 합니다.</li>
                              <li>회사는 결제대금예치서비스의 제공과 관련하여 메이커 또는 서포터를 대리하는 것이 아님은 물론, 펀딩과 관련하여 메이커 또는 서포터의 의무를 대행하는 것도 아닙니다.</li>
                              <li>서포터는 결제대금예치서비스를 통하여 펀딩금을 결제하는 과정에서 발생하는 결제대금예치 서비스 송금수수료 등을 부담하여야 합니다.</li>
                              <li>서포터는 메이커가 결제대금예치서비스를 제공하는 과정에서 발생하는 이자 등에 대하여 회사 또는 메이커에게 그 반환을 청구할 수 없습니다.</li>
                              <li>결제대금예치서비스는 서포터의 반품 또는 교환 등의 요청 없이 리워드 수령 완료일로부터 7일이 경과하면 종료됩니다.</li>
                              <li>서포터는 결제대금예치서비스가 종료된 이후에 해당 펀딩 건에 대하여 펀딩취소, 펀딩금 반환, 해제, 무효 등의 사유가 발생한 경우 메이커와 직접 펀딩취소, 펀딩금 반환, 해제 및 환불 등에 관한 절차를 진행해야 합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제25조 (후원 펀딩에 관한 특례)</h3>
                            <ol>
                              <li>후원 펀딩 프로젝트에서는 기성품 또는 타 유통채널에서 판매되는 제품 및 서비스를 리워드로 제공할 수 있습니다.</li>
                              <li>후원 펀딩 프로젝트의 경우 총 결제예약금이 1천만 원에 도달하게 되는 결제예약 시도 건부터 결제예약이 불가능합니다. </li>
                            </ol>
                            <h2 id="제2장 스토어 서비스">제2장 스토어 서비스</h2>
                            <h3 style="font-weight: bold;">제1절 총칙</h3>
                            <h3 style="font-weight: bold;">제26조 (목적)</h3>
                            <p>본 장의 약관은 와디즈 주식회사(이하 “회사”)가 운영 및 제공하는 인터넷 사이트 https://www.wadiz.kr (이하 “사이트")에서 제공하는 와디즈스토어 서비스와 이를 이용하는 회원의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.</p>
                            <h3 style="font-weight: bold;">제27조 (용어의 정의)</h3>
                            <p>본 장에서 사용하는 용어의 정의는 다음과 같습니다. 그리고 여기에서 정의되지 않은 본 장의 용어의 의미는 일반적인 거래관행에 따릅니다.</p>
                            <ol>
                              <li>"서비스"라 함은 회원이 전자적 시스템에 접속하여 사이트에서 온라인상의 거래 등을 할 수 있게 본 약관에 따라 회사가 제공하는 서비스로, 회사가 제공하는 통신판매 서비스와 통신판매중개 서비스 및 관련 부가서비스(플랫폼의 개발 및 운영 서비스, 판매 및 구매 관련 지원 서비스, 매매계약체결 관련 서비스, 상품 정보검색 서비스, 광고 집행 및 프로모션 서비스 기타 전자상거래 관련 서비스 등) 중, 일정
                                자격요건을 충족하는 메이커가 일정 자격요건을 충족하는 상품을 서포터에게 상시, 혹은 기간을 정하여 판매할 수 있도록 제공하는 서비스를 의미합니다.</li>
                              <li>"사이트"란 회사가 상품 또는 용역 등(일정한 시설을 이용하거나 용역을 제공받을 수 있는 권리를 포함하며, 이하 "상품 등")을 회원에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 상품 등을 거래할 수 있도록 설정한 가상의 영업장(https://www.wadiz.kr 등 회사가 운영하는 웹페이지 및 모바일 웹, 앱 등을 모두 포함)을 의미합니다.</li>
                              <li>"회원"이라 함은 회사의 회원가입약관에 동의함으로써 사이트에 회원등록을 한 자로서, 계속적으로 사이트에서 제공하는 서비스를 이용할 수 있는 자를 말합니다.</li>
                              <li>"메이커"라 함은 회사의 회원가입약관에 따른 회원 중에서 회사에서 제공하는 서비스를 이용할 수 있는 회원으로서 회사와 별도로 체결하는 "스토어 서비스 메이커 이용약관"에 따라 사이트에 상품을 등록 및 게재하고, 서포터들을 대상으로 판매하고자 하는 회원을 말합니다.</li>
                              <li>"서포터"라 함은 회사의 회원가입약관에 따른 회원 중에서 회사에서 제공하는 서비스를 통해 회사 또는 메이커가 판매하고자 하는 상품을 구매하였거나 구매하려는 회원을 말합니다.</li>
                              <li>"프로젝트"라 함은 메이커가 서포터에게 상품을 판매하기 위해 회사의 승인을 받아 회사의 사이트에 개설한 페이지 및 이를 통해 서포터에게 약속한 내용을 의미합니다.</li>
                              <li>"상품"이라 함은 메이커가 회사의 서비스를 통하여 고객에게 제공 및 판매하는 각종 재화 및 용역 등을 총칭하여 말하며, 회사에서 정한 일정 자격 요건을 충족하여야 합니다.</li>
                              <li>"쿠폰"이라 함은 상품을 구매하거나 회사가 제공하는 서비스를 이용할 때 표시된 금액 또는 비율만큼 할인 받을 수 있는 쿠폰을 말합니다.</li>
                              <li>"결제대금예치 서비스"라 함은 매매계약이 체결되고 서포터가 대금을 결제하는 경우에, 서포터의 결제대금 보호를 위하여 메이커가 일정 기간 동안 결제대금을 예치하는 서비스를 제공하는 것을 말합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제28조 (서비스의 제공 및 변경)</h3>
                            <ol>
                              <li>
                                회사는 다음 각 호와 같은 서비스를 제공합니다.
                                <ol>
                                  <li style="list-style-type: decimal;">통신판매 서비스 및 이에 수반되는 기타 서비스</li>
                                  <li style="list-style-type: decimal;">통신판매중개 서비스 및 이에 수반되는 기타 서비스</li>
                                  <li style="list-style-type: decimal;">기타 회사가 정하는 서비스 또는 업무</li>
                                </ol>
                              </li>
                              <li>회사는 서포터와 매매계약을 체결한 메이커가 상품 등의 품절 또는 기술적 사양의 변경 등의 사유로 서비스의 내용을 변경할 경우에는 메이커가 그 사유를 서포터에게 즉시 통지하도록 안내하며, 필요 시, 회사의 매체를 통하여 직접 통지를 진행합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제29조 (서비스의 중단)</h3>
                            <ol>
                              <li>회사는 천재지변 또는 이에 준하는 불가항력, 컴퓨터 등 정보통신설비의 보수점검·교체, 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</li>
                              <li>사업 종목의 전환, 사업의 종료 또는 포기, 회사의 폐업, 합병, 분할, 영업양도 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 관계법령의 규정을 따르며, 관계법령에 특별한 규정이 없는 한 회원에게 별도의 보상을 하지 않습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제30조 (서비스의 이용)</h3>
                            <ol>
                              <li>회원은 이 약관 및 회사가 서비스 화면에서 고지하는 내용을 준수하여야 하고, 이 약관 및 고지 내용을 위반하거나 이행하지 않아 발생하는 모든 손해에 대하여 책임을 집니다.</li>
                              <li>회원은 회사 또는 메이커와 상품 등 매매 절차에서 분쟁이 발생하면 분쟁의 해결을 위하여 성실히 임해야 하며, 분쟁해결의 불성실로 회사 및 제3자에 손해가 발생하면 그에 대한 모든 책임을 부담합니다.</li>
                              <li>서포터는 매매대금의 결제와 관련하여 서포터가 입력한 정보 및 그 정보와 관련하여 발생하는 제반 문제에 대한 모든 책임을 부담합니다. 단, 회사의 고의 또는 과실이 있는 경우에는 그러하지 아니합니다.</li>
                              <li>회사는 서포터의 매매대금 결제 시 해당 결제수단에 대하여 정당한 사용권한이 있는지 확인할 수 있고, 이에 대한 확인이 완료될 때까지 해당 거래의 진행을 중지할 수 있습니다.</li>
                              <li>회사는 회원에게 서비스가 안전하게 제공될 수 있도록 각종 설비와 자료를 관리하고, 서비스가 제공 목적에 맞게 이용되고 있는지 여부를 확인합니다. 만약 회원이 이용 목적을 위반한 것으로 확인되면 회사는 그에 대한 소명을 회원에게 요청할 수 있고, 주문 취소 등 필요한 조치를 할 수 있습니다.</li>
                              <li>미성년자가 사이트를 통하여 상품 등을 구매하는 경우에 법정대리인이 해당 계약에 대하여 동의하지 아니하면, 미성년자 본인 또는 법정대리인은 그 계약을 취소할 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제31조 (회사의 의무)</h3>
                            <ol>
                              <li>회사는 이 약관이 금지하거나 관련 법령 기타 공공의 질서와 선량한 풍속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 제공하는 데 최선을 다합니다.</li>
                              <li>회사는 서비스 제공과 관련하여 알고 있는 회원 정보를 본인의 동의 없이 제3자에게 제공하지 않습니다.</li>
                              <li>회사는 회원이 안전하게 서비스를 이용할 수 있도록 회원의 개인정보(신용정보 포함)보호를 위한 보안시스템을 갖추어야 하며, 개인정보처리방침을 공시하고 준수합니다.</li>
                              <li>회사는 회원이 동의하지 않는 영리목적의 광고성 전자우편, 앱 푸쉬 등을 발송하지 않습니다.</li>
                              <li>회사는 회원으로부터 제기되는 의견이나 불만이 객관적으로 정당하다고 인정될 경우에는 회원의 불만을 해결하기 위해 노력하여야 하며, 신속한 처리가 곤란한 경우 그 사유와 처리 일정을 서비스 화면에 게재하거나 전자우편 등을 통하여 회원에게 통지합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제32조 (회원의 의무)</h3>
                            <ol>
                              <li>회원은 회사의 약관, 규정, 회사의 이용정책, 이용안내 사항 및 관계 법령 등을 준수하여야 하며, 기타 회사 업무에 방해되는 행위를 하여서는 안 됩니다.</li>
                              <li>회원은 다음 각 호의 행위를 하여서는 안 됩니다.
                                <ol>
                                  <li style="list-style-type: lower-alpha;">회사가 제공하는 서비스를 이용하지 아니하고 메이커와 직접 거래하는 행위(이하 “직거래”) 또는 이를 유도하는 행위</li>
                                  <li style="list-style-type: lower-alpha;">회사 또는 메이커의 판매 활동을 방해하거나 사이트를 이용하여 부당한 이득을 취하는 등 통상적인 전자상거래 관행에 부합하지 않는 거래상의 부정 행위</li>
                                  <li style="list-style-type: lower-alpha;">상품의 판매 또는 용역의 제공을 가장한 현금 융통 등 “여신전문금융업법”, “정보통신망 이용촉진 및 정보보호 등에 관한 법률” 및 기타 관계 법령에 위배되거나 비정상적인 결제 행위</li>
                                  <li style="list-style-type: lower-alpha;">회사가 제공하는 서비스 이용방법에 의하지 아니하고 비정상적인 방법으로 서비스를 이용하거나 회사의 정보처리시스템에 접근하는 행위</li>
                                  <li style="list-style-type: lower-alpha;">회사가 제공하는 서비스와 관련 없거나 비합리적인 요청, 공공의 질서와 선량한 풍속에 반하는 행위 등으로 회사의 업무를 방해하는 행위</li>
                                  <li style="list-style-type: lower-alpha;">기타 위 각 호에 준하여 회사 또는 제3자의 권리를 침해 또는 침해할 우려가 있거나, 전자상거래 질서를 위협하는 행위</li>
                                </ol>
                              </li>
                              <li>회사는 제2항을 위반한 회원에 대하여 계약 해제, 쿠폰의 환수, 회원 자격의 제한, 카드 결제 취소 보류 등의 조치 및 민∙형사 상의 법적 조치 등을 취할 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제33조 (구매신청)</h3>
                            <ol>
                              <li>서포터는 본 약관 및 회사가 정한 규정에 따라 아래와 같거나 유사한 방법으로 구매를 신청하며, 회사는 서포터가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
                                <ol>
                                  <li style="list-style-type: lower-alpha;">재화 등의 검색 및 선택</li>
                                  <li style="list-style-type: lower-alpha;">받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력</li>
                                  <li style="list-style-type: lower-alpha;">약관내용, 청약 철회권이 제한되는 서비스, 배송료/설치비 등의 비용부담과 관련한 내용에 대한 확인</li>
                                  <li style="list-style-type: lower-alpha;">재화 등의 구매신청 및 이에 관한 확인 또는 회사의 확인에 대한 동의</li>
                                  <li style="list-style-type: lower-alpha;">결제방법의 선택</li>
                                </ol>
                              </li>
                              <li>회사 또는 메이커는 제1항과 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다.
                                <ol>
                                  <li style="list-style-type: lower-alpha;">신청 내용에 허위, 기재누락, 오기가 있는 경우</li>
                                  <li style="list-style-type: lower-alpha;">미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우</li>
                                  <li style="list-style-type: lower-alpha;">기타 구매신청에 승낙하는 것이 회사의 기술상 현저히 지장이 있다고 판단하는 경우</li>
                                </ol>
                              </li>
                            </ol>
                            <h3 style="font-weight: bold;">제34조 (매매계약의 체결 및 대금 결제)</h3>
                            <ol>
                              <li>상품의 매매계약은 서포터가 회사 또는 메이커가 제시한 상품의 판매 조건에 응하여 청약의 의사표시를 하고 이에 대하여 회사 또는 메이커가 승낙의 의사표시를 함으로써 체결됩니다.</li>
                              <li>회사는 서포터에게 선불카드, 직불카드, 신용카드 등의 각종 카드 결제 및 기타 회사가 추가 지정하는 결제 수단의 방법으로 매매 대금을 결제할 수 있는 방법을 제공합니다.</li>
                              <li>회사는 정확하고 안전한 결제 처리를 위해 관계법령에 따라 아래와 같은 서포터의 정보를 서포터의 동의를 받아 결제 대행사에 제공하게 됩니다.
                                <div class="scroll-table">
                                  <table style="min-width:500px;width:100%">
                                    <thead>
                                    <tr>
                                      <th style="width:50%">결제와 관련한 정보를 제공 받는 자</th>
                                      <th style="width:50%">제공되는 정보</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>
                                        <ul>
                                          <li>주식회사 케이지이니시스</li>
                                          <li>나이스정보통신 주식회사</li>
                                        </ul>
                                      </td>
                                      <td>
                                        <ul>
                                          <li>신용카드(체크카드)의 번호, 유효기간</li>
                                          <li>신용카드(체크카드) 소유자의 성명</li>
                                          <li>계좌번호, 은행, 예금주 성명</li>
                                          <li>이메일, 휴대폰번호 등 결제 확인을 위한 연락처</li>
                                        </ul>
                                      </td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </li>
                              <li>서포터가 매매대금의 결제와 관련하여 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 전적으로 서포터가 부담합니다.</li>
                              <li>상품을 주문한 후 일정 기간 내에 매매대금을 결제하지 않을 경우 회사는 당해 주문을 서포터의 동의 없이 취소할 수 있습니다.</li>
                              <li>회사는 서포터의 상품 매매계약 체결 내용을 사이트를 통해 확인할 수 있도록 조치하며, 매매계약의 취소 방법 및 절차를 안내합니다.</li>
                              <li>회사는 서포터가 매매대금 결제 시 사용한 결제수단에 대해 정당한 사용권한을 가지고 있는지의 여부를 확인할 수 있으며, 이에 대한 확인이 완료될 때까지 거래진행을 중지하거나, 확인이 불가한 해당거래를 취소할 수 있습니다.</li>
                              <li>서포터가 실제로 결제하는 금액은 회사 또는 메이커가 정한 공급원가, 기본이용료, 상품에 적용된 할인쿠폰, 배송비, 옵션상품의 옵션내역 등이 적용된 금액(실구매액)이며 서포터에게 발행되는 구매증빙서(현금영수증, 세금계산서, 신용카드매출전표 등)는 실구매액으로 발행됩니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제35조 (할인쿠폰)</h3>
                            <ol>
                              <li>할인쿠폰은 발행대상, 발행경로, 사용대상 등에 따라 구분될 수 있으며, 할인쿠폰의 세부구분, 할인금액(할인율), 사용방법, 사용기한 및 제한에 대한 사항은 할인쿠폰 또는 서비스 화면에 표시됩니다. 할인쿠폰의 종류 및 내용과 발급 여부는 회사의 서비스 정책에 따라 변경될 수 있습니다.</li>
                              <li>할인쿠폰은 현금으로 출금될 수 없으며, 할인쿠폰에 표시된 유효기간이 만료되거나 회원자격이 상실되면 소멸합니다.</li>
                              <li>할인쿠폰은 회사에서 별도로 명시한 경우를 제외하고는 타인에게 양도할 수 없으며, 부정한 목적이나 용도로 사용할 수 없습니다. 이를 위반한 경우 회사는 할인쿠폰을 소멸시키거나 회원자격을 제한 또는 상실시킬 수 있습니다.</li>
                              <li>회원이 부정한 방법으로 할인쿠폰을 획득한 사실이 확인될 경우, 회사는 이를 회수하고, 회원자격 상실 및 민∙형사 상의 법적 조치 등을 취할 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제36조 (결제대금예치 서비스 이용)</h3>
                            <ol>
                              <li>회사는 서포터와 회사 또는 메이커 간에 이루어지는 상품 등 매매의 안전성과 신뢰성을 높이고 상품 등을 인수하기 전에 대금을 결제해야 하는 서포터를 보호하기 위하여, 메이커로 하여금 서포터에게 결제대금예치서비스를 제공하도록 합니다.</li>
                              <li>회사는 결제대금예치서비스의 제공과 관련하여 메이커 또는 서포터를 대리하는 것이 아님은 물론, 상품 등의 매매와 관련하여 메이커 또는 서포터의 의무를 대행하는 것도 아닙니다.</li>
                              <li>서포터는 결제대금예치서비스를 통하여 구매대금을 결제하는 과정에서 발생하는 결제대금예치 서비스 송금수수료 등을 부담하여야 합니다.</li>
                              <li>서포터는 메이커가 결제대금예치서비스를 제공하는 과정에서 발생하는 이자 등에 대하여 회사 또는 메이커에게 그 반환을 청구할 수 없습니다.</li>
                              <li>결제대금예치서비스는 구매확정 된 경우에 종료됩니다.</li>
                              <li>서포터는 결제대금예치서비스가 종료된 이후에 해당 구매 건에 대하여 청약철회, 취소, 해제, 무효 등의 사유가 발생한 경우 회사 또는 메이커와 직접 청약철회, 취소, 해제 및 환불 등에 관한 절차를 진행해야 합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제37조 (주문취소)</h3>
                            <ol>
                              <li>서포터는 구매한 상품이 발송되기 전까지 구매를 취소할 수 있으며, 발송처리가 완료된 경우에는 취소가 아닌 반품절차에 따라 처리됩니다.</li>
                              <li>회원이 결제를 완료한 후 상품 준비 중 상태에서는 취소신청 접수 시 특별한 사정이 없는 한 즉시 취소처리를 위한 조치가 완료됩니다.</li>
                              <li>배송 대기 중 또는 배송중 상태에서 취소신청한 때에 이미 상품이 발송이 된 경우에는 발송된 상품의 왕복배송비를 서포터가 부담하는 것을 원칙으로 하며, 취소가 아닌 반품절차에 따라 처리됩니다.</li>
                              <li>취소처리에 따른 환불은 각종 카드 결제 및 기타 회사가 추가 지정하는 결제 수단의 경우 취소절차가 완료된 즉시 결제가 취소됩니다. 할인쿠폰을 사용한 경우에는, 해당 할인쿠폰 사용이 취소됩니다. 단, 유효기간이 지난 경우 반환 즉시 소멸됩니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제2절 통신판매 서비스</h3>
                            <h3 style="font-weight: bold;">제38조 (적용범위)</h3>
                            <p>본 절의 경우 회사가 제공하는 서비스 중 통신판매 서비스 및 이에 수반되는 기타 서비스에 한정하여 적용됩니다.</p>
                            <h3 style="font-weight: bold;">제39조 (배송 및 거래완료)</h3>
                            <ol>
                              <li>회사는 서포터의 입금 또는 대금결제에 대한 확인통지를 받은 날로부터 3영업일 이내에 배송에 필요한 조치를 취합니다. 단, 배송기간에 대해 메이커와 서포터 간 달리 정함이 있는 경우에는 그에 따릅니다.</li>
                              <li>서포터는 구매한 상품 등의 배송이 완료되었을 때로부터 일정한 기간 내(7일)에 회사에 대하여 구매확정, 교환 또는 반품의 의사표시를 하여야 합니다.</li>
                              <li>회사는 제2항의 구매확정 기간 내에 구매확정, 교환 또는 반품에 대한 서포터의 의사표시가 없는 경우, 해당 거래에 대하여 서포터의 구매확정 의사표시가 있는 것으로 간주하여 자동구매확정으로 처리할 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제40조 (청약철회 등)</h3>
                            <ol>
                              <li>회사와 상품 등의 구매에 관한 계약을 체결한 서포터는 전자상거래법 등 관련 법령에 따라 상품 등을 배송 받은 날로부터 7일 이내에 반품 또는 교환을 신청할 수 있습니다. 다만, 청약철회에 관하여 전자상거래법에 달리 정함이 있는 경우에는 동법 규정에 따릅니다.</li>
                              <li>서포터는 제1항에도 불구하고 다음 각 호에 해당하는 경우에는 반품이나 교환을 요청할 수 없습니다.
                                <ol>
                                  <li style="list-style-type: lower-alpha;">서포터의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우(다만, 상품 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외함)</li>
                                  <li style="list-style-type: lower-alpha;">서포터의 사용 또는 일부 소비로 인하여 상품 등의 가치가 현저히 감소한 경우</li>
                                  <li style="list-style-type: lower-alpha;">시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우</li>
                                  <li style="list-style-type: lower-alpha;">복제 가능한 상품 등의 포장을 훼손한 경우</li>
                                  <li style="list-style-type: lower-alpha;">용역 또는 “문화산업진흥 기본법” 제2조 제5호의 디지털콘텐츠의 제공이 개시된 경우(다만, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우에는 제공이 개시되지 아니한 부분에 대하여는 제외함)</li>
                                  <li style="list-style-type: lower-alpha;">주문에 따라 개별적으로 생산되는 상품 등 그에 대하여 청약철회 등을 인정할 경우 메이커에게 회복할 수 없는 중대한 피해가 예상되는 경우로서, 사전에 해당 거래에 대하여 별도로 그 사실을 고지하고 서포터의 서면(전자문서를 포함)에 의한 동의를 받은 경우</li>
                                  <li style="list-style-type: lower-alpha;">그 밖에 관련 법령에 따른 반품 제한 사유에 해당되는 경우</li>
                                </ol>
                              </li>
                              <li>서포터는 제1항 및 제2항에도 불구하고 상품의 내용이 표시∙광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 상품 등을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 반품 또는 교환을 신청할 수 있습니다.</li>
                              <li>서포터는 제1항 또는 제3항에 따라 교환 신청을 하더라도 회사에게 교환할 상품의 재고가 없는 경우에는 해당 상품 등의 교환을 받을 수 없습니다. 이 경우 메이커는 서포터의 의향을 확인하여 해당 교환 신청을 반품으로 처리할 수 있습니다.</li>
                              <li>반품이나 교환에 필요한 배송비 및 기타 비용은 귀책사유가 있는 당사자가 부담합니다. 이 경우 상품 등의 하자 또는 오배송으로 인한 반품이나 교환의 경우에는 메이커가 그 비용을 부담하나, 서포터의 단순 변심으로 인한 반품이나 교환의 경우에는 서포터가 그 비용을 부담합니다.</li>
                              <li>회사는 회사와 상품 등의 구매에 관한 계약을 체결한 서포터가 배송상의 문제로 손해를 입은 경우에는 그에 대한 책임을 부담합니다.</li>
                              <li>서포터의 반품 또는 교환 신청을 회사가 거절할 경우 해당 주문은 구매확정으로 자동 전환됩니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제3절 통신판매중개 서비스</h3>
                            <h3 style="font-weight: bold;">제41조 (적용범위)</h3>
                            <p> 본 절의 경우 회사가 제공하는 서비스 중 통신판매중개 서비스 및 이에 수반되는 기타 서비스에 한정하여 적용됩니다. </p>
                            <h3 style="font-weight: bold;">제42조 (통신판매중개 서비스의 이용)</h3>
                            <ol>
                              <li>회사는 통신판매중개 서비스와 관련하여 통신판매중개자로서 서포터와 메이커 간의 자유로운 상품 등의 거래를 위한 시스템을 운영 및 관리, 제공할 뿐이므로, 서포터는 상품 등을 구매하기 전에 반드시 메이커가 판매 페이지 내에 작성한 상품 등의 상세 내용과 거래의 조건을 정확하게 확인해야 합니다. 구매하려는 상품 등의 내용과 거래의 조건을 확인하지 않고 구매하여 발생한 모든 손해는 서포터 본인이 부담합니다.</li>
                              <li>회원은 메이커와 상품 등 매매 절차에서 분쟁이 발생하면 분쟁의 해결을 위하여 성실히 임해야 하며, 분쟁해결의 불성실로 회사 및 제3자에 손해가 발생하면 그에 대한 모든 책임을 부담합니다.</li>
                              <li>서포터는 회사가 서포터의 서비스 이용 편의를 위하여 메이커 등으로부터 제공 받은 상품 등 관련 정보 기타 콘텐츠를 사이트를 통하여 제공하는 경우에도 상품 등의 구매 여부는 전적인 서포터 본인의 판단과 책임으로 결정하여야 합니다. 이 경우 회사는 고의 또는 중과실이 있는 경우를 제외하고 서포터의 구매 결정에 대하여 책임을 부담하지 아니 합니다. </li>
                            </ol>
                            <h3 style="font-weight: bold;">제43조 (배송 및 거래완료)</h3>
                            <ol>
                              <li>회사는 상품 등의 배송과 관련하여 메이커, 서포터, 배송업체 등 관련 당사자 사이에 분쟁 등이 발생하는 경우에는 이에 관여하지 않으며 어떠한 책임도 부담하지 아니합니다. 이 경우 해당 분쟁 등은 관련 당사자가 직접 해결하여야 합니다.</li>
                              <li>회사는 메이커에게 회사로부터 서포터의 입금 또는 대금결제에 대한 확인통지를 받은 후 3영업일 이내에 배송에 필요한 조치를 취하도록 안내합니다. 단, 배송기간에 대해 메이커와 서포터 간 달리 정함이 있는 경우에는 그에 따릅니다.</li>
                              <li>서포터는 구매한 상품 등의 배송이 완료되었을 때로부터 일정한 기간 내(7일)에 회사에 대하여 구매확정, 교환 또는 반품의 의사표시를 하여야 합니다.</li>
                              <li>회사는 제3항의 구매확정 기간 내에 구매확정, 교환 또는 반품에 대한 서포터의 의사표시가 없는 경우, 해당 거래에 대하여 서포터의 구매확정 의사표시가 있는 것으로 간주하여 자동구매확정으로 처리할 수 있습니다.</li>
                              <li>서포터는 구매확정이 이루어진 경우에는 회사에 대하여 상품 등의 하자, 미수령, 반품 등의 사유로 이의를 제기할 수 없습니다. 구매확정 이후에 발생하는 환불, 교환 기타 메이커와 서포터 간의 모든 문제는 전자상거래법에 따라 거래 당사자인 메이커와 서포터가 직접 해결해야 하며, 회사는 이에 개입하지 아니합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제44조 (청약철회 등)</h3>
                            <ol>
                              <li>메이커와 상품 등의 구매에 관한 계약을 체결한 서포터는 전자상거래법 등 관련 법령에 따라 상품 등을 배송 받은 날로부터 7일 이내에 반품 또는 교환을 신청할 수 있습니다. 다만, 청약철회에 관하여 전자상거래법에 달리 정함이 있는 경우에는 동법 규정에 따릅니다.</li>
                              <li>서포터는 제1항에도 불구하고 다음 각 호에 해당하는 경우에는 반품이나 교환을 요청할 수 없습니다.
                                <ol>
                                  <li style="list-style-type: lower-alpha;">서포터의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우(다만, 상품 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외함)</li>
                                  <li style="list-style-type: lower-alpha;">서포터의 사용 또는 일부 소비로 인하여 상품 등의 가치가 현저히 감소한 경우</li>
                                  <li style="list-style-type: lower-alpha;">시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우</li>
                                  <li style="list-style-type: lower-alpha;">복제 가능한 상품 등의 포장을 훼손한 경우</li>
                                  <li style="list-style-type: lower-alpha;">용역 또는 “문화산업진흥 기본법” 제2조 제5호의 디지털콘텐츠의 제공이 개시된 경우(다만, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우에는 제공이 개시되지 아니한 부분에 대하여는 제외함)</li>
                                  <li style="list-style-type: lower-alpha;">주문에 따라 개별적으로 생산되는 상품 등 그에 대하여 청약철회 등을 인정할 경우 메이커에게 회복할 수 없는 중대한 피해가 예상되는 경우로서, 사전에 해당 거래에 대하여 별도로 그 사실을 고지하고 서포터의 서면(전자문서를 포함)에 의한 동의를 받은 경우</li>
                                  <li style="list-style-type: lower-alpha;">그 밖에 관련 법령에 따른 반품 제한 사유에 해당되는 경우</li>
                                </ol>
                              </li>
                              <li>서포터는 제1항 및 제2항에도 불구하고 상품의 내용이 표시∙광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 상품 등을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 반품 또는 교환을 신청할 수 있습니다.</li>
                              <li>회사는 서포터로부터 반품 또는 교환의 의사표시를 받은 경우에는 즉시 그 사실을 메이커에게 통보합니다.</li>
                              <li>서포터는 제1항 또는 제3항에 따라 교환 신청을 하더라도 메이커에게 교환할 상품의 재고가 없는 경우에는 해당 상품 등의 교환을 받을 수 없습니다. 이 경우 메이커는 서포터의 의향을 확인하여 해당 교환 신청을 반품으로 처리할 수 있습니다.</li>
                              <li>반품이나 교환에 필요한 배송비 및 기타 비용은 귀책사유가 있는 당사자가 부담합니다. 이 경우 상품 등의 하자 또는 오배송으로 인한 반품이나 교환의 경우에는 메이커가 그 비용을 부담하나, 서포터의 단순 변심으로 인한 반품이나 교환의 경우에는 서포터가 그 비용을 부담합니다.</li>
                              <li>메이커는 서포터가 배송상의 문제로 손해를 입은 경우에는 그에 대한 책임을 부담합니다.</li>
                              <li>서포터의 반품 또는 교환 신청을 메이커가 거절할 경우 해당 주문은 구매확정으로 자동 전환됩니다. 반품 및 교환 과정에 분쟁이 발생할 경우 서포터는 메이커와 개별적으로 분쟁을 해결합니다.</li>
                              <li>회사는 메이커가 서포터의 결제완료에 대한 통지를 받은 이후에도 상당 기간 배송 절차 등을 이행하지 아니하여 서포터가 청약철회 등을 하거나 ‘상품 준비 중’ 상태에서 90일 동안 아무런 조치를 취하지 않을 경우, 회사는 직권으로 서포터의 결제를 취소하고 결제대금예치서비스 이용 중인 결제대금을 서포터에게 환불할 수 있습니다.</li>
                              <li>메이커가 서포터의 교환 또는 반품 신청에 대하여 적극적으로 임하지 않거나 이를 지연하는 경우, 회사는 서포터에게 그 교환 또는 반품 신청의 사유를 파악하여 정당한 사유가 있는 경우에는 해당 거래를 취소하는 한편, 예치 중인 결제대금을 서포터에게 환불할 수 있습니다. 다만 서포터의 교환 또는 반품신청에 정당한 사유가 없는 경우에는 그러하지 아니합니다.</li>
                              <li>서포터의 반품 요청 후 7영업일이 경과할 때까지 메이커가 이를 처리하기 위한 아무런 조치를 취하지 않을 경우 서포터의 반품요청은 자동으로 승인되어 8영업일 째에 자동으로 환불처리 됩니다. 카드로 결제가 이루어진 경우 환불은 해당 카드 결제 취소를 통해서만 가능합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제45조 (분쟁조정)</h3>
                            <ol>
                              <li>회사는 서포터와 메이커 간 분쟁이 발생하는 경우에 이를 합리적이고 원활히 조정하기 위한 고객센터를 운영합니다.</li>
                              <li>서포터는 분쟁조정센터의 조정에 신의칙에 입각하여 성실히 응하여야 합니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제46조 (회사의 면책)</h3>
                            <ol>
                              <li>회사는 사이트를 통하여 플랫폼을 제공하는 방식으로 온라인상의 거래를 중개하는 중개자이며 거래의 당사자가 아닙니다. 따라서 회사는 아래 각 호의 사항을 포함하여 본 약정에 따른 서포터와 메이커 간 거래와 관련하여 발생하는 분쟁에 대해 책임을 지지 않습니다. 단, 중개 과정에서 회사의 고의 또는 중대한 과실이 인정되는 경우는 그러지 아니합니다.
                                <ol>
                                  <li style="list-style-type: lower-alpha;">메이커가 프로젝트 페이지에 게재한 정보, 자료, 사실 등의 진실성, 정확성, 신뢰성 및 게시된 자료의 활용으로 인하여 야기되는 일체의 결과</li>
                                  <li style="list-style-type: lower-alpha;">회원 간 및 회원과 제3자간에 서비스를 매개로 발생한 분쟁</li>
                                  <li style="list-style-type: lower-alpha;">메이커가 변경금지사항을 임의로 변경하거나, 변경한 내용을 공지하지 아니한 경우에는 해당 프로젝트의 서포터와의 관계에서 발생할 수 있는 법적 분쟁과 책임 및 불이익</li>
                                </ol>
                              </li>
                              <li>회사는 회사의 고의 또는 과실이 없는 한 아래 각 호의 사항으로부터 발생하는 손해에 대하여 책임을 지지 아니합니다.
                                <ol>
                                  <li style="list-style-type: lower-alpha;">회사가 본 약관 또는 그의 위임을 받은 하위 정책에서 정하는 방식으로 서비스 제공을 제한 또는 중지한 경우</li>
                                  <li style="list-style-type: lower-alpha;">회원이 전자우편 등 개인정보를 부실하게 기재하거나, 본 약관에 따라 입력하여야 하는 정보의 최신화의무를 다하지 아니하여 발생한 손해</li>
                                  <li style="list-style-type: lower-alpha;">서비스에 대한 접속 및 이용과 관련하여 회원의 고의 또는 과실로 인하여 회원 또는 제3자에게 발생한 손해</li>
                                </ol>
                              </li>
                            </ol>
                          
                            <h3 style="font-weight: bold;">제4절 기타사항</h3>
                            <h3 style="font-weight: bold;">제47조 (권리의 귀속 등)</h3>
                            <p>회사가 제공하는 서비스(데이터, 소프트웨어, 게시물의 저작권 등)에 관한 권리는 회사에게 귀속됩니다.</p>
                            <h3 style="font-weight: bold;">제48조 (불가항력에 따른 면책)</h3>
                            <p>회사는 천재지변, 전시·사변 또는 이에 준하는 불가항력이라고 인정되는 사유로 인하여 회원에게 발생하는 손해에 대하여 책임을 지지 아니합니다.</p>
                            <h3 style="font-weight: bold;">제49조 (약관의 적용 등)</h3>
                            <ol>
                              <li>“와디즈스토어 서비스”와 관련하여 본 약관에서 정하지 아니한 사항에 대해서는 회사의 회원가입약관, 운영정책, “개인정보보호법”, “전자상거래 등에서의 소비자보호에 관한 법률”, “정보통신망 이용촉진 및 정보보호 등에 관한 법률” 등 관계법규를 따릅니다. 다만, 관계법규 및 관련약관에 정하는 바가 없으면 일반적인 상관례를 따릅니다.</li>
                              <li>회사와 회원 간에 개별적으로 합의한 사항이 본 약관에서 정한 사항과 다를 때에는 그 합의사항이 본 약관에 우선하여 적용됩니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제50조 (약관의 게시 및 변경)</h3>
                            <ol>
                              <li>회사는 본 약관 또는 운영정책을 변경하고자 하는 경우 변경되는 약관 또는 운영정책의 시행일 7일 전에 변경내용을 회원이 확인할 수 있도록 인터넷 사이트 그 밖에 이와 유사한 전자통신매체를 통하여 게시합니다. 다만, 관계법령의 제·개정에 따른 제도변경 등으로 약관 또는 운영정책이 변경되는 경우 등 본문에 따라 안내하기가 어려운 급박하고 부득이한 사정이 있는 경우에는 변경내용을 앞의 문장과 같은 방법으로 개정 약관 또는 운영정책의 시행일 전에 게시합니다.</li>
                              <li>회사는 제1항의 변경내용이 회원에게 불리한 것일 때에는 이를 전자우편 등 회원과 사전에 합의한 방법으로 변경되는 약관 또는 운영정책의 시행일 1개월 전까지 통지합니다. 다만, 기존 회원에게 변경 전 내용이 그대로 적용되는 경우 또는 회원이 변경내용에 대한 통지를 받지 아니하겠다는 의사를 명시적으로 표시한 경우에는 그러하지 아니합니다.</li>
                              <li>회사는 제2항의 통지를 할 경우 "회원은 약관 또는 운영정책의 변경에 동의하지 아니하는 경우 계약을 해지할 수 있으며, 통지를 받은 날로부터 변경되는 약관 또는 운영정책의 시행일 전의 영업일까지 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다"라는 취지의 내용을 통지합니다.</li>
                              <li>회원이 제3항의 통지를 받은 날로부터 변경되는 약관 또는 운영정책의 시행일 전의 영업일까지 계약해지의 의사표시를 하지 아니하는 경우에는 변경에 동의한 것으로 봅니다.</li>
                              <li>회사는 본 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소, 전화번호, 전자우편주소, 사업자등록번호 등을 회원이 쉽게 확인할 수 있도록 사이트의 초기 서비스 화면에 게시하며 회원이 약관을 확인하고 다운로드(화면출력 포함)받을 수 있도록 합니다. 다만, 약관의 구체적 내용은 회원이 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</li>
                            </ol>
                            <h3 style="font-weight: bold;">제51조 (재판권 및 준거법)</h3>
                            <ol>
                              <li>이 약관의 해석 및 회사와 회원 간의 분쟁에 대하여는 대한민국의 법률을 적용합니다.</li>
                              <li>이 약관 및 서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 발생하여 소송이 제기되는 경우에는 “민사소송법”에 따라 관할법원을 정합니다.</li>
                            </ol>
                          </article>
                          </main>
                        </div>
                        <div class="modalclass_contents_midtwo_one">
                            <div class="modalclass_contents_midtwo_onediv">
                                <label class="modalclass_contents_midtwo_onelabel">
                                    <input type="checkbox" class="modalclass_contents_midtwo_oneinput">
                                    <span class="modalclass_contents_midtwo_onespan"></span>
                                    <span class="modalclass_contents_midtwo_onespanone">
                                        <span>
                                            <div>개인정보 수집 및 이용 동의</div>
                                        </span>

                                    </span>

                                </label>
                            </div>
                                <button class="modalclass_contents_midtwo_onebutton_three">내용보기</button>
                        </div>
                        <div class="modalclass_contents_midtwo_checkboxopen_three" style="display: none;">
                            <main class="modalclass_contents_midtwo_checkboxopen_main">
                                <article class="modalclass_contents_midtwo_checkboxopen_main_artricle">
                            <p>와디즈(주)(이하 “회사")가 제공하는 서비스에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 이용 목적, 보유 및 이용 기간을 안내 드리오니 확인 후 동의하여 주시기 바랍니다.</p>
                          
                            <h2>1. 수집하는 개인정보</h2>
                          
                            <p>회사는 서비스 가입 및 이용 등을 위해 아래와 같은 개인정보를 수집합니다.</p>
                            <dl>
                              <dt style="margin-top: 12px;">공통 회원 서비스</dt>
                              <dd>
                                &lt;필수&gt;<br>
                                이름, 닉네임, ID(이메일 주소 / SNS 연동정보), 비밀번호, 기기 정보(IP, 모바일 광고식별자)<br>
                                &lt;선택&gt;<br>
                                휴대전화 번호, 프로필 사진, 회사 및/ 학교 정보, 관심사
                              </dd>
                          
                              <dt>펀딩하기 서비스(서포터)</dt>
                              <dd>주문자 정보(이름, 이메일 주소, 휴대전화 번호, 본인인증정보(DI)), 리워드 수취인 정보(이름, 휴대전화 번호, 주소)</dd>
                          
                              <dt>펀딩하기 서비스(메이커)</dt>
                              <dd>
                                &lt;개인 메이커&gt;<br>
                                대표자 정보(이름, 이메일 주소, 휴대전화 번호, 본인인증정보(DI))<br>
                                관리자와 대표자가 다른 경우 관리자 정보(이름, 이메일 주소, 휴대전화 번호)<br>
                                정산대금 입금 계좌정보(은행명, 예금주명, 계좌번호), 뒷자리 마스킹된 신분증 사본(생년월일, 주소)<br>
                                &lt;개인사업자 메이커 / 법인사업자 메이커&gt;<br>
                                대표자 정보(이름, 이메일 주소, 휴대전화 번호, 본인인증정보(DI), 생년월일, 사업장 소재지, 성별), 공동대표인 경우 다른 공동대표자 정보(이름, 이메일 주소, 휴대전화 번호)<br>
                                관리자와 대표자가 다른 경우 관리자 정보(이름, 이메일 주소, 휴대전화 번호)<br>
                                정산대금 입금 계좌정보(은행명, 예금주명, 계좌번호)<br>
                              </dd>
                          
                              <dt>구매하기 서비스 (서포터)</dt>
                              <dd>
                                주문자 정보(이름, 이메일 주소, 휴대전화 번호, 본인인증정보(DI)),<br>
                                상품 수취인 정보(이름, 휴대전화 번호, 주소)
                              </dd>
                          
                              <dt>구매하기 서비스(메이커)</dt>
                              <dd>
                                &lt;개인사업자 메이커 / 법인사업자 메이커&gt;<br>
                                대표자 정보(이름, 이메일 주소, 휴대전화 번호, 본인인증정보(DI), 생년월일, 사업장 소재지), 공동대표인 경우 다른 공동대표자 정보(이름, 이메일 주소, 휴대전화 번호)<br>
                                관리자와 대표자가 다른 경우 관리자 정보(이름, 이메일 주소, 휴대전화 번호)<br>
                                정산대금 입금 계좌정보(은행명, 예금주명, 계좌번호)<br>
                                간편결제 등록, 결제 및 결제 예약<br>
                                카드 번호, 카드 유효기간, 카드 비밀번호2자리, 생년월일(또는 사업자등록번호), 간편결제 비밀번호<br>
                                고객센터 상담<br>
                                회원 정보, 서비스 이용 내역
                              </dd>
                          
                              <dt>서포터클럽 멤버십</dt>
                              <dd>휴대전화 번호</dd>
                          
                              <dt>간편결제 등록, 결제 및 결제 예약</dt>
                              <dd>카드 번호, 카드 유효기간, 카드 비밀번호2자리, 생년월일(또는 사업자등록번호), 간편결제 비밀번호</dd>
                          
                              <dt>고객센터 상담</dt>
                              <dd>회원 정보, 서비스 이용 내역</dd>
                            </dl>
                          
                            <h2>2. 개인정보 이용 목적</h2>
                            <ol class="fit">
                              <li>홈페이지 회원관리: 회원제 서비스 이용 등에 따른 본인확인, 개인식별, 불량회원의 부정 이용방지와 비인가 사용방지, 가입의사 확인, 가입 및 가입횟수 제한, 고지사항 전달, 상담처리 등</li>
                              <li>회사가 제공하는 서비스 이용</li>
                              <li>설문조사와 이벤트를 위한 이용</li>
                              <li>컨텐츠 및 회원 맞춤형 서비스 제공, 서비스 구매 및 요금결제, 금융거래 본인인증 및 금융 서비스, 상품 주문에 따른 배송 서비스</li>
                              <li>신규서비스(콘텐츠) 개발 및 특화, 이벤트 등 광고성 정보 전달, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악, 회원의 서비스 이용에 대한 통계</li>
                              <li>금융사고 조사, 기타 법령상 의무이행 등</li>
                            </ol>
                          
                            <h2>3. 개인정보 보유 및 이용 기간</h2>
                            <p>이용자는 회원가입시 개인정보의 수집·이용 및 제공에 대해 동의한 내용은 언제든지 회원탈퇴 등의 방법을 통해 철회하실 수 있습니다. 또한, 수집 및 이용목적이 달성되거나 동의를 얻은 개인정보의 보유·이용 기간이 종료한 경우 지체 없이 파기하는 것을 원칙으로 합니다. 다만, 자본시장과 금융투자업에 관한 법률 등 다른 법률에 따라 개인정보를 보존해야 하는 경우에는 그러하지 아니하며, 귀하가 회원가입 등을 위해 입력하신 정보는 내부 방침 및 기타 관련법령에 따라 일정기간 저장 후 파기될 수 있습니다. 이때 일정기간 저장된 개인정보는 법률에 의한 경우가 아니고서는 동의 받지 아니한 다른 목적으로 이용되지 않습니다.</p>
                          
                            <ol class="fit" style="margin-top: 12px;">
                              <li>회사 내부 방침에 의한 정보보유 사유</li>
                              <dl>
                                <dt>이메일주소, 휴대전화 번호, 광고성정보 수신 동의</dt>
                                <dd>(보존 이유: 불량회원의 부정이용방지와 비인가 사용방지, 서비스 이용의 혼선 방지 및 분쟁 발생 시 감독기관 소명, 보존 기간: 1년)</dd>
                              </dl>
                              <li style="margin-top: 12px;">관계법령에 의한 정보보유 사유</li>
                              <dl class="inline">
                                <dt>표시/광고에 관한 기록</dt>
                                <dd>(전자상거래등에서의 소비자보호에 관한 법률, 보존기간: 6개월)</dd>
                                <dt>계약 또는 청약철회 등에 관한 기록</dt>
                                <dd>(전자상거래등에서의 소비자보호에 관한 법률, 보존기간: 5년)</dd>
                                <dt>대금결제 및 재화 등의 공급에 관한 기록</dt>
                                <dd>(전자상거래등에서의 소비자보호에 관한 법률, 보존기간: 5년)</dd>
                                <dt>소비자의 불만 또는 분쟁처리에 관한 기록</dt>
                                <dd>(전자상거래등에서의 소비자보호에 관한 법률, 보존기간: 3년)</dd>
                                <dt>웹 사이트 방문에 관한 기록</dt>
                                <dd>(통신기밀보호법, 보존기간: 3개월)</dd>
                              </dl>
                            </ol>
                          
                            <h2>4. 장기 미이용 회원 개인정보 분리 보관</h2>
                            <ol class="fit">
                              <li>관련 법령에 의거하여 장기 미이용 회원의 계정을 휴면 상태로 전환하고 개인정보를 암호화하여 분리 보관합니다. (관련 법령: 개인정보보호법제39조의6 및 동법 시행령 제48조의5, 휴면 회원: 서비스를 1년이상 이용하지 않음에 따라 휴면 상태로 전환된 회원)</li>
                              <li>펀딩에 참여하여 와디즈의 서비스를 제공받고 있는 중인 회원의 권익보호를 위하여 휴면 상태로 전환되지 않습니다.</li>
                              <li>휴면 상태 전환 30일 전까지 휴면 예정 회원에게 휴면 전환 예정일, 별도 분리 보관되는 사실 및 개인정보 항목이 이메일을 통해 사전 안내됩니다. 해당 통지 수단에 대한 정보가 부재 또는 오류인 경우에는 홈페이지 공지사항 게시로 대체됩니다.</li>
                              <li>휴면 예정 회원이 사전 안내된 휴면 전환 예정일 이전에 로그인 하시는 경우에는 휴면 상태로 전환되지 않고 기존과 같이 서비스를 이용하실 수 있습니다.</li>
                              <li>휴면 상태로 전환된 사실은 메일을 통해 휴면 회원에게 안내됩니다.</li>
                              <li>휴면 회원은 사용했던 계정으로 로그인하여 서비스를 재이용함으로써 일반회원으로 전환될 수 있습니다.</li>
                              <li>휴면 회원의 개인정보는 4년간 별도 분리 보관 후 삭제됩니다.</li>
                            </ol>
                          </article>
                        </main>
                    </div>
                    </div>
                    <div class="modalclass_contents_midone">
                        <div>
                            <label class="modalclass_contents_midone_one">
                            <input type="checkbox" class="modalclass_contents_midone_one_ckeckbox" name="terms">
                            <span>
                                <div class="modalclass_contents_midone_one_one">펀딩 · 스토어 · 회원 이벤트 혜택 알림
                                    <span class="modalclass_contents_midone_one_one_one">(선택)</span>


                                </div>
                            </span>
                        </label>
                        <em class="HelperMessage_helperMessage__1n6rg Checkbox_message__36m3d Checkbox_sm__3-W4Q">펀딩·스토어·회원 서비스, 이벤트·할인 혜택 등에 대한 정보를 이메일, 앱 알림(앱 회원가입 시)로 받아볼 수 있습니다. (동의 철회 시까지)
                        </em>
                        </div>
                    </div>
                   
            <button class="modalclass_del">완료</button>
            
    </div>
      </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>var contextPath="${pageContext.request.contextPath}";</script>
<script src="${pageContext.request.contextPath}/assets/js/user/join.js"></script>

</script>
</html>