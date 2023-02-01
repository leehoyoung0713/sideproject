const $all = $("#term");
const $terms = $("#terms");
let idCheck=false;
const $idCheckBtn = $(".OverlapCheck");
var checkModal = false;
var check = true;
var checktwo = true;
var ine = true;
var contentsModalOne = false;
var contentsModalTwo = false;
var contentsModalThree = false;
var contentsModalFour = false;
var contentsModalFive = false;
var contentsModalSix = false;
var contentsModalSeven = false;
var contentsModalEight = false;
var contentsModalNine = false;
var contentsModalTen = false;
var buttonOverlapCheck = false;

/* 아이디 중복 체크 */
var $putId = $("input[name='inputId']");

/* 아이디 입력 창에 들어갔다 나오기만 하면 바로 idCheck는 false로 변경*/
$putId.on("blur", function(){
	idCheck = false;
})

$idCheckBtn.on("click", function(e){
	e.preventDefault();
	checkId($("input[name='inputId']").val());
})

function checkId(inputId){
	if(!inputId){
		$(".idalter").text("아이디를 입력해주세요.");
		return;
	}
	
	/*아이디가 이메일이 아닐 경우*/
	if(!getMail.test($("#id").val())){
		$(".idalter").text("아이디는 이메일 형식으로 입력하셔야 합니다.");
		return;
	}
	
	if(hangleCheck.test(joinForm.inputId.value)){
		$(".idalter").text("아이디는 영어로 입력해주세요.");
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
				$(".idalter").text("사용 가능한 아이디입니다.");
				idCheck = true;
			} else{
				$(".idalter").text("중복된 아이디입니다.");
				idCheck = false;
			}
		}
	});
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


function joinCheck(){
	/*아이디 중복확인이 안되어있을 경우*/
	if(!idCheck){
		joinForm.inputId.focus();
		$("#joinErrorMsg").text("아이디 중복 확인이 필요합니다.");
		return;
	}
	
	/*아이디 한글 포함 유무 검사*/
	if(hangleCheck.test(joinForm.inputId.value)){
		joinForm.inputId.focus();
		$("#joinErrorMsg").text("아이디는 한글을 기재할 수 없습니다.");
		return;
	}
	
	/*아이디 공백 검사*/
	if(spaceCheck.test(joinForm.inputId.value)){
		joinForm.inputId.focus();
		$("#joinErrorMsg").text("아이디는 공백이 들어갈 수 없습니다.");
		return;
	}
	/*이름이 기재되지 않았을 경우*/
	if(!joinForm.inputName.value){
		joinForm.inputName.focus();
		$("#joinErrorMsg").text("이름을 기재해주세요.");
		return
	}
	/*비밀번호가 기재되지 않았을 경우*/
	if(!joinForm.inputPassword.value){
		joinForm.inputPassword.focus();
		$("#joinErrorMsg").text("비밀번호를 기재해주세요.");
		return;
	}
	
	/*비밀번호와 비밀번호 확인이 일치하지 않는 경우*/
	if(joinForm.inputPassword.value != joinForm.inputPasswordCheck.value){
		joinForm.inputPassword.focus();
		$("#joinErrorMsg").text("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
		return;
	}
	
	/*비밀번호가 4자 이하이거나 20자 초과일 경우*/
	 if(joinForm.inputPassword.value.length < 4 || joinForm.inputPassword.value.length > 20){
      joinForm.inputPassword.focus();
		$("#joinErrorMsg").text("비밀번호는 5자 이상, 20자 이하로 작성해주세요.");
      return;
   	}

	/*비밀번호에 대문자/소문자/숫자/특수문자가 모두 포함되어있는지 검사*/
	if(!pwCheck.test(joinForm.inputPassword.value)){
		joinForm.inputPassword.focus();
		$("#joinErrorMsg").text("비밀번호는 대문자, 소문자, 특수문자가 모두 포함되어야 합니다.");
		return;
	}
	
	/*비밀번호에 같은 문자가 4번 이상 들어갔는지 검사*/
	if(wordCheck.test(joinForm.inputPassword.value)){
		joinForm.inputPassword.focus();
		$("#joinErrorMsg").text("비밀번호는 같은 문자가 4번 이상 들어갈 수 없습니다.");
		return;
	}
	
	/*비밀번호 공백 검사*/
	if(spaceCheck.test(joinForm.inputPassword.value)){
		joinForm.inputPassword.focus();
		$("#joinErrorMsg").text("비밀번호는 공백이 들어갈 수 없습니다.");
		return;
	}
	
	/*약관 동의 필수항목 체크 유무 검사*/
	if(!$("#allterm").is(":checked")){
		$("#modalCheck").focus();
		$("#joinErrorMsg").text("약관 동의가 필요합니다.");
		return;
	}

	joinForm.submit();
}
  
$(document).ready(function() {
	    $("#term").click(function() {
		      if($("#term").is(":checked")) {
		      		$("input[name=terms]").prop("checked", true);
		      }
		      else {
		      		$("input[name=terms]").prop("checked", false);
		      }
		      if($("#term").is(":checked")){
		       		$("#allterm").prop("checked", true);
		      } else {
		       		$("#allterm").prop("checked", false);
		       }
	    });
});
	  
$(document).ready(function() {
	    $("input[name=terms]").click(function() {
	      var total = $("input[name=terms]").length;
	      var checked = $("input[name=terms]:checked").length;
	  
	      	if(checked< 2){
					$("#term").prop("checked", false);
					$("#allterm").prop("checked", false);
			} 	else {
					$("#term").prop("checked", true);
					$("#allterm").prop("checked", true);
			} 
	    });
})

$(document).ready(function() {
	    $("#allterm").click(function() {
		      if($("#allterm").is(":checked")) {
		      		$("input[name=terms]").prop("checked", true);
		      }
		      else {
		      		$("input[name=terms]").prop("checked", false);
		      }
		      if($("#allterm").is(":checked")){
		       		$("#term").prop("checked", true);
		      } else {
		       		$("#term").prop("checked", false);
		       }
		})
})







$('.modalclassbutton_one').click(function(){
  	$('.FirstBenefitPopper_firstBenefitPopper__1dKmf').css({"display":"block"}); 
	checktwo = true;
	$(".modalclass").fadeOut();
});


$(function(){ 
    $('#agreement_checkbox').click(function(){
       
        if(!check){
            $('#agreement_checkbox').css("background", "White");
            check = true;
            return;
        }
        $('#agreement_checkbox').css({"background":"url(icons8-검사-확인란-30.png)"});
           $('#agreement_checkbox').css({"background-size":"100%"});
           check = false;
      });

    $("Button.Button_button__3ip2b").click(function(){
      if(checktwo){
      $('.FirstBenefitPopper_firstBenefitPopper__1dKmf').css({"display":"none"});
      checktwo = false;
      }
      $(".modalclass").fadeIn();
    });
    
    $(".modalclass_del").click(function(){
      
       if(!checkModal) {
           $('#agreement_checkbox').css({"background":"url(icons8-검사-확인란-30.png)"});
           $('#agreement_checkbox').css({"background-size":"100%"});
           check = false;
       }

       if(!checktwo) {
        $('.FirstBenefitPopper_firstBenefitPopper__1dKmf').css({"display":"block"});
        checktwo = true;
       }
      $(".modalclass").fadeOut();
	});
  });

$(".eye").click(function(){
	
	if(ine){
		$(this).prev().attr('type', 'text');
		$(this).css('fill', 'black');		
		console.log($(this).next());
		ine = false;
	} else{
		$(this).prev().attr('type', 'password');
		$(this).css('fill', 'rgb(173, 181, 189)');		
		ine = true;
	}
})


$('.modalclass_contents_midtwo_onebutton_one').click(function(){
    if(!contentsModalOne) {
        
        $('.modalclass_contents_midtwo_checkboxopen_one').css('display', 'block');
        contentsModalOne = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_one').css('display', 'none');
        contentsModalOne = false;
        

});

$('.modalclass_contents_midtwo_onebutton_two').click(function(){
    if(!contentsModalTwo) {
        
        $('.modalclass_contents_midtwo_checkboxopen_two').css('display', 'block');
        contentsModalTwo = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_two').css('display', 'none');
    contentsModalTwo = false;
        

});



$('.modalclass_contents_midtwo_onebutton_three').click(function(){
    if(!contentsModalThree) {
        
        $('.modalclass_contents_midtwo_checkboxopen_three').css('display', 'block');
        contentsModalThree = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_three').css('display', 'none');
    contentsModalThree = false;
        

});

$('.modalclass_contents_midtwo_onebutton_four').click(function(){
    if(!contentsModalFour) {
        
        $('.modalclass_contents_midtwo_checkboxopen_four').css('display', 'block');
        contentsModalFour = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_four').css('display', 'none');
    contentsModalFour = false;
        

});

$('.modalclass_contents_midtwo_onebutton_five').click(function(){
    if(!contentsModalFive) {
        
        $('.modalclass_contents_midtwo_checkboxopen_five').css('display', 'block');
        contentsModalFive = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_five').css('display', 'none');
    contentsModalFive = false;
        

});

$('.modalclass_contents_midtwo_onebutton_six').click(function(){
    if(!contentsModalSix) {
        
        $('.modalclass_contents_midtwo_checkboxopen_six').css('display', 'block');
        contentsModalSix = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_six').css('display', 'none');
    contentsModalSix = false;
        

});

$('.modalclass_contents_midtwo_onebutton_seven').click(function(){
    if(!contentsModalSeven) {
        
        $('.modalclass_contents_midtwo_checkboxopen_seven').css('display', 'block');
        contentsModalSeven = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_seven').css('display', 'none');
    contentsModalSeven = false;
        

});

$('.modalclass_contents_midtwo_onebutton_eight').click(function(){
    if(!contentsModalEight) {
        
        $('.modalclass_contents_midtwo_checkboxopen_eight').css('display', 'block');
        contentsModalEight = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_eight').css('display', 'none');
    contentsModalEight = false;
        

});

$('.modalclass_contents_midtwo_onebutton_nine').click(function(){
    if(!contentsModalNine) {
        
        $('.modalclass_contents_midtwo_checkboxopen_nine').css('display', 'block');
        contentsModalNine = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_nine').css('display', 'none');
    contentsModalNine = false;
        

});

$('.modalclass_contents_midtwo_onebutton_ten').click(function(){
    if(!contentsModalTen) {
        
        $('.modalclass_contents_midtwo_checkboxopen_ten').css('display', 'block');
        contentsModalTen = true;
        
        return;
    }
    $('.modalclass_contents_midtwo_checkboxopen_ten').css('display', 'none');
    contentsModalTen = false;
        

});



$('.modalclass_contents_midtwo_onebutton_ten').click(function(){
  var $id = $('.inputId').val();
});