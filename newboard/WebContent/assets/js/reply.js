/**
 * 댓글 
 */

/*수정 및 삭제 버튼의 요소 저장*/
const $modfiyButtons = $("div.modify-button"); 
const $deleteButtons = $("div.delete-button"); 
let check = true;

/* 비동기 요청의 결과를 표시해주기 위한 메서드*/
show();

/* 댓글 목록을 비동기 요청으로 조회하기 위한 함수*/
function show(){
	$.ajax({
		url: "/reply/listOk.re",
		type: "get",
		data: {boardNumber: boardNumber},
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: showList
	});
}

/* 조회된 댓글 목록을 표시해주기 위한 함수*/
function showList(replies){
	
	/*댓글이 있다면*/
	if(replies.length > 0){
		let text = "";
		
		replies.forEach(reply => {
			text += `<div class="reply">`;
			text += `<div class="info">`
			
			/*댓글 작성한 회원 번호 표시*/
			text += `<p class="writer">` + reply.memberId + `</p>`;
			
			/*댓글 작성한 작성날짜 표시*/
			text += `<p class="date">` + reply.replyDate + `</p>`;
			text += `</div>`
			text += `<div class="content" style="width:100%">`;
			
			/*댓글 작성 내용 표시*/
			text += `<pre>` + reply.replyContent + `</pre>`;
			text += `<div class="dimmed" style="display:none"></div>`;
			text += `</div>`;
			
			/*댓글 작성자와 접속한 회원의 아이디가 같다면*/
			if(reply.memberId == memberId){
				text += `<div class="button-wrap">`;
				
				/*[수정준비(클릭전), 수정(클릭후)],[삭제(클릭전),취소(클릭후)] 2묶음을 토글 형태로 표시해주기 위한 설정*/
				text += `<div class="modify-ready-button" data-number=` + reply.replyNumber +`></div>`;
				text += `<div class="modify-button" data-number=` + reply.replyNumber +` style="display:none;"></div>`;
				text += `<div class="delete-button" data-number=` + reply.replyNumber +`></div>`;
				text += `<div class="cancel-button" data-number=` + reply.replyNumber +` style="display:none;"></div>`;
				text += `</div>`;
			}
			text += `</div>`;
		});
		
		/*id 속성이 replies인 태그에 태그 및 텍스트 내용 표시를 해주는 html()메서드 사용*/
		$("#replies").html(text);
	}
}

/* 댓글 작성시 유효성 검사를 위한 함수*/
function send(){
	let replyContent = replyForm.replyContent.value;
	
	/* 댓글 내용이 없을 경우*/
	if(!replyContent){
		alert("댓글 내용을 작성해주세요.");
		return;
	}
	
	/*작성한 댓글 내용을 비동기 요청을 통해 database에 저장하고, 변경된 내용을 표시해주기 위한 show()함수 호출*/
	$.ajax({
		url: "/reply/writeOk.re",
		type: "get",
		data: {replyContent: replyContent, boardNumber: boardNumber, memberNumber: memberNumber},
		contentType: "application/json; charset=utf-8",
		success: function(){show();}
	});
}

// 이벤트 위임
// 미리 작성된 HTML 태그에 이벤트를 부여하고, DOM으로 추가될 자식에게 이벤트를 위임해준다.
$("#replies").on("click", "div.delete-button", function(){
	let replyNumber = $(this).data("number");
	
	/*비동기 요청으로 댓글 삭제후 변경된 내용을 표시하기 위한 show()함수 호출*/
	$.ajax({
		url: "/reply/deleteOk.re",
		type: "get",
		data: {replyNumber: replyNumber},
		contentType: "application/json; charset=utf-8",
		success: function(){show();}
	});
});

/*id 속성이 replies인 태그에 비동기 요청으로 추가된 태그에 이벤트를 부여하기 위한 이벤트 위임 */
$("#replies").on("click", ".modify-ready-button", function(){
	
	/* 다른 댓글 수정중일때*/
	if(!check) {alert("이미 수정중인 댓글이 있습니다."); return;}
	check = false;
	
	/* 버튼 및 내용 설정을 위한 요소 참조*/
	const buttonWrap = $(this).closest(".button-wrap");
	const buttons = buttonWrap.children();
	const content = buttonWrap.prev().find(":first-child");
	
	/* [수정준비,삭제] 아이콘을 숨기고, [수정,취소] 아이콘을 표시*/
	buttons.eq(0).hide();
	buttons.eq(1).show();
	buttons.eq(2).hide();
	buttons.eq(3).show();
	
	/*표시된 댓글 내용을 변경하기 위해 textarea태그로 대체하여 내용 표시*/
	content.replaceWith("<textarea>" + content.text() +"</textarea>");
	
});

/*id 속성이 replies인 태그에 비동기 요청으로 추가된 태그에 이벤트를 부여하기 위한 이벤트 위임 */
$("#replies").on("click", ".cancel-button", function(){
	
	/* 버튼 및 내용 설정을 위한 요소 참조*/
	const buttonWrap = $(this).closest(".button-wrap");
	const buttons = buttonWrap.children();
	const content = buttonWrap.prev().find(":first-child");
	
	console.log(content.text());
	console.log(content.val());
	
	/* [수정준비,삭제] 아이콘을 표시, [수정,취소] 아이콘을 숨김*/
	buttons.eq(0).show();
	buttons.eq(1).hide();
	buttons.eq(2).show();
	buttons.eq(3).hide();
	
	/* 미리 정의된 형식의 텍스트를 정의할떄 사용*/
	content.replaceWith("<pre>" + content.text() +"</pre>");
});

/*id 속성이 replies인 태그에 비동기 요청으로 추가된 태그에 이벤트를 부여하기 위한 이벤트 위임 */
$("#replies").on("click", ".modify-button", function(){
	
	/* 버튼 및 내용 설정을 위한 요소 참조*/
	const buttonWrap = $(this).closest(".button-wrap");
	const content = buttonWrap.prev().find(":first-child");
	const dimmed = buttonWrap.prev().find(".dimmed");
	
	/* 댓글 내용 변경시 시간이 걸리는 경우 표시되는 함수*/
	dimmed.show();
	
	/* 비동기 요청을 통해 댓글을 변경하고 변경된 내용을 표시하기 위한 show()함수 호출*/
	$.ajax({
		url: "/reply/modifyOk.re",
		data: {replyContent: content.val(), replyNumber: $(this).data("number")},
		success: function(){show(); check = true; dimmed.hide();}
	});
});




















