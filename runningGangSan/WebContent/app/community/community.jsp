<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/community/community.css">
</head>
<body>
<%
       String userId = (String)session.getAttribute("userId");
	   int userNumberss = Integer.valueOf(String.valueOf(session.getAttribute("userNumber")));
	   /* int userNumber=3; */
	   System.out.println("userNumber:"+userNumberss);
       boolean loginOk = userId == null ? false : true;
       if(loginOk){ %>
       <jsp:include page = '${pageContext.request.contextPath}/app/fix/header_MainLogin.jsp'/>
   <% }else{ %>
      <jsp:include page = '${pageContext.request.contextPath}/app/fix/header.jsp'/>
   <% } %>
	<main>
<script></script>
		<div id="page">
			<div id="app-container">
				<div id="app-content">
					<div id="contents">
						<div id="tab-container">
							<div class="tab-button">
								<button>전체</button>
							</div>
							<div class="tab-button">
								<button>내팔로워</button>
							</div>
							<div class="tab-button">
								<button>내팔로잉</button>
							</div>
							<!-- <div class="tab-button">
								<button>찐팬PICK</button>
							</div> -->
						</div>

						
						<div id="friends-container">
							<div
								style="line-height: 28px; letter-spacing: -.3px; font-size: 16px; font-weight: 700; font-style: normal; line-height: 24px; display: flex; flex-direction: row;">김인영님,
								친구들의 활동을 확인해 보세요</div>
							<ul class="RecommendationSupporterList_supporterList__3EqDx">
								<li class="RecommendationSupporterList_desktop__1Rxu9">
									<div
										class="RecommendationSupporterCard_recommendationSupporterCard__GEL-b">
										<a href="/web/wmypage/myprofile/fundinglist/9425777517">
											<div
												class="RecommendationSupporterCard_profileImageWrapper__1RmXG">
												<span
													class="Avatar_container__3ynJF RecommendationSupporterCard_profileImage__1Y1-s"
													style="width: 56px; height: 56px; background-image: -webkit-image-set(url(&quot;https://static.wadiz.kr/assets/icon/profile-icon-5.png&quot;) 1x, url(&quot;https://static.wadiz.kr/assets/icon/profile-icon-5.png&quot;) 2x);">
												</span>
											</div>
											<div class="RecommendationSupporterCard_infoWrapper__3zBPj">
												<dl>
													<div>
														<dt class="BlindText_textHidden__1jxbp">서포터이름</dt>
														<dd class="RecommendationSupporterCard_nickName__DpPaW">허강산</dd>
													</div>
													<div>
														<dt></dt>
														<dd>
															<b></b>
														</dd>
													</div>
													<div>
														<dt>팔로워</dt>
														<dd>
															<b>0</b>
														</dd>
													</div>
												</dl>
											</div>
										</a>
										<button
											class="Button_button__mRXZC Button_primary__1HJqX Button_xs__2zuKd Button_startIcon__SRdP5 Button_block__1LAUA SupporterFollowingButton_followingButton__6GRdi RecommendationSupporterCard_followingButton__342zZ"
											type="button">
											<span> <svg viewBox="0 0 32 32" focusable="false"
													role="presentation"
													class="withIcon_icon__20lDO Button_icon__1JHRV SupporterFollowingButton_icon__1j7ZA"
													aria-hidden="true" style="width: 12px; height: 12px;">
                                                    <path
														d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z">
                                                    </path>
                                                </svg> <span
												class="Button_children__3HY2l">팔로우</span>
											</span>
										</button>
									</div>
								</li>
								<li class="RecommendationSupporterList_desktop__1Rxu9">
									<div
										class="RecommendationSupporterCard_recommendationSupporterCard__GEL-b">
										<a href="/web/wmypage/myprofile/fundinglist/9713716218">
											<div
												class="RecommendationSupporterCard_profileImageWrapper__1RmXG">
												<span
													class="Avatar_container__3ynJF RecommendationSupporterCard_profileImage__1Y1-s"
													style="width: 56px; height: 56px; background-image: -webkit-image-set(url(&quot;https://static.wadiz.kr/assets/icon/profile-icon-2.png&quot;) 1x, url(&quot;https://static.wadiz.kr/assets/icon/profile-icon-2.png&quot;) 2x);"></span>
												<div
													class="RecommendationSupporterCard_supporterClubBadge__2Wheh"
													aria-label="서포터클럽 회원"></div>
											</div>
											<div class="RecommendationSupporterCard_infoWrapper__3zBPj">
												<dl>
													<div>
														<dt class="BlindText_textHidden__1jxbp">서포터이름</dt>
														<dd class="RecommendationSupporterCard_nickName__DpPaW">양미경</dd>
													</div>
													<div>
														<dt></dt>
														<dd>
															<b></b>
														</dd>
													</div>
													<div>
														<dt>팔로워</dt>
														<dd>
															<b>0</b>
														</dd>
													</div>
												</dl>
											</div>
										</a>
										<button
											class="Button_button__mRXZC Button_primary__1HJqX Button_xs__2zuKd Button_startIcon__SRdP5 Button_block__1LAUA SupporterFollowingButton_followingButton__6GRdi RecommendationSupporterCard_followingButton__342zZ"
											type="button">
											<span><svg viewBox="0 0 32 32" focusable="false"
													role="presentation"
													class="withIcon_icon__20lDO Button_icon__1JHRV SupporterFollowingButton_icon__1j7ZA"
													aria-hidden="true" style="width: 12px; height: 12px;">
                                                    <path
														d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z">
                                                    </path>
                                                </svg><span
												class="Button_children__3HY2l">팔로우</span></span>
										</button>
									</div>
								</li>
								<li class="RecommendationSupporterList_desktop__1Rxu9">
									<div
										class="RecommendationSupporterCard_recommendationSupporterCard__GEL-b">
										<a href="/web/wmypage/myprofile/fundinglist/7915919117">
											<div
												class="RecommendationSupporterCard_profileImageWrapper__1RmXG">
												<span
													class="Avatar_container__3ynJF RecommendationSupporterCard_profileImage__1Y1-s"
													style="width: 56px; height: 56px; background-image: -webkit-image-set(url(&quot;https://static.wadiz.kr/assets/icon/profile-icon-2.png&quot;) 1x, url(&quot;https://static.wadiz.kr/assets/icon/profile-icon-2.png&quot;) 2x);"></span>
											</div>
											<div class="RecommendationSupporterCard_infoWrapper__3zBPj">
												<dl>
													<div>
														<dt class="BlindText_textHidden__1jxbp">서포터이름</dt>
														<dd class="RecommendationSupporterCard_nickName__DpPaW">권설민</dd>
													</div>
													<div>
														<dt></dt>
														<dd>
															<b></b>
														</dd>
													</div>
													<div>
														<dt>팔로워</dt>
														<dd>
															<b>4</b>
														</dd>
													</div>
												</dl>
											</div>
										</a>
										<button
											class="Button_button__mRXZC Button_primary__1HJqX Button_xs__2zuKd Button_startIcon__SRdP5 Button_block__1LAUA SupporterFollowingButton_followingButton__6GRdi RecommendationSupporterCard_followingButton__342zZ"
											type="button">
											<span><svg viewBox="0 0 32 32" focusable="false"
													role="presentation"
													class="withIcon_icon__20lDO Button_icon__1JHRV SupporterFollowingButton_icon__1j7ZA"
													aria-hidden="true" style="width: 12px; height: 12px;">
                                                    <path
														d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z">
                                                    </path>
                                                </svg><span
												class="Button_children__3HY2l">팔로우</span></span>
										</button>
									</div>
								</li>
							</ul>
							
						</div>
                           <!-- 글 작성 div -->
                        <jsp:include page="${pageContext.request.contextPath}/app/community/community_writepart.jsp"/>
						<div class="FeedCardList_container__13rc1">
						 <div class="FeedCardList_list__2yOEy" aria-label="피드 리스트">
                           <div class="FeedCard_divider__3V9EP"></div>
                        </div>
						<!-- 게시글 작성 부분 시작 -->
							
									<!-- 추가되는 부분 -->
						</div>
									
									
									
								</div>
								</div>
								<div></div>
							</div>
						</div>

					</div id="contents">

				</div>
			</div>

		</div>
	</main>
	<div class="ReactModalPortal">
		<div
			class="ReactModal__Overlay ReactModal__Overlay--after-open ConfirmModal_overlay__2vouq waffle__modal__overlay"
			style="background-color: rgba(0, 0, 0, 0.3);">
			<div
				class="ReactModal__Content ReactModal__Content--after-open ConfirmModal_confirmModal__2-l3c ConfirmModal_sizeSm__1n8FQ"
				tabindex="-1" role="dialog" aria-modal="true">
				<div class="ConfirmModal_header__2yOEU">
					<button class="ConfirmModal_closeIconWrapper__2-lWO">
						<svg viewBox="0 0 40 40" focusable="false" role="presentation"
							class="withIcon_icon__34s31 ConfirmModal_closeIcon__3DABU"
							aria-hidden="true">
                            <path
								d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z">
                            </path>
                        </svg>
					</button>
				</div>
				<div title="신고하기" class="ConfirmModal_title__2I2A3">신고하기</div>
				<div
					class="ConfirmModal_content__nIMXh ConfirmModal_hasTitle__2YXj0">
					<div class="ReportInfoModal_modalContainer__2478m">
						<p class="ReportInfoModal_message__1B5M3">
							<span><svg viewBox="0 0 32 32" focusable="false"
									role="presentation"
									class="withIcon_icon__20lDO ReportInfoModal_mailOIcon__2DVsC"
									aria-hidden="true">
                                    <path
										d="M1.6 5.6v20.8h28.8V5.6zm26.88 1.6L16 17.84 3.52 7.2zm.32 17.6H3.2V9.04L16 19.92 28.8 9.04z">
                                    </path>
                                </svg>admin@admin.co.kr</span>
						</p>
						<p class="ReportInfoModal_message__1B5M3">이 계정을 신고하는 이유를 이메일로
							보내주세요.</p>
						<p class="ReportInfoModal_example__QiCuc">
							<span>예)</span>타인을 모욕, 명예훼손하는 내용이 있어요.<br>개인정보를 침해하는 내용이
							있어요.<br>차별, 음란, 범죄, 욕설 등 부적절한 내용이 있어요.
						</p>
						<h5>아래 신고 접수 사항을 반드시 적어주세요.</h5>
						<ol>
							<li><span>1. 신고인 아이디 <var>(필수)</var></span></li>
							<li><span>2. 게시물 작성자 아이디 <var>(필수)</var></span></li>
							<li><span>3. 제목 또는 URL <var>(필수)</var></span></li>
						</ol>
						<p class="ReportInfoModal_message__1B5M3">※신고인의 정보 및 신고 내용은
							안전하게 보호되며 외부에 제공되지 않습니다.</p>
<!-- 						<a target="_blank" href="/web/wterms/community"
							class="Button_button__mRXZC ReportInfoModal_button__2znb1"><span><span
								class="Button_children__3HY2l">커뮤니티 정책 보기<svg
										viewBox="0 0 40 40" focusable="false" role="presentation"
										class="withIcon_icon__20lDO ReportInfoModal_openLinkIcon__1OXNo"
										aria-hidden="true">
                                        <path
											d="M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z"></path>
                                        <path
											d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z">
                                        </path>
                                    </svg></span></span></a> -->
					</div>
				</div>
				<div class="ConfirmModal_footer__3cVb6">
					<div class="ConfirmModal_buttonGroup__un3r5">
						<button
							class="Button_button__mRXZC Button_tertiaryGrey__3jfPY Button_contained__k9pMW Button_lg__22YWj ConfirmModal_negativeButton__2KirX"
							type="button">
							<span><span class="Button_children__3HY2l">닫기</span></span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/community/community.js"></script>
<script>let userNumber = "${sessionScope.userNumber}"</script>
<script>var $context = "${pageContext.request.contextPath}"</script>
<script>var $requestURL = "${pageContext.request.requestURL}"</script>
<script>var $requestURI = "${pageContext.request.requestURI}"</script>
<script>
let postContentContains=true;
let commentContentContains=true;
//문서가 로드될때 실행되는 함수(Render Tree 생성)
/* window.onload=function(){ */
/* console.log("context:"+$context);
console.log("requestURL:"+$requestURL);
console.log("requestURI:"+$requestURI);
console.log("location.pathname:"+location.pathname); */

//ajax를 통해 동적으로 추가되는 요소들의 기준점이 되는 부모요소(statictag)
$parentposition=$(".FeedCardList_container__13rc1");

//댓글의 여닫기의 flag변수
var checks = -1;

//ajax를 통해 동적으로 추가되는 요소의 이벤트 위임(dynamictag,댓글 여닫는 기능)
$parentposition.on("click","a.replyShow", function(e){
   e.preventDefault();
   checks *= -1;
   console.log(this);
   $(this).text(checks > 0 ? "댓글 닫기 ▲" : "댓글 보기 ▼");
   $(this).nextAll().slideToggle();
});

//ajax를 통해 동적으로 추가되는 요소의 이벤트 위임(dynamictag,댓글 입력여부 유효성 검사)
$parentposition.on("click",".replyEnter",function(){
    if($(this).prev().val().length==0){
        console.log($(this).next());
        $(this).parent().next().attr('class','replyAlarmOn');
    } else{
        $(this).parent().next().attr('class','replyAlarmOff');
    }
});

//기본으로 띄워줄 5개의 게시글
const Outputindex=5;
var Increment=0;

//부모요소에 추가하여 붙이기 위해 변수 선언
var textinit="";

//스크롤 이벤트시 추가로 붙이기 위해 변수 선언
var text="";

showDefault();
//기본으로 
function showDefault(){
	console.log(Outputindex);
	console.log(Increment);
	$parentposition.replaceAll("");
	$.ajax({
		url:"${pageContext.request.contextPath}/meommi/Postlist.po",
		type:"get",
		contentType:"text/html; charset=utf-8",
		data:{Outputindex:Outputindex+Increment},
		dataType:"json",
		success:function(resultpost){
			$.ajax({
				url:"${pageContext.request.contextPath}/meommi/Commentlist.co",
				type:"get",
				contentType:"text/html; charset=utf-8",
				data:{Outputindex:Outputindex+Increment},
				dataType:"json",
				success:function(resultcomment){
					$.ajax({
						url:"${pageContext.request.contextPath}/meommi/PostFile.pf",
						type:"post",
						contentType:"text/html; charset=utf-8",
						data:{Outputindex:Outputindex+Increment},
						dataType:"json",
						success:function(resultfile){
							//파일 비교 후 추가하기
							showDefaultList(resultpost,resultcomment,resultfile);
						}//ajax(success:file)
					});//ajax(file)
				}//ajax(success:comment)
			});//ajax(comment)
		}//ajax(success:post)
	});//ajax(post)
}

function showDefaultList(resultpost,resultcomment,resultfile){
	
	resultpost.forEach(post=>{
		console.log("userNumber:"+userNumber+"|"+"post.userNumber:"+post.userNumber);
		textinit+=`<div class="FeedCard_container__2vyLX">
		<section class="FeedCard_header__3R2hC">
		<a href="/web/wmypage/myprofile/fundinglist/1152357015"
		        class="FeedCard_leftPanel__wkbbV">
		        <div class="FeedCard_leftPanel__wkbbV">
		        <span class="Avatar_container__3ynJF FeedCard_avatar__M0EvN"
		                style="width: 32px; height: 32px; background-image: -webkit-image-set(url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/sns_profile_pics/20180912120628616_38897851.jpg/wadiz/format/jpg/quality/80/optimize/wadiz/resize/32/quality/85/&quot;) 1x, url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/sns_profile_pics/20180912120628616_38897851.jpg/wadiz/format/jpg/quality/80/optimize/wadiz/resize/64/quality/85/&quot;) 2x);"></span>
		                <div class="FeedCard_headerContent__37gxQ">
		                <div class="FeedCard_nickNameWrap__3dGXP">`;
		                textinit+=`<p class="FeedCard_nickName__3vNYO">`+post.userId+`</p>`;
		                textinit+=`<div class="FeedCard_supporterClub__7EgiL"></div>
		                </div>
		                	
		            	</div>
		        	</div>
		    </a>

		</section>
		<div class="FeedCard_reviewImage__3HK8Q">
		    <div class="FeedCard_imageWrap__hiMPd">
		        <div class="FeedCard_image__2-Puq">`;
		        /* 사진 추가 부분 */
		        
		        resultfile.forEach(file=>{
		        	if(post.postNumber==file.postNumber && file.postFileSystemName!=null){
		        		textinit+=`<div class="FeedCard_thumbnail__22k7x"><img class="contentimage" src="../../upload/`+file.postFileOriginName+`"/>`+`</div>`;
		        		console.log("post.postNumber:"+post.postNumber+"|"+"file.postNumber:"+file.postNumber);
			        	/* textinit+=`<span class="FeedCard_thumbnail__22k7x" style="background-image:url(`+${pageContext.request.contextPath}+`/upload/`+file.postFileOriginName+`)"> </span>`; */
			            /* <div class="FeedCard_thumbnail__22k7x"
			                style="background-image: -webkit-image-set(url(&quot;https://cdn2.wadiz.kr/2022/10/01/b1845cd7-8c9b-4184-8f32-2475eace29b5.jpg/wadiz/resize/520/quality/85/&quot;) 1x, url(&quot;https://cdn2.wadiz.kr/2022/10/01/b1845cd7-8c9b-4184-8f32-2475eace29b5.jpg/wadiz/resize/1040/quality/85/&quot;) 2x);">
			            </div> */
		        	}
		        });
		        textinit+=`</div>
		    </div>
		</div>
		<section class="FeedCard_content__2ato7">
		    <p class="FeedCard_comment__3PXr8 FeedCard_ellipsis2__uNpJo">`+post.postContent+`</p>`;
		    /* textinit+=`<p class="FeedCard_showMore__1IK43">더보기</p>`; */
		    textinit+=`<span class="FeedCard_date__nQ9NI">`+post.postDateTime+`</span>`;
        	
		    textinit+=`</section>
		<a href="/web/store/detail/1921?_refer_section_st=feed_3"
		    class="FeedCard_footer__2JOxv" data-ec-list="피드"
		    data-ec-id="1921"
		    data-ec-name="쇼파의 푹신함을 캠핑장으로! 멍때리기 좋은 리베로 폴딩체어"
		    data-ec-price="98000" data-ec-category="여행·스포츠"
		    data-ec-brand="태산레져" data-ec-usertype="SUPPORTER"
		    data-ec-feedtype="SATISFACTION" data-ec-contenttype="store">
		 </a>`;
		 if(post.userNumber==userNumber){
		 	textinit+=`<div class="postContents" name="postContents" data-index="0">`;
            textinit+=`<span class="postContentReadyModifyWrap" data-number=`+post.postNumber+`><div class="postContentReadyModify"></div></span>`;
            textinit+=`<span class="postContentModifyWrap" style="display:none;" data-number=`+post.postNumber+`><div class="postContentModify"></div></span>`;
            textinit+=`<span class="postContentDeleteWrap" data-number=`+post.postNumber+`><div class="postContentDelete"></div></span>`;
            textinit+=`<span class="postContentCancelWrap" style="display:none;" data-number=`+post.postNumber+`><div class="postContentCancel"></div></span>`;
        	textinit+=`</div>`;
		 }
		    textinit+=`<div class="replyWrap">
		        <a href="replyContents" class="replyShow">댓글 보기 ▼</a>`;
		        resultcomment.forEach(comment=>{
		        	if(comment.postNumber==post.postNumber){console.log("comment.postNumber:"+comment.postNumber);
		        		textinit+=`<div class="replyContents" name="replyContents" style="display:none;" data-index="0">
		        			<span class="replyIdWrap"><div class="replyId">`+comment.userId+`</div></span>`;
		        			textinit+=`<span class="replyCommentWrap"><div class="replyComment">`+comment.commentsContent+`</div></span>`;
		        			textinit+=`<span>`+comment.commentsDatetime+`</span>`;
		        			if(comment.userNumber==userNumber){
			        			textinit+=`<span class="replyCommentModifyReadyWrap" data-number=`+comment.commentsNumber+`><div class="replyCommentReadyModify"></div></span>`;
			        			textinit+=`<span class="replyCommentModifyWrap" style="display:none;" data-number=`+comment.commentsNumber+`><div class="replyCommentModify"></div></span>`;
			        			textinit+=`<span class="replyCommentDeleteWrap" data-number=`+comment.commentsNumber+`><div class="replyCommentDelete"></div></span>`;
			        			textinit+=`<span class="replyCommentCancelWrap" style="display:none;" data-number=`+comment.commentsNumber+`><div class="replyCommentCancel"></div></span>`;
							}
			        	textinit+=`</div>`;
		        	}
		        });
		        textinit+=`</div>

		    <div class="replyWritingWrap">
		        <form class="replyWriting" name="replyForm">
		        <textarea name="realReply" class="realReply" placeholder="바르고 예쁜 말을 사용해주세요." cols="30" rows="10" onkeydown="resize(this)" onkeyup="resize(this)"></textarea>
		            <button type="button" class="replyEnter" data-number=`+post.postNumber+`>입력</button>
		        </form>
		        <p class="replyAlarmOff replyCheck">작성하신 댓글이 없습니다.</p>
		    </div>
		<div class="FeedCard_divider__3V9EP"></div>
	</div>`;
	$('.FeedCardList_container__13rc1').html(textinit);
	});
}

function showScrollDown(){
	console.log(Outputindex);
	console.log(Increment);
	Increment+=1;
	text="";
	console.log("스크롤 다운 들어옴");
	$.ajax({
		url:"${pageContext.request.contextPath}/meommi/PostlistOk.po",
		type:"get",
		data:{Increment:Outputindex+Increment-1},
		contentType:"text/html; charset=utf-8",
		dataType:"json",
		success:function(resultpost){
			$.ajax({
				url:"${pageContext.request.contextPath}/meommi/CommentlistOk.co",
				type:"get",
				data:{Increment:Outputindex+Increment-1},
				contentType:"text/html; charset=utf-8",
				dataType:"json",
				success:function(resultcomment){
					$.ajax({
						url:"${pageContext.request.contextPath}/meommi/PostFileOk.pf",
						type:"get",
						data:{Increment:Outputindex+Increment-1},
						contentType:"text/html; charset=utf-8",
						dataType:"json",
						success:function(resultfile){
								console.log(resultpost);
								console.log(resultcomment);
								console.log(resultfile);
							resultpost.forEach(post=>{
							text+=`<div class="FeedCard_container__2vyLX">
								<section class="FeedCard_header__3R2hC">
								<a href="/web/wmypage/myprofile/fundinglist/1152357015"
								        class="FeedCard_leftPanel__wkbbV">
								        <div class="FeedCard_leftPanel__wkbbV">
								        <span class="Avatar_container__3ynJF FeedCard_avatar__M0EvN"
								                style="width: 32px; height: 32px; background-image: -webkit-image-set(url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/sns_profile_pics/20180912120628616_38897851.jpg/wadiz/format/jpg/quality/80/optimize/wadiz/resize/32/quality/85/&quot;) 1x, url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/sns_profile_pics/20180912120628616_38897851.jpg/wadiz/format/jpg/quality/80/optimize/wadiz/resize/64/quality/85/&quot;) 2x);"></span>
								                <div class="FeedCard_headerContent__37gxQ">
								                <div class="FeedCard_nickNameWrap__3dGXP">`;
								                text+=`<p class="FeedCard_nickName__3vNYO">`+post.userId+`</p>`;
								                text+=`<div class="FeedCard_supporterClub__7EgiL"></div>
								                	</div>
								                
								            </div>
								        </div>
								    </a>
								    <div class="FeedCard_rightPanel__3MoD7">
								        <button
								            class="Button_button__mRXZC Button_primary__1HJqX Button_sm__1aKYg Button_startIcon__SRdP5 SupporterFollowingButton_followingButton__6GRdi FeedCard_followingButton__3oUdS"
								            type="button">
								            <span><svg viewBox="0 0 32 32" focusable="false"
								                    role="presentation"
								                    class="withIcon_icon__20lDO Button_icon__1JHRV SupporterFollowingButton_icon__1j7ZA"
								                    aria-hidden="true" style="width: 12px; height: 12px;">
								                    <path
								                        d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z">
								                    </path>
								                </svg><span
								                class="Button_children__3HY2l">팔로우</span></span>
								        </button>
								        <button class="FeedCard_moreWrap__1AsqH"
								            aria-label="피드 신고, 차단">
								            <svg viewBox="0 0 40 40" focusable="false"
								                role="presentation"
								                class="withIcon_icon__20lDO FeedCard_more__3VATZ"
								                aria-hidden="true">
								                <path
								                    d="M24.52 5A4.52 4.52 0 1020 9.57 4.53 4.53 0 0024.52 5zm0 30A4.52 4.52 0 1020 39.48 4.53 4.53 0 0024.52 35zm0-15A4.52 4.52 0 1020 24.52 4.53 4.53 0 0024.52 20z">
								                </path>
								            </svg>
								        </button>
								        <div class="modal">
								            <div class="modal_content">
								                <button class="report">신고하기</button>
								                <button class="close">닫기</button>
								            </div>
								        </div>
								    </div>

								</section>
								<div class="FeedCard_reviewImage__3HK8Q">
								    <div class="FeedCard_imageWrap__hiMPd">
								        <div class="FeedCard_image__2-Puq">`;
								        /* 사진 추가 부분 */
								        
								        resultfile.forEach(file=>{
								        	/* console.log("file.postNumber:"+file.postNumber);
								        	console.log("post.postNumber:"+post.postNumber); */
								        	if(post.postNumber==file.postNumber && file.postFileSystemName!=null){
								        		console.log("post.postNumber:"+post.postNumber+"|"+"file.postNumber:"+file.postNumber);
								        		text+=`<div class="FeedCard_thumbnail__22k7x"><img class="contentimage" src="../../upload/`+file.postFileOriginName+`"/>`+`</div>`;
									            /* <div class="FeedCard_thumbnail__22k7x"
									                style="background-image: -webkit-image-set(url(&quot;https://cdn2.wadiz.kr/2022/10/01/b1845cd7-8c9b-4184-8f32-2475eace29b5.jpg/wadiz/resize/520/quality/85/&quot;) 1x, url(&quot;https://cdn2.wadiz.kr/2022/10/01/b1845cd7-8c9b-4184-8f32-2475eace29b5.jpg/wadiz/resize/1040/quality/85/&quot;) 2x);">
									            </div> */
								        	}
								        });
								        text+=`</div>
								    </div>
								</div>
								<section class="FeedCard_content__2ato7">
								    <p class="FeedCard_comment__3PXr8 FeedCard_ellipsis2__uNpJo">`+post.postContent+`</p>`;
								    /* text+=`<p class="FeedCard_showMore__1IK43">더보기</p>`; */
								    text+=`<span class="FeedCard_date__nQ9NI">`+post.postDateTime+`</span>`;    
								text+=`</section>
								<a href="/web/store/detail/1921?_refer_section_st=feed_3"
								    class="FeedCard_footer__2JOxv" data-ec-list="피드"
								    data-ec-id="1921"
								    data-ec-name="쇼파의 푹신함을 캠핑장으로! 멍때리기 좋은 리베로 폴딩체어"
								    data-ec-price="98000" data-ec-category="여행·스포츠"
								    data-ec-brand="태산레져" data-ec-usertype="SUPPORTER"
								    data-ec-feedtype="SATISFACTION" data-ec-contenttype="store">
								 </a>`;
								 if(post.userNumber==userNumber){
								 	text+=`<div class="postContents" name="postContents" data-index="0">`;
						            text+=`<span class="postContentReadyModifyWrap" data-number=`+post.postNumber+`><div class="postContentReadyModify"></div></span>`;
						            text+=`<span class="postContentModifyWrap" style="display:none;" data-number=`+post.postNumber+`><div class="postContentModify"></div></span>`;
						            text+=`<span class="postContentDeleteWrap" data-number=`+post.postNumber+`><div class="postContentDelete"></div></span>`;
						            text+=`<span class="postContentCancelWrap" style="display:none;" data-number=`+post.postNumber+`><div class="postContentCancel"></div></span>`;
						        	text+=`</div>`;
								 }
								    text+=`<div class="replyWrap">
								        <a href="replyContents" class="replyShow">댓글 보기 ▼</a>`;
								        resultcomment.forEach(comment=>{
								        	if(comment.postNumber==post.postNumber){console.log("comment.postNumber:"+comment.postNumber);
    									        text+=`<div class="replyContents" name="replyContents" style="display:none;" data-index="0">
    									            <span class="replyIdWrap"><div class="replyId">`+comment.userId+`</div></span>`;
    									            text+=`<span class="replyCommentWrap"><div class="replyComment">`+comment.commentsContent+`</div></span>`;
    									            text+=`<span>`+comment.commentsDatetime+`</span>`;
    									            if(comment.userNumber==userNumber){console.log("correct!");
	    									            text+=`<span class="replyCommentModifyReadyWrap" data-number=`+comment.commentsNumber+`><div class="replyCommentReadyModify"></div></span>`;
	    									            text+=`<span class="replyCommentModifyWrap" style="display:none;" data-number=`+comment.commentsNumber+`><div class="replyCommentModify"></div></span>`;
	    									            text+=`<span class="replyCommentDeleteWrap" data-number=`+comment.commentsNumber+`><div class="replyCommentDelete"></div></span>`;
	    									            text+=`<span class="replyCommentCancelWrap" style="display:none;" data-number=`+comment.commentsNumber+`><div class="replyCommentCancel"></div></span>`;
    									            }
    									        text+=`</div>`;
								        	}
								        });
								    text+=`</div>

								    <div class="replyWritingWrap">
								        <form class="replyWriting" name="replyForm">
								        <textarea name="realReply" class="realReply" placeholder="바르고 예쁜 말을 사용해주세요." cols="30" rows="10" onkeydown="resize(this)" onkeyup="resize(this)"></textarea>
								            <button type="button" class="replyEnter" data-number=`+post.postNumber+`>입력</button>
								        </form>
								        <p class="replyAlarmOff replyCheck">작성하신 댓글이 없습니다.</p>
								    </div>
								<div class="FeedCard_divider__3V9EP"></div>
							</div>`;
							$('.FeedCardList_container__13rc1').append(text);
							
							});
						}//success(fileOk)
					});//ajax(fileOk)
				}//success(commentOk)
			});//ajax(commentOk)
		}//success(postOk)
	});//ajax(postOk)
}
//무한 스크롤
window.onscroll = function(e) {
	/* console.log(window.innerHeight , window.scrollY,document.body.offsetHeight); */
    if((window.innerHeight + window.scrollY) >= document.body.offsetHeight-5) { 
      setTimeout(function(){
        /* var addContent = "<div class='FeedCard_container__2vyLX'>" + "김인영..." + "</div>";
        $('.FeedCardList_container__13rc1').append(infiniteScrollTemplate); */
        showScrollDown();
		}, 500);
	}
}
  /* ===============댓글 추가 부분=================== */
let replytext="";
$parentposition.on("input change keyup",".replyWriting textarea",function(){
	replytext=this.value;
});

$parentposition.on("click",".replyEnter",function(){
	//댓글 입력여부 유효성 검사
	if(!replytext){
		alert('댓글을 입력해주세요.');
		return;
	}
	replytext=replytext.replace(/\</g,'&lt;');
	replytext=replytext.replace(/\>/g,'&gt;');
	
	//
	$.ajax({
		url:"${pageContext.request.contextPath}/meommi/CommentRegistration.co",
		type:"get",
		data:{content:replytext,postNumber:$(this).data("number")},
		success:function(){
			console.log("comment reply enter success");
			text="";
 			textinit="";
			showDefault();
		}
	});
	
	//댓글 입력 후 입력 값을 초기화 시켜주는 부분
	$(".replyWriting textarea").val("");
});
/* =====================댓글 수정 준비 버튼=================== */
$parentposition.on("click","span.replyCommentModifyReadyWrap",function(){
	if(!commentContentContains){
		alert('수정중인 댓글이 있습니다.');
		return;
	}
	commentContentContains=false;
	const buttonWrap=$(this).closest("div.replyContents");
	const buttons=buttonWrap.children();
	const content=buttons.eq(1);
	
	buttons.eq(3).hide();
	buttons.eq(4).show();
	buttons.eq(5).hide();
	buttons.eq(6).show();
	
	content.replaceWith("<textarea>"+content.text()+"</textarea>");
});
/* ==============댓글 수정 취소 버튼============= */
$parentposition.on("click","span.replyCommentCancelWrap",function(){
	const buttonWrap=$(this).closest("div.replyContents");
	const buttons=buttonWrap.children();
	const content=buttons.eq(1);
	
	buttons.eq(3).show();
	buttons.eq(4).hide();
	buttons.eq(5).show();
	buttons.eq(6).hide();
	
	content.replaceWith("<pre>"+content.text()+"</pre>");
	commentContentContains=true;
});
/* ==============댓글 수정 버튼============= */
$parentposition.on("click","span.replyCommentModifyWrap",function(){
	const buttonWrap=$(this).closest("div.replyContents");
	const commentContent=buttonWrap.children().eq(1);
	const commentNumber=$(this).data("number");
	
	var modifyComment=commentContent.val().replace(/\</g,'&lt;');
	modifyComment=modifyComment.replace(/\>/g,'&gt;');
	if(!modifyComment){
		alert('댓글을 입력해주세요.');
		return;
	}
	$.ajax({
		url:"${pageContext.request.contextPath}/meommi/CommentRetouch.co",
		type:"get",
		data:{commentContent:modifyComment,commentNumber:commentNumber},
		success:function(){
			console.log("comment modify success");
			postContentContains=true;
			text="";
 			textinit="";
			showDefault();
		}
	});
	
});
/* ==============댓글 삭제 버튼============= */
$parentposition.on("click","span.replyCommentDeleteWrap",function(){
	
	$.ajax({
		url:"${pageContext.request.contextPath}/meommi/CommentDelete.co",
		type:"get",
		data:{commentNumber:$(this).data("number")},
		success:function(){
			console.log("comment delete success");
			text="";
 			textinit="";
			showDefault();
		}
	});
	
});

/* =====================게시글 수정 준비 버튼=================== */
$parentposition.on("click","span.postContentReadyModifyWrap",function(){
	const buttonWrap=$(this).closest("div.postContents");
	const buttons=buttonWrap.children();
	const content=buttonWrap.prev().prev().find(":first-child");
	if(!postContentContains){
		alert('수정중인 게시글이 있습니다.');
		return;
	}
	postContentContains=false;
	buttons.eq(0).hide();
	buttons.eq(1).show();
	buttons.eq(2).hide();
	buttons.eq(3).show();
	
	content.replaceWith("<textarea>"+content.text()+"</textarea>");
});
/* ==============게시글 수정 취소 버튼============= */
 $parentposition.on("click","span.postContentCancelWrap",function(){
	const buttonWrap=$(this).closest("div.postContents");
	const buttons=buttonWrap.children();
	const content=buttonWrap.prev().prev().find(":first-child");
	
	buttons.eq(0).show();
	buttons.eq(1).hide();
	buttons.eq(2).show();
	buttons.eq(3).hide();
	
	content.replaceWith("<pre>"+content.text()+"</pre>");
	postContentContains=true;
});

 /* ==============게시글 수정 버튼============= */
  $parentposition.on("click","span.postContentModifyWrap",function(){
 	const buttonWrap=$(this).closest("div.postContents");
 	const postContent=buttonWrap.prev().prev().find(":first-child");
 	const postNumber=$(this).data("number");
 	
 	var modifyPost=postContent.val().replace(/\</g,'&lt;');
 	modifyPost=modifyPost.replace(/\>/g,'&gt;');
 	if(!modifyPost){
 		alert('게시글 내용을 입력해주세요.');
 		return;
 	}
 	
 	$.ajax({
 		url:"${pageContext.request.contextPath}/meommi/PostRetouch.po",
 		type:"get",
 		data:{postContent:modifyPost,postNumber:postNumber},
 		success:function(){
 			postContentContains=true;
 			text="";
 			textinit="";
 			showDefault();
 			console.log("post modify success");
 		}
 	});
 	/* postContent.append("<pre>"+postContent.val()+"</pre>"); */
 });
 /* ==============게시글 삭제 버튼============= */
$parentposition.on("click","span.postContentDeleteWrap",function(){
 	$.ajax({
 		url:"${pageContext.request.contextPath}/meommi/PostDelete.po",
 		type:"get",
 		data:{postNumber:$(this).data("number")},
 		success:function(){
 			console.log("post delete success");
 			text="";
 			textinit="";
 			showDefault();
 		}
 	});
 	
 });
 /* ===================게시글 등록=========================== */
$("#contentResistButton").click(function (event) {         
	//preventDefault 는 기본으로 정의된 이벤트를 작동하지 못하게 하는 메서드이다. submit을 막음 
	   event.preventDefault();          
	    // disabled the submit button         
	    $("#contentResistButton").prop("disabled", true);   
	    
	/*formData 생성 및 key, value 삽입*/
	   var formData = new FormData();
	
	  var tempPostContent=$("textarea[name='feedMainWriting']").val().replace(/\</gi,'&lt;');
	  tempPostContent=tempPostContent.replace(/\>/gi,'&gt;');
	   if(!tempPostContent){
			alert('게시글 내용을 입력해주세요.');
			return;
	   }
		console.log(typeof tempPostContent);
	
	   console.log(tempPostContent);
	
	   formData.append("postContent",tempPostContent)
	   formData.append("postFile1", $('.realUpload')[0].files[0])  
	   formData.append("postFile2", $('.realUpload')[0].files[1])
	   formData.append("postFile3", $('.realUpload')[0].files[2])
	   
		console.log("게시글 업로드 이벤트 들어옴");
		console.log("formData:"+formData);
	/*==================== 글등록 + 사진등록 ajax =====================*/    
	    $.ajax({             
	       type: "POST",          
	        url: context + "/meommi/PostRegistration.po",        
	        data: formData,
	        processData: false,    
	        contentType: false,      
	        cache: false,           
	        timeout: 600000,       
	        success: function (data) {
	        	$("textarea[name='feedMainWriting']").val("");
				text="";
				textinit="";
				showDefault();
	           $("#contentResistButton").prop("disabled", false);
	        },          
	        error: function (e) {  
	           console.log("ERROR : ", e);     
	            $("#contentResistButton").prop("disabled", false);    
	            alert("fail")
	         }     
	   });  
});
/* ================게시글 필터 ================== */
$(".tab-button").on("click",function(){
	var keyword=$(this).find("button").text();
	console.log("keyword:"+keyword);
	if(keyword=="전체"){
		text="";
		textinit="";
		console.log("전체 사용된거 이용");
		showDefault();
	}
	else if(keyword=="내팔로잉"){
		$.ajax({
			url:"${pageContext.request.contextPath}/meommi/PostlistFollowing.po",
			type:"get",
			data:{keyword:keyword},
			dataType:"json",
			success:function(followingpost){
				$.ajax({
					url:"${pageContext.request.contextPath}/meommi/CommentlistFollowing.co",
					type:"get",
					data:{keyword:keyword},
					dataType:"json",
					success:function(followingcomment){
						$.ajax({
							url:"${pageContext.request.contextPath}/meommi/PostFilelistFollowing.pf",
							type:"get",
							data:{keyword:keyword},
							dataType:"json",
							success:function(followingfile){
								text="";
								textinit="";
								//팔로잉 사람들의 게시글 및 파일(게시글의 댓글)
								showDefaultList(followingpost,followingcomment,followingfile);
							}
						});
					}
				});
			}
		});
	}
	else if(keyword=="내팔로워"){
		$.ajax({
			url:"${pageContext.request.contextPath}/meommi/PostlistFollower.po",
			type:"get",
			data:{keyword:keyword},
			dataType:"json",
			success:function(followerpost){
				$.ajax({
					url:"${pageContext.request.contextPath}/meommi/CommentlistFollower.co",
					type:"get",
					data:{keyword:keyword},
					dataType:"json",
					success:function(followercomment){
						$.ajax({
							url:"${pageContext.request.contextPath}/meommi/PostFilelistFollower.pf",
							type:"get",
							data:{keyword:keyword},
							dataType:"json",
							success:function(followerfile){
								text="";
								textinit="";
								//팔로우 사람들의 게시글 및 파일(게시글의 댓글)
								showDefaultList(followerpost,followercomment,followerfile);
							}
						});
					}
				});
			}
		});
	}
});
</script>
</html>