/**
 * 
 */

function find(){
	new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('memberZipcode').value = data.zonecode;
                document.getElementById("memberAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("memberAddressDetail").focus();
            }
        }).open();
}

// 이용 약관
const $all = $("#term");
const $terms = $(".terms");

// 전체 동의 클릭
$all.on("click", function(){
	//각각의 약관의 checked 프로퍼티를 모두 전체동의의 checked 상태로 변경시켜준다.
	// 전체 동의가 true면 나머지 다 true
	$terms.prop("checked", $(this).is(":checked"));
});

// 각각의 약관 동의 클릭
$terms.on("click", function(){
	// 각각의 약관의 checked 프로퍼티가 true인 개수를 가져온 뒤
	// 2개 모두 true일 경우 전체 동의도 true이다.
	$all.prop("checked", $terms.filter(":checked").length == $terms.length);
});

// 약관 펼쳐보기
const $aTags = $("a.showTerm");
let $temp;
let checks = new Array(-1, -1); 

$aTags.on("click", function(e){
	e.preventDefault();
	$("#"+ $(this).attr("href")).slideToggle(function(){
		checks[$(this).data("index")] *= -1;
		$(this).prev().find("a").text(checks[$(this).data("index")] > 0 ? "닫기 X" : "펼쳐보기")
	});
});

// 아이디 중복검사
let check = false;
function checkId(memberId){
	if(!memberId){
		$("#result").text("아이디를 입력해주세요.");
		$("#result").css("color", "red");
		return;
	}
	console.log("js들어옴1");
	$.ajax({
		url: contextPath + "/member/checkIdOk.me",
		type: "get",
		data: {memberId: memberId},
		dataType: "json",
		contentType: "application/json; charset=utf-8",
		success: function(data){
			if(!data.result){
				$("#result").text("사용가능한 아이디입니다.")
				$("#result").css("color", "blue");
				check = true;
			}else{
				$("#result").text("중복된 아이디입니다.")
				$("#result").css("color", "red");
				check = false;
			}
		}
	});
}

$("input[name='memberId']").on("blur", function(){
	checkId($(this).val());
});


function send(){
	//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
	var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	//한글이 포함되었는 지 검사
	var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	//같은 문자 4번 이상
	var wordCheck = /(\w)\1\1\1/;
	//공백검사
	var spaceCheck = /\s/;
	
	if(!check){
		joinForm.memberId.focus();
		return;
	}
	
	if(!joinForm.memberPw.value){
		joinForm.memberPw.focus();
		return;
	}
	
	if(!pwCheck.test(joinForm.memberPw.value)){
		joinForm.memberPw.focus();
		return;
	}

	if(hangleCheck.test(joinForm.memberPw.value)){
		joinForm.memberPw.focus();
		return;
	}
	
	if(wordCheck.test(joinForm.memberPw.value)){
		joinForm.memberPw.focus();
		return;
	}

	if(spaceCheck.test(joinForm.memberPw.value)){
		joinForm.memberPw.focus();
		return;
	}
	
	if(joinForm.memberPw.value.length < 4 || joinForm.memberPw.value.length > 20){
		joinForm.memberPw.focus();
		return;
	}
	
	if(!joinForm.memberName.value){
		joinForm.memberName.focus();
		return;
	}
	
	if(!joinForm.memberAge.value){
		joinForm.memberAge.focus();
		return;
	}
	
	if(isNaN(parseInt(joinForm.memberAge.value))){
		joinForm.memberAge.focus();
		return;
	}
	
	if(!$all.is(":checked")){
		$all.focus();
		return;
	}
	
	joinForm.submit();
}










