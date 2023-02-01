var input = document.getElementById('userName')
var inputText = document.getElementById('userName').value;
var btnIsJoinedEmail = document.getElementById('btnIsJoinedEmail');
var errorMsg = document.getElementById('helper_error');
var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
var word = "abcdefghijklmnopqrstuvwxyz";
var capitalWord = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
var specialWord = "~!@#$%^&*_";

const $emailBtn = $("#btnIsJoinedEmail"); 

$emailBtn.on("click", function(e){
	e.preventDefault();
	checkId($("input[name='userName']").val());
})

function idCheckSuccess(id){
	$(".container").hide();
	$(".passwordCheckBody").css("visibility","visible");
	let text="";
	
	text +=`<p style="font-size: 35px; color: black; font-weight: 700;">` + id + `</p>`;
	text +='<p style="margin-top:30px; font-size:16px">해당 이메일 주소로 비밀번호를 발송하였습니다.<br>로그인 후 멈미뭄미를 이용하세요!</p>';
	text +=`<button class="checkBtn button" type="button" onclick="location.href='/user/login.us'">로그인</button>`;
	text +=`<button class="againBtn button" type="button" onclick="againCheck()">다시 확인</button>`;
	$(".passwordCheckBody").html(text);
}

function againCheck(){
	$(".container").show();
	$(".passwordCheckBody").css("visibility","hidden");
}

function checkId(inputId){
	if(!inputId){
		$(".emailCheck").text("아이디를 입력해주세요.");
		return;
	}
	
	/*아이디가 이메일이 아닐 경우*/
	if(!getMail.test($("#userName").val())){
		$(".emailCheck").text("아이디는 이메일 형식으로 입력하셔야 합니다.");
		return;
	}
		$.ajax({
		url:contextPath + "/user/checkIdOk.us",
		type: "get",
		data: {inputId: inputId},
		dataType: "json", 
		contentType: "application/json; charset=utf-8",
		success:function(data){
			if(!data.result){
				$(".emailCheck").text("해당 이메일은 가입한 이력이 없습니다.");
				return;
			} else{
				idCheckSuccess(inputId);
			}
			
			sendEmail();
		}
	});
}



/*이메일 보내기*/5
function sendEmail(){
	
	var data = {
	    service_id: 'service_jj6jv5r',
	    template_id: 'template_46e7a3u',
	    user_id: 'q0AzwXY_TP2qYCAjA',
	    template_params: {
			'to_user': $("#userName").val(),
	        'to_name': $("#userName").val(),
			'message': getRandomInt(1,10),
	        'g-recaptcha-response': '03AHJ_ASjnLA214KSNKFJAK12sfKASfehbmfd...'
	    }
	};
	 
	$.ajax('https://api.emailjs.com/api/v1.0/email/send', {
	    type: 'POST',
	    data: JSON.stringify(data),
	    contentType: 'application/json'
	}).done(function() {
	    alert('이메일이 발송되었습니다!');
		$.ajax({
			url:contextPath + "/user/passwordChange.us",
			type: "post",
			data: {
					changePassword: data.template_params.message,
					userId: $("#userName").val()
					
					},
			contentType: "application/x-www-form-urlencoded"
		}) 
			
	}).fail(function(error) {
	    alert('이메일 발송 실패..');
		console.log(JSON.stringify(error));
	});
}


/*이메일 인증번호 발송*/
var randomNumber ="";
function getRandomInt(min, max) { //최댓값은 제외, 최솟값은 포함
 	min = Math.ceil(min);
	max = Math.floor(max);
	
	for (var i = 0; i < 3; i++) {
	  		randomNumber += Math.floor(Math.random() * (max - min)) + min;
	}
	
	for (var i = 0; i < 3; i++) {
  		randomNumber += word.charAt(Math.floor(Math.random() * (word.length - 1)) + 1);
	}

	for (var i = 0; i < 2; i++) {
  		randomNumber += capitalWord.charAt(Math.floor(Math.random() * (capitalWord.length - 1)) + 1);
	}

	for (var i = 0; i < 1; i++) {
  		randomNumber += specialWord.charAt(Math.floor(Math.random() * (specialWord.length - 1)) + 1);
	}
	
	return randomNumber;
}



input.addEventListener("mouseover", function(){
    this.style.border = "1px solid black";
    this.style.background = "#fff";
   
})

input.addEventListener("mouseout", function(){
    this.style.border ="1px solid rgba(0,0,0,.15)";
    this.style.background = "#fff";
   
})

input.addEventListener("focus", function(){
    this.style.background = "#fff";
    this.style.border = "1px solid  #FF914D";
})

btnIsJoinedEmail.addEventListener("mouseover", function(){
    this.style.background = "#FF914D";
    this.style.border = "1px solid #FF914D"
    
})


btnIsJoinedEmail.addEventListener("mouseout", function(){
    this.style.background = "rgb(252 191 154)";
    this.style.border = "1px solid rgb(252 191 154)"

})


btnIsJoinedEmail.addEventListener("click",function(){
    var input = document.getElementById('userName');
    if(!input.value.match("@")){
        input.style.background = "rgba(255,155,155,.06)";
        input.style.border = "1px solid #f66";
    }
    
    if(!input.value.match(".com")){
        input.style.background = "rgba(255,155,155,.06)";
        input.style.border = "1px solid #f66";
    }
}
)


