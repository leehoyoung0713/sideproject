/**
 * 
 */

function loginCheck(){
	let idCheck =	frm_login.userName.value;
	let passwordCheck = frm_login.password.value;
	if(!idCheck){
		frm_login.userName.focus();
		$("#loginError").text("아이디를 입력해주세요.");
		return;
	}
	
	if(!passwordCheck){
		frm_login.password.focus();
		$("#loginError").text("비밀번호를 입력해주세요.");
		return;
	}
	
	frm_login.submit();
	
}


/* 뒤로가기 막기 */
window.history.forward(); function noBack(){ 
  window.history.forward();
}


/*카카오 로그인 서비스 */
/*세팅 초기화 원할 시 accounts.kakao.com/weblogin/account/info */
/* 자바스크립트 키 기재 */
Kakao.init("d99c2c688be9d7dacb2763bc4919b67a"); 

/*카카오 로그인 */
let id;
let nickname;

/*리다이렉트 페이지*/
function loginWithKakao() {
    Kakao.Auth.authorize({
   		redirectUri: 'http://localhost:8085/app/main/mainpage.jsp',
		prompts: 'login',
    });
}



/*로그인, 토큰값 저장*/
function kakaoLogin() {
	Kakao.Auth.login({
		success: function (authObj){
			console.log(authObj); //access 토큰 값
			Kakao.Auth.setAccessToken(authObj.access_token); //access 토큰 값 저장
		
			getInfo();
		},
		fail: function(err){
			console.log(err);
		}
	})
}

function getInfo(){
	Kakao.API.request({
		url: '/v2/user/me',
		success: function(res){
			console.log(res);
			/*이메일 정보*/
			$.ajax({
				data: {
					id: res.id,
					userName: res.kakao_account.profile.nickname
				},
				success: function(){
					$("input[name='kakaoLoginForm']").val(res.id);
					$("input[name='kakaoNameForm']").val(res.kakao_account.profile.nickname);
					frm_login_kakao.submit();
				}
			})
		},
		fail: function (error){
			alert('카카오 로그인에 실패했습니다. 다시 시도해주세요.' + JSON.stringify(error));
			return;
		}
	})
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



/*카카오 탈퇴*/  
function kakaoDisconnected() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
}


/*구글 로그인 서비스 */
function handleCredentialResponse(response) {
	const responsePayload = parseJwt(response.credential);
	console.log("ID: " + responsePayload.sub);
    console.log('Full Name: ' + responsePayload.name);
    console.log('Given Name: ' + responsePayload.given_name);
    console.log('Family Name: ' + responsePayload.family_name);
    console.log("Image URL: " + responsePayload.picture);
    console.log("Email: " + responsePayload.email);
	$.ajax({
		type: "post",
		data: {
			id: responsePayload.sub,
			userName: responsePayload.name
		},
		success: function(){
			$("input[name='googleLoginForm']").val(responsePayload.sub);
			$("input[name='googleNameForm']").val(responsePayload.name);
			frm_login_google.submit();
		}
	})
}

function parseJwt (token) {
    var base64Url = token.split('.')[1];
    var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
    var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
        return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
    }).join(''));

    return JSON.parse(jsonPayload);
};

window.onload = function () {
  google.accounts.id.initialize({
    client_id: "609009193609-b797q62q035jhkamfo8ebei82sr5612j.apps.googleusercontent.com", //직접 클라이언트 ID를 받아서 진행해야함
    callback: handleCredentialResponse
  });
  google.accounts.id.renderButton(
    document.getElementById("buttonDiv"),
    { theme: "outline", size: "large", width: 368}  // 로고 커스터마이징
  );
  google.accounts.id.prompt(); // 원탭 화면으로 출력
}



/* 구글 로그아웃 */
