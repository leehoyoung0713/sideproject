var input = document.getElementById('userName')
var inputText = document.getElementById('userName').value;
var btnIsJoinedEmail = document.getElementById('btnIsJoinedEmail');
var errorMsg = document.getElementById('helper_error');
var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);

const $idCheckBtn = $("#btnIsJoinedEmail");

$idCheckBtn.on("click", function(e){
	e.preventDefault();
	checkId($("input[name='userName']").val());
})


function idCheckSuccess(id){
	$(".container").hide();
	$(".idCheckBody").css("visibility","visible");
	let text="";
	
	text +=`<p style="font-size: 35px; color: black; font-weight: 700;">` + id + `</p>`;
	text +='<p style="margin-top:30px; font-size:16px">회원으로 등록된 이메일 아이디입니다.<br>해당 이메일로 로그인하고 멈미뭄미를 이용하세요!</p>';
	text +=`<button class="checkBtn button" type="button" onclick="location.href='/user/join.us'">회원가입하기</button>`;
	text +=`<button class="checkBtn button" type="button" onclick="location.href='/user/login.us'">로그인</button>`;
	text +=`<button class="againBtn button" type="button" onclick="againCheck()">다시 확인</button>`;
	$(".idCheckBody").html(text);
	
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
			} else{
				idCheckSuccess(inputId);
			}
		}
	});
}

function againCheck(){
	$(".container").show();
	$(".idCheckBody").css("visibility","hidden");
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


