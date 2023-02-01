/**
 * 
 */
var check = false;
let count = 1;
var $pageNumber = $('.pageButton a');

//로그인 방법 체킹
loginMethodCheck(loginMethod);
if(loginMethod ==1 || loginMethod == 2){
	none = "";
	$('.sub-text').text('SNS회원은 비밀번호 변경이 불가합니다.');
	$('.changePw').css('display', 'none');
}

/* if($('.MymummSection_section').find('.MymummList_list').css('display') != 'none'){
    $('.page').css('display', '');
}else{
    $('.page').css('display', 'none');
} */

$(".check-list-wrap li input[type='checkbox']").on('click', function(){
    if($(this).is(':checked')){
        $(this).closest('li').find('span').attr('class', 'button_checked');
    }else{
        $(this).closest('li').find('span').attr('class', 'button_unchecked');
    }
});

//게시글 불러오기-----------------------------------------------------------------------------------
 function postList(posts) {
			let text = "";
			let pageText ="";
			let j = 0;
	   if(posts.length > 1){
				text += `<ul>`;
			posts.forEach(post => {
					j++
				if(j < posts.length){
					text += `<li>`;
					text += `<a class="myPost" href="#">`;
					text += `<div class="thumb" style="background-image: url('`+ (post.postFileSystemName == null ? $context + `/images/logo.png ` :  $context +`/upload/post/` +post.postFileSystemName) +` ')"></div>`;
					text += `<div class="info">`;
					text += `<h3 class="title">[`+ post.postContent +`]</h3>`;
					text += `<span class="created-at">`+ post.postDateTime +`</span>`; 
					text += `</div>`; 
					text += `</a>`; 
					text += `</li>`; 
				}
				else{
					pageText += `<div class="pageButton">`;
					for(let i  = post.startPage; i <= post.endPage; i++){
						if(post.page == i){
							pageText +=`<a class="current" href="#" onclick="movePage(`+ i + `, 'post')">` + i + `</a>`;
						}else{
							pageText +=`<a class="" href="#" onclick="movePage(`+ i + `, 'post')">` + i + `</a>`;
						}
					}
					pageText+=`</div>`
				}
			});
				text += `</ul>`; 
				
			
	   }else{
			text += `<div class="MymummList_emptyList">`;
			text += `작성한 게시글이 없습니다.`;
			text += `</div>`; 
		}
			$('.MymummList_list').html(text);
			$('.page').html(pageText);
}
//얘넨 ajax 함수
function pagePost(number){
	$.ajax({
         url: $context + "/user/writePostOk.us?page="+number,
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
		success : postList
      });
}		

function myPost(){
	//sessionscope로 userNumber넘기는걸로 수정할 것
	 $.ajax({
         url: $context + "/user/writePostOk.us",
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
         success: postList
      });
}
//----------------------------------------------------------------------------------------------------

//댓글 불러오기태그------------------------------------------------------------------------------------------
 function commentList(comments) {
			let text = "";
			let pageText ="";
			let j = 0;
	   if(comments.length > 1){
				text += `<ul>`;
			comments.forEach(comment => {
					j++
				if(j < comments.length){
					text += `<li>`;
					text += `<a class="myPost" href="#">`;
					text += `<div class="info">`;
					text += `<h3 class="title reple">[`+ comment.commentsContent +`]</h3>`;
					text += `<span class="created-at">`+ comment.commentsDateTime +`</span>`; 
					text += `</div>`; 
					text += `</a>`; 
					text += `</li>`; 
				}
				else{
					console.log( j + "페이지");
					pageText += `<div class="pageButton">`;
					for(let i  = comment.startPage; i <= comment.endPage; i++){
						if(comment.page == i){
							pageText +=`<a class="current" href="#" onclick="movePage(`+ i + `, 'comment')">` + i + `</a>`;
						}else{
							pageText +=`<a class="" href="#" onclick="movePage(`+ i + `, 'comment')">` + i + `</a>`;
						}
					}
					pageText+=`</div>`
				}
			});
				text += `</ul>`; 
				
			
	   }else{
			text += `<div class="MymummList_emptyList">`;
			text += `작성한 댓글이 없습니다.`;
			text += `</div>`; 
		}
			$('.MymummList_list').html(text);
			$('.page').html(pageText);
}
//ajax 함수
function pageCom(number){
	$.ajax({
         url: $context + "/user/writeCommentOk.us?page="+number,
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
		success : commentList
      });
}		

function myComment(){
	//sessionscope로 userNumber넘기는걸로 수정할 것
	 $.ajax({
         url: $context + "/user/writeCommentOk.us",
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
         success: commentList
      });
}
//----------------------------------------------------------------------------------------------------

//리뷰 불러오기태그------------------------------------------------------------------------------------------
 function reviewList(reviews) {
			let text = "";
			let pageText ="";
			let j = 0;
	   if(reviews.length > 1){
				text += `<ul>`;
			reviews.forEach(review => {
					j++
				if(j < reviews.length){
					text += `<li>`;
					text += `<a class="myPost" href="#">`;
					text += `<div class="info">`;
					text += `<div class="thumb" style="background-image: url('` +(review.reviewFileSystemName == null ? $context + `/images/logo.png ` :  $context +`/upload/review/` +review.reviewFileSystemName) +`');"></div>`;
					text += `<h3 class="place">[`+ review.placeName +`]</h3>`;
					text += `<h3 class="review">[`+ review.placeReviewContents +`]</h3>`;
					text += `<span class="liked">`;
					text += `도움이 돼요`;
					text += `<i>` + review.placeReviewHelful + `</i>`;
					text += `</span>`;
					text += `<span class="liked">`;
					text += `별점`;
					text += `<i>` + review.placeReviewRating + `</i>`;
					text += `</span>`;  
					text += `</div>`; 
					text += `</a>`; 
					text += `</li>`; 
				}
				else{
					console.log( j + "페이지");
					pageText += `<div class="pageButton">`;
					for(let i  = review.startPage; i <= review.endPage; i++){
						if(review.page == i){
							pageText +=`<a class="current" href="#" onclick="movePage(`+ i + `, 'review')">` + i + `</a>`;
						}else{
							pageText +=`<a class="" href="#" onclick="movePage(`+ i + `, 'review')">` + i + `</a>`;
						}
					}
					pageText+=`</div>`
				}
			});
				text += `</ul>`; 
				
			
	   }else{
			text += `<div class="MymummList_emptyList">`;
			text += `작성한 리뷰가 없습니다.`;
			text += `</div>`; 
		}
			$('.MymummList_list').html(text);
			$('.page').html(pageText);
}
//ajax 함수
function pageRe(number){
	$.ajax({
         url: $context + "/user/writeReviewOk.us?page="+number,
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
		success : reviewList
      });
}		

function myReview(){
	//sessionscope로 userNumber넘기는걸로 수정할 것
	 $.ajax({
         url: $context + "/user/writeReviewOk.us",
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
         success: reviewList
      });
}
//----------------------------------------------------------------------------------------------------

//장소 저장 불러오기태그------------------------------------------------------------------------------------------
 function placeList(places) {
			let text = "";
			let pageText ="";
			let j = 0;
	   if(places.length > 1){
				text += `<ul>`;
			places.forEach(place => {
					j++
				if(j < places.length){
					text += `<li>`;
					text += `<a class="myPost" href="#">`;
					text += `<div class="info">`;
					text += `<div class="thumb" style="background-image: url('` +(place.reviewFileSystemName == null ? $context + `/images/logo.png ` :  $context +`/upload/review/` +place.reviewFileSystemName) +`');"></div>`;
					text += `<h3 class="place">[`+ place.placeName +`]</h3>`;
					text += `<h3 class="review">[`+ place.placeReviewContents +`]</h3>`;
					text += `<br>`;  
					text += `<span class="created-at">`+ place.placeAddress +`</span>`;
					text += `<br>`;  
					text += `<span class="liked">`;
					text += `도움이 돼요`;
					text += `<i>` + place.placeReviewHelful + `</i>`;
					text += `</span>`;
					text += `<span class="liked">`;
					text += `별점`;
					text += `<i>` + place.placeReviewRating + `</i>`;
					text += `</span>`;  
					text += `</div>`; 
					text += `</a>`; 
					text += `</li>`; 
				}
				else{
					pageText += `<div class="pageButton">`;
					for(let i  = place.startPage; i <= place.endPage; i++){
						if(place.page == i){
							pageText +=`<a class="current" href="#" onclick="movePage(`+ i + `, 'place')">` + i + `</a>`;
						}else{
							pageText +=`<a class="" href="#" onclick="movePage(`+ i + `, 'place')">` + i + `</a>`;
						}
					}
					pageText+=`</div>`
				}
			});
				text += `</ul>`; 
				
			
	   }else{
			text += `<div class="MymummList_emptyList">`;
			text += `등록한 장소가 없습니다.`;
			text += `</div>`; 
		}
			$('.MymummList_list').html(text);
			$('.page').html(pageText);
}
//ajax 함수
function pagePlace(number){
	$.ajax({
         url: $context + "/user/myPlaceOk.us?page="+number,
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
		success : placeList
      });
}		

function myPlace(){
	console.log('place');
	//sessionscope로 userNumber넘기는걸로 수정할 것
	 $.ajax({
         url: $context + "/user/myPlaceOk.us",
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
         success: placeList
      });
}
//----------------------------------------------------------------------------------------------------


//a태그 이동막기,무브 페이지
$('.pageButton a').on('click', function(e){
	e.preventDefault; 
});
function movePage(number, type){
	let realNum = number -1;
   	$('.pageButton a').attr('class', '');
	if($('.pageButton a').eq(realNum).attr('text') != number){
		switch(type){
			case 'post' :
			console.log('post');
				pagePost(number);
			break;
			case 'comment' :
			console.log('comment');
				pageCom(number);
			break;
			case 'review' :
				pageRe(number);
			break;
			case 'place' :
				pagePlace(number);
			break;
		}
	}
}
//-----------------------------------------------------------------------------------------------------



//게시글
$(".MymummProjectInfo_projectList li a").eq(0).on('click', function(){
	myPost();
		$('.profileSetting').css('display', 'none');
	    $('.MymummProjectInfo_projectLink').css('display', '');
	 if($('.MymummSection_section').find('.MymummList_list').css('display') == 'none'	){
		$('.MymummSection_section').find('.MymummList_list').css('display', '');
		$('.btn_close').css('display', '');
		$('.page').css('display', '');
	}else{
        $('.MymummSection_section').children().css('display', 'none');
		$('.btn_close').css('display', 'none');
		$('.page').css('display', 'none');
	}
});
//댓글
$(".MymummProjectInfo_projectList li a").eq(1).on('click', function(){
	myComment();
		$('.profileSetting').css('display', 'none');
	    $('.MymummProjectInfo_projectLink').css('display', '');
	 if($('.MymummSection_section').find('.MymummList_list').css('display') == 'none'	){
		$('.MymummSection_section').find('.MymummList_list').css('display', '');
		$('.btn_close').css('display', '');
		$('.page').css('display', '');
	}else{
        $('.MymummSection_section').children().css('display', 'none');
		$('.btn_close').css('display', 'none');
		$('.page').css('display', 'none');
	}
	
});
//리뷰
$(".MymummProjectInfo_projectList li a").eq(2).on('click', function(){
 	myReview();
		$('.profileSetting').css('display', 'none');
	    $('.MymummProjectInfo_projectLink').css('display', '');
	 if($('.MymummSection_section').find('.MymummList_list').css('display') == 'none'	){
		$('.MymummSection_section').find('.MymummList_list').css('display', '');
		$('.btn_close').css('display', '');
		$('.page').css('display', '');
	}else{
        $('.MymummSection_section').children().css('display', 'none');
		$('.btn_close').css('display', 'none');
		$('.page').css('display', 'none');
	}
});

//내 장소
$(".MymummProjectInfo_projectList li a").eq(3).on('click', function(){
	myPlace();
		$('.profileSetting').css('display', 'none');
	    $('.MymummProjectInfo_projectLink').css('display', '');
	 if($('.MymummSection_section').find('.MymummList_list').css('display') == 'none'	){
		$('.MymummSection_section').find('.MymummList_list').css('display', '');
		$('.btn_close').css('display', '');
		$('.page').css('display', '');
	}else{
        $('.MymummSection_section').children().css('display', 'none');
		$('.btn_close').css('display', 'none');
		$('.page').css('display', 'none');
	}
});

//정보설정
$('.MymummProjectInfo_projectLink li a').eq(0).on('click', function(){
    if($('.profileSetting').css('display') == 'none'){
        $('.page').css('display', 'none');
        $('.MymummSection_section').children().css('display', 'none');
        $('.profileSetting').css('display', '');
        $('.btn_close').css('display', '');
        $('.MymummProjectInfo_projectLink').css('display', 'none')
    }else{
        $('.profileSetting').css('display', 'none');
        $('.btn_close').css('display', 'none');
        $('.MymummProjectInfo_projectLink').css('display', '')
    }
});

if($('.profileSetting').css('display') == 'none'){
    $('.MymummProjectInfo_projectLink').css('display', '');
}

function checkPw(){
	text = '';
	
    if($('.changePw #exPassword').val() == atob(userPw)){
        console.log('맞음')
        $('.changePw #result').text('확인완료');
		text += `<p class="sub-text">새로 사용하실 비밀 번호를 입력해주세요</p>`;
		text += `<div class="changePw">`;
		text += `<input type="password" class="input-text" maxlength="50" id="newPassword" name="new" autocomplete="new-password"  onblur="checkPassword()">`
		text += `<p id="changeError"></p>`;
		text += `<p class="sub-text">비밀번호 확인</p>`;
		text += `<input type="password" class="input-text" maxlength="50" id="newPasswordCheck" name = "check" autocomplete="new-password" onblur ="confirmPw()">`
		text += `<p id="changeResult"></p>`;
		text += `</div>`;
		
		$('.newPw').html(text);
    }
    else{
        $('.changePw #result').text('일치하지 않는 비밀번호');
    }
}

/* 회원가입 양식에 맞게 모두 작성했는지 체크 */
/*8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사*/
var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
/*한글이 포함되었는 지 검사*/
var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
/*같은 문자 4번 이상*/
var wordCheck = /(\w)\1\1\1/;
/*공백검사*/
var spaceCheck = /\s/;
/*아이디 이메일 검사*/
var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);

function checkPassword(){
	let pw = $('.changePw #newPassword');
	/*비밀번호가 기재되지 않았을 경우*/
	if(!pw.val()){
		$('#newPassword').focus();
		$("#changeError").text("비밀번호를 입력해주세요.");
		return;
	}
	
	/*비밀번호가 4자 이하이거나 20자 초과일 경우*/
	 if(pw.val().length < 4 || pw.val().length > 20){
		$('#newPassword').focus();
		$("#changeError").text("비밀번호는 5자 이상, 20자 이하로 작성해주세요.");
      return;
   	}

	/*비밀번호에 대문자/소문자/숫자/특수문자가 모두 포함되어있는지 검사*/
	if(!pwCheck.test(pw.val())){
		$('#newPassword').focus();
		$("#changeError").text("비밀번호는 대문자, 소문자, 특수문자가 모두 포함되어야 합니다.");
		return;
	}
	
	/*비밀번호에 같은 문자가 4번 이상 들어갔는지 검사*/
	if(wordCheck.test(pw.val())){
		$('#newPassword').focus();
		$("#changeError").text("비밀번호는 같은 문자가 4번 이상 들어갈 수 없습니다.");
		return;
	}
	/*비밀번호 공백 검사*/
	if(spaceCheck.test(pw.val())){
		$('#newPassword').focus();
		$("#changeError").text("비밀번호는 공백이 들어갈 수 없습니다.");
		return;
	}
	
		$("#changeError").text("확인");
	
}
	
function confirmPw(){
	/*비밀번호와 비밀번호 확인이 일치하지 않는 경우*/
		if($('#newPasswordCheck').val() != $('#newPassword').val()){
				$('#newPasswordCheck').focus();
			$("#changeResult").text("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			return;
		}
	/*비밀번호가 기재되지 않았을 경우*/
		if(!$('#newPasswordCheck').val()){
			$('#newPassword').focus();
			$("#changeError").text("비밀번호를 입력해주세요.");
			return;
		}

			$("#changeResult").text("확인");
}
	

function loginMethodCheck(loginMethod){
	var kakao = "<span class='MymummLoginMode_kakaoIcon'>"+
	"<svg viewBox='0 0 32 32' focusable='false' role='presentation' class='withIcon_icon' aria-hidden='true'><path d='M16 4.64c-6.96 0-12.64 4.48-12.64 10.08 0 3.52 2.32 6.64 5.76 8.48l-.96 4.96 5.44-3.6 2.4.16c6.96 0 12.64-4.48 12.64-10.08S22.96 4.56 16 4.64z'></path></svg>"+
	"</span>카카오로 로그인 중"
	var mumm = "멈미뭄미로 로그인 중"
	var google = "<span><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 16 16'><g fill='none' fill-rule='evenodd'><path d='M0.8 0.645H15.600000000000001V15.355H0.8z'></path><path fill='#4285F4' d='M13.471 6.598c.085.388.129.79.129 1.202 0 .204-.01.405-.032.603-.158 1.478-.89 2.79-1.976 3.727L9.65 10.575c.568-.393 1.01-.944 1.257-1.587h-3.27v-2.39h5.834z'></path><path fill='#34A853' d='M7.4 11.61c.82 0 1.573-.29 2.161-.773l1.89 1.515C10.404 13.372 8.975 14 7.4 14c-2.35 0-4.373-1.397-5.284-3.406L4.1 9.061c.381 1.466 1.714 2.549 3.3 2.549z'></path><path fill='#FBBC05' d='M2.385 5.187l1.734 1.58c-.188.435-.294.92-.294 1.433 0 .408.067.799.19 1.161l-1.773 1.585c-.177-.354-.321-.73-.428-1.124l-.206-1.95c.051-.98.329-1.894.777-2.685z'></path><path fill='#EA4335' d='M7.6 2c1.662 0 3.166.653 4.253 1.708L10.11 5.405C9.47 4.778 8.582 4.39 7.6 4.39c-1.66 0-3.051 1.108-3.427 2.6L2.126 5.421C3.066 3.404 5.163 2 7.6 2z'></path></g></svg></span>구글로 로그인 중"
	switch(loginMethod){
		case '1' :
		console.log("1");
	    	$('.MymummLoginMode_loginMode').append(kakao); 
		break;
		case '2' :
		console.log("2");
		    $('.MymummLoginMode_loginMode').append(google); 
		break;
		default :
		console.log("3");
		    $('.MymummLoginMode_loginMode').append(mumm); 
		break;
	}
}

/* 프로필 변경 확인 */
var cancel = $('#alertify-o-cancel');


function modify() {
	console.log(setProfileForm);
	//유효성검사
 	if($('#changeResult').text() != '' && $('#changeResult').text() != '확인'){ 
		$('#newPasswordCheck').focus();
		return;
	}
    $('.MymummProfile_detailProfile.avatar').css('background-image', $('#resultProfileImg em').css("background-image"));
    $('.alertify-o-message').text('프로필 설정이 성공적으로 변경되었습니다.');
    
    $('#alertify-o-cancel').detach();
    $('#alertify-o-cover').attr('class', 'alertify-o-cover');
    $('#alertify-o').attr('class', 'alertify-o alertify-o-confirm');
}   
//-----------------------------------------------------------------------------------------------------------------------

/* 프로필 변경 취소 */
function cancelModify(){
    $('.alertify-o-message').html('취소 시, 설정하신 프로필 정보가 적용되지 않습니다. <br> 취소하시겠습니까?')
    $('#alertify-o-cover').attr('class', 'alertify-o-cover');
    $('#alertify-o').attr('class', 'alertify-o alertify-o-confirm');
}
/* 변경 취소 시, 확인&취소 */
$('#alertify-o-cancel').on('click', function(){
    $('#alertify-o-cover').attr('class', 'alertify-o-cover alertify-o-cover-hidden');
    $('#alertify-o').attr('class', 'alertify-o alertify-o-hide alertify-o-hidden');
});
//최종 확인을 눌렀을 때.
$('#alertify-o-ok').on('click', function(){


    $('#alertify-o-cover').attr('class', 'alertify-o-cover alertify-o-cover-hidden');
    $('#alertify-o').attr('class', 'alertify-o alertify-o-hide alertify-o-hidden');


    setTimeout(function(){
    }, 500);
	console.log("ddd");
		setProfileForm.submit();
});

/* 섹션 닫기 버튼 */
function closeSection(){
    $('.page').css('display', 'none');
    $('.profileSetting').css('display', 'none');
    $('.MymummSection_section').children().css('display', 'none');
    $('.btn_close').css('display', 'none');
    $('.MymummProjectInfo_projectLink').css('display', ''); 
}

/*카카오 로그아웃*/
/*계정 로그아웃이 아니라 카카오 토큰만 만료시키는 것이기 때문에 로그아웃 컨트롤러를 사용해야함*/
function kakaoLogout(){
	if(!Kakao.Auth.getAccessToken()){
		alert("로그인 정보가 없습니다.");
		return;
	}
	
	Kakao.Auth.logout(function(){
		alert("로그아웃 되었습니다. ");
	})
}

function meommiLogout(tag){
	switch(loginMethod){
		case  1:
			kakaoLogout();
		break;
		default :
			$(tag).attr('href', $context + '/user/logout.us');
		break;
	}
}



//정보설정 안에 프로필이미지에서 사용하는 함수
function readURL(input) {
    if (input.files && input.files[0]) {
        
        var reader = new FileReader();
        reader.onload = function(e) {
            var url = e.target.result;
            $('#resultProfileImg em').css("background-image", `url(${url})`); 
        }
        reader.readAsDataURL(input.files[0]);
    }
}
//정보설정 밖에 프로필 이미지에서 사용하는 함수
function changeAvatar(input) {
    if (input.files && input.files[0]) {
        
        var reader = new FileReader();
        reader.onload = function(e) {
            var url = e.target.result;
            $('.MymummProfile_detailProfile.avatar').css("background-image", `url(${url})`); 
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$('#uploadProfileImg').on('change', function(){
	$('.uploadCheck').val('true');
 	readURL(this);
});

$('#editProfileImg').on('change', function(){
	$('.editCheck').val('true');
    changeAvatar(this);
    $('.MyMummProfile_profileUser').html(`<div class="btn-bottom">
    <ul class="btn-div2 editProfile">
        <li><button type="button" class="mm button gray btn-darkgray" onclick="cancelModify()">취소</button></li>
        <li><button type="button" class="mm button primary btn-mint" onclick="modify()">확인</button></li>
    </ul>
</div>`);
});