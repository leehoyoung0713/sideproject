const $reviewFilterOrderPhoto = $(".filterPhoto");
const $timeReview = $(".timeReview");
const $page = $("#p.paging");
const $beforePageBtn = $(".beforePageBtn");
const $beforePageBtnLeft = $(".beforePageBtnLeft");
const $clickNumberPagesLeft = $(".pageBtnNumberLeft");
const $ratingInputStar = $(".rating-input__star");
const $starCountWrap = $(".starCountWrap");
const $reviewCommentGoodBtn = $(".reviewCommentGoodBtn");
const $afterPageBtn = $(".afterPageBtn");
const $btnFilter = $(".filter");
const $costFilter = $(".cost");
const $foodFilter = $(".food");
const $cancelButton = $(".cancel");
const $userRegist = $(".userCommentWritingSector");
const $blackPic = $(".blackPic");
const $starFilters = $(".starFilters");
const $searchKeywords = $(".region_by_keyword");

const file = document.querySelector("input[type='file']");
const photoImg = document.querySelector(".commentPhoto");
const thumbnail = document.querySelector("label[for='attach'] div");  // 사용자가 업로드한 파일에 따라 배경 이미지가 변경되어야 하는 객체
const attached = document.querySelector(".attached");
const xButton = document.querySelector(".xButton");
const blackScreen = document.getElementById("blackScreen");
const asideFilter = document.getElementById("asideFilter");
const $filteringStar = $(".filteringStar");

var clickNumberPages = document.querySelectorAll(".pageBtnNumber");
var clickNumberPagesLeft = document.querySelectorAll(".pageBtnNumberLeft");
var filterStarFull = "<svg fill='#FF914D' width='1em' height='1em' preserveAspectRatio='xMidYMid meet' viewBox='0 0 24 24'><defs><path id='star-path-0' d='M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z'></path><clipPath id='star-clip-0'><rect x='0' y='0' width='24' height='24'></rect></clipPath></defs><use xlink:href='#star-path-0' fill='#DBDBDB'></use><use clip-path='url(#star-clip-0)' xlink:href='#star-path-0'></use></svg>";
var filterStar = "<svg fill='#35C5F0' width='1em' height='1em'preserveAspectRatio='xMidYMid meet' viewBox='0 0 24 24'><defs><path id='star-path-114'd='M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z'></path><clipPath id='star-clip-114'><rect x='0' y='0' width='0' height='24'></rect></clipPath></defs><use xlink:href='#star-path-114' fill='#DBDBDB'></use><use clip-path='url(#star-clip-114)'xlink:href='#star-path-114'></use></svg>";

let filterCheck = true;


/* 리뷰 페이징 처리 */

/* 댓글 작성 유효성 검사 */
$(".userCommentWritingSector").click(function(){
	console.log(userNumber);
	if(!userNumber){
		alert("비회원은 댓글을 남길 수 없습니다.");
		$(this).blur();
	}
})


var filterCountStar = 0;

function filterLoad(filter, type){
      let star = (filterCountStar == 0) ? 'none': filterCountStar;
      let order= $(".timeReview.filterActive").val();
      let photo= (!$(".filterPhoto.filterActive").val()) ? 0 : $(".filterPhoto.filterActive").val();
      
      switch(type){
         case 'order':
            order = filter;
         break;
         case 'star':
            star = filter;
         break;
         case 'photo':
            photo = filter;
         break;
      }
      
      console.log(star, order, photo);
      
      $.ajax({
         url: context + "/map/filterOk.pl",
         type: "get",
         data: {star: star, order: order, photo: photo, placeId : placeId},
         dataType: "json",
         success:function(result){
                  //$(".item")[dataNumber].click();
                  var text = "";
                  
                  text += `<p style="font-size:25px;font-weight:700;margin-bottom:25px;">`+ place.place_name+`<span><a href="`+ place.place_url+`"style="font-size:15px;font-weight: 500;opacity: 50%;position: relative;right: -12px;top: 2px;">상세보기</a></span></p>`;
                  if(result.length>0){
                     console.log('있음');
                     $(".reviewItemContainer").show();
                     $(".reviewWritingSection").show();
                     var totalReviewRating=0;
                     var averageReviewRating=0;
                     var fiveStar=0, fourStar=0, threeStar=0, twoStar=0, oneStar = 0;                     
                     result.forEach(place => {
                        totalReviewRating += place.placeReviewRating;
                        text +=`<article class="reviewItem" style="border-top: solid 1px #ededed;"><div class="reviewWriter" style="margin-top: 10px;"><a href="">`;
						text +=`<img src="`+ (place.userFileSystemName == null? context + `/images/logo.png` : context + `/upload/user/`+ place.userFileSystemName) + `" class="writerImage"></a><div class="reviewWriterInfo"><p class="writerInfoId">`+place.userName +`</p><div class="reviewWriterInfoBottomWrap"><div class="reviewWriterInfoStarWrap" type="button"><span class="reviewWriterInfoTotalStar">`;
                        for(var i = 0; i < place.placeReviewRating; i++){
                           text +=`<svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;                           
                        }
                        if(place.placeReviewRating !=5){
                           var reviewRatingCount = 5-place.placeReviewRating;
                           for(var i=0; i< reviewRatingCount; i++){
                              text +=`<svg fill="#dadce0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;                        
                           }                           
                        }
 						text += `</span></div><span class="reviewWriterInfoDate">` + place.placeReviewDateTime + `</span>`
						text += `<span class="modifyDeleteLine" style="position: relative;right: -455px;font-size:13px;">`;
						if(place.userNumber==userNumber){
							text += `<span class="modify" style="margin-right:5px;" data-number=`+ place.placeReviewNumber +`><button>수정</button></span>`;
							text += `<span class="modifyClicked" style="margin-right:5px;display:none;" data-number=`+ place.placeReviewNumber +`><button>취소</button></span>`;
							text += `<span class="delete" data-number =`+ place.placeReviewNumber +`><button>삭제</button></span>`;
							text += `<span class="deleteClicked" style="display:none;" data-number =`+ place.placeReviewNumber +`><button>확인</button></span></span></span>`;									
						}
							text += `</div></div></div><button type="button" class="reviewItemImage">`;
						if(place.reviewFileSystemName){
							text +=`<img src= "/upload/review/` + place.reviewFileSystemName + `" class="reviewItemImageBtn">`;									
						}
						text += `</button><p class="reviewComment">`;
						text += place.placeReviewContents + `</p><div class="reviewCommentGood"  style="margin-bottom:15px;">`;

						
						if(!place.help){
							text +=`<button type="button" class="reviewCommentGoodBtn" data-number =`+ place.placeReviewNumber +`><div class="reviewCommentGoodBtnTxt">도움이 돼요</div>`;									
						} else{
							text +=`<button type="button" class="reviewCommentGoodBtn clicked" data-number =`+ place.placeReviewNumber +`><div class="reviewCommentGoodBtnTxt">도움 됨</div>`;
						}
						text += `</button><span class="helpful" style="line-height:30px; font-size:12px">`+ place.placeReviewHelful +`명에게 도움이 되는 댓글입니다.</span></div></article>`;	
						
                     });
                     
                     /*리뷰 항목들 리스트 출력*/
                     $("#reviewList").html(text);
                  } else{
                     console.log('없음');
                     $(".reviewItemContainer").show();
                     text += `<p>등록된 후기가 없습니다.</p>`;
                     $("#reviewList").html(text);
                     $(".reviewWritingSection").show();
                  }
               }
   });
}



/* 게시글 삭제 */
$(".reviewList").on("click", ".delete", function(){
	let reviewNumber = $(this).data("number");
	if(!confirm('삭제하시면 복구할 수 없습니다. \n 정말로 삭제하시겠습니까?')){
		return;
	} else{
		$.ajax({
			url: contextPath + "/map/mapReviewDelete.pl",
			type: "get",
			data: {reviewNumber: reviewNumber},
			contentType: "application/json; charset=utf-8",
			success:function(){
				console.log("성공");
				$(".item")[dataNumber].click();
			},
			error: function(){
				alert("실패");
			}
		})
	}
})

var modifyOriginaltext = "";

/* 게시글 수정 */

/* 수정 버튼 클릭 시 */
$(".reviewList").on("click", ".modify", function(){
	
	/*수정 버튼 클릭 시 텍스트 바뀜*/
	$(".modify").hide();
	$(".delete").hide();
	$(".modifyClicked").show();
	$(".deleteClicked").show();
	
	const modifyLine = $(this).closest("article").find("p.reviewComment");
	modifyLine.replaceWith("<p class='replyModifyLine'><textarea class='textAreaModify' maxlength='50'>" + modifyLine.text() + "</textarea></p>")
	modifyOriginaltext = modifyLine.text();

})

/* 수정 취소 버튼 클릭 */
$(".reviewList").on("click", ".modifyClicked", function(){
	
	/*수정 취소 버튼 클릭 시 텍스트 원상복귀*/
	$(".modify").show();
	$(".delete").show();
	$(".modifyClicked").hide();
	$(".deleteClicked").hide();
	
	/*textarea 없애고 다시 원글로 바꾸기*/
	$(this).closest("article").find("p.replyModifyLine").replaceWith(`<p class="reviewComment">` + modifyOriginaltext + `</p>`);
	
})

/* 수정 확인 버튼 클릭 시 */
$(".reviewList").on("click", ".deleteClicked", function(){
	var placeReviewContents = $(".textAreaModify").val().replace(/\</g,'&lt;');
	placeReviewContents=placeReviewContents.replace(/\>/g,'&gt;');
	let reviewNumber = $(this).data("number");

	$.ajax({
		url: contextPath +"/map/mapReviewModify.pl",
		type: "get",
		data: {
			reviewNumber: reviewNumber,
			placeReviewContents: placeReviewContents
			},
		success: function(){
			alert("수정이 완료되었습니다.");
			$(".item")[dataNumber].click();
		}
		
	})
})





/*카테고리 필터*/
$categoryCheckbox = $("input[name='cc']");

$(".mapSearch").hide();
$(".region_by_keywords_wrap").hide();

$categoryCheckbox.click(function(){
	$(".searchError").text("");
	document.getElementById('keyword').value="";
	if($(this).attr('class')=="categoryCheckbox checked"){
		$(this).attr('class', 'categoryCheckbox');
		$("input[name='categoryValueForm']").val("");
		$(".mapSearch").hide();
		$(".region_by_keywords_wrap").hide();
		$(".searchSection").val("");
	} else{
		if($(".categoryCheckbox checked")){
			$(".region_by_keywords_wrap").show();
		}
		var recommendText = "";
		if($(this).attr('id')=="hotel"){
			recommendText += `<div class="region_by_keywords">`;
			recommendText +=`<a class="region_by_keyword" href="">호텔</a>`
			recommendText +=`<a class="region_by_keyword" href="">펜션</a>`
			recommendText +=`<a class="region_by_keyword" href="">캠핑장</a>`
            recommendText +=`</div>`;
			$(".mapSearch").hide();               
		} else if($(this).attr('id')=="restaurant"){
			recommendText += `<div class="region_by_keywords">`;
			recommendText +=`<a class="region_by_keyword" href="">식당</a>`
			recommendText +=`<a class="region_by_keyword" href="">카페</a>`
            recommendText +=`</div>`;        
			$(".mapSearch").hide();
		} else if($(this).attr('id')=="playground"){
			$(".region_by_keywords_wrap").hide();
			$(".mapSearch").show();
			$("input[name='categoryValueForm']").val($(this).val())
			searchPlaces();
		} else if($(this).attr('id')=="hospital"){
			recommendText += `<div class="region_by_keywords">`;
			recommendText +=`<a class="region_by_keyword" href="">일반</a>`
			recommendText +=`<a class="region_by_keyword" href="">24시</a>`
			recommendText +=`<a class="region_by_keyword" href="">특수동물</a>`
            recommendText +=`</div>`; 
			$(".mapSearch").hide();     
		} else if($(this).attr('id')=="school"){
			$(".region_by_keywords_wrap").hide();
			$(".mapSearch").show();
			$("input[name='categoryValueForm']").val($(this).val())
			searchPlaces();
		} 
 
		$(".region_by_keywords_wrap").html(recommendText);
		$categoryCheckbox.prop('checked', false);
		$(this).prop('checked', true);
		$categoryCheckbox.attr('class', 'categoryCheckbox');
		$(this).attr('class','categoryCheckbox checked');
		$("input[name='categoryValueForm']").val($(this).val());
	}
})

/* ======== */
$(".inner").on("click", ".region_by_keyword", function(e){
	e.preventDefault();
	$(".region_by_keyword").attr('class', 'region_by_keyword');
	$(".region_by_keyword").css('color', '#7F7F7F');
	$(this).attr('class', 'region_by_keyword selected');
	$(this).css('color', 'rgb(227, 122, 56)');
	$(".mapSearch").show();     
	document.getElementById('categoryValueForm').value = $(".categoryCheckbox.checked").val();
	if($(this).text() == "특수동물"){document.getElementById('categoryValueForm').value = "특수동물 병원";}
	else if($(this).text() == "일반"){document.getElementById('categoryValueForm').value = "동물 병원";}
	else{
		document.getElementById('categoryValueForm').value = document.getElementById('categoryValueForm').value + $(this).text();
	}
	searchPlaces();
})

/* 지도 */
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var count = 0;


// 키워드로 장소를 검색합니다
searchPlaces();


// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {
    var keyword = document.getElementById('categoryValueForm').value + " " + document.getElementById('keyword').value;
    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch(keyword, placesSearchCB); 

}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
		
        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);
		$("#menu_wrap").show();
        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
		$(".searchError").text("검색 결과가 존재하지 않습니다.");
		$("#menu_wrap").hide();
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {
        alert('검색 결과 중 오류가 발생했습니다.');
        return;
    }
}


/*전역변수로 선언*/
var placeId="";
var placeAddress = "";
var placeName = "";
var dataNumber ="";
var place="";
var placeReviewNumber="";
var helpCheck=false;
$(".reviewItemContainer").hide();
$(".reviewWritingSection").hide();
// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {
	
	$(".searchError").text("");
    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();

    
    for ( var i=0; i<places.length; i++ ) {

		
        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });
			
			kakao.maps.event.addListener(marker, 'click', function() {
				console.log(marker);
            });



            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

			itemEl.onclick = function(){
				dataNumber = $(this).parent().children().length-$(this).nextAll().length-1;
				place = places[dataNumber];

				var url = 'https://map.kakao.com/link/map/' + place.id;
				console.log(place.id);
				console.log(place.address_name);
				console.log(place.place_name);
				
				
				
								
				/*DB에 저장할 장소 ID값*/
				placeId = place.id;
				placeReviewNumber = place.placeReviewNumber;
				placeAddress = place.address_name;
				placeName = place.place_name;
		
				
				/*여기서 aJax로 게시글 정보 부르고, 게시글 작성하기*/
			
			let text ="";
			$.ajax({
					url: contextPath +"/map/mapReview.pl",
					type: "get", 
					dataType: "json", 
					contentType: "application/json; charset=utf-8",
					data: {
						placeId: place.id,
						placeAddress: place.address_name,
						placeName: place.place_name
					},
					success: function(result){
						text += `<p style="font-size:25px;font-weight:700;margin-bottom:25px;">`+ place.place_name+`<span><a href="`+ place.place_url+`"style="font-size:15px;font-weight: 500;opacity: 50%;position: relative;right: -12px;top: 2px;">상세보기</a></span></p>`;
						if(result.length>0){
							$(".reviewItemContainer").show();
							$(".reviewWritingSection").show();
							var totalReviewRating=0;
							var averageReviewRating=0;
							var fiveStar=0, fourStar=0, threeStar=0, twoStar=0, oneStar = 0;							
							result.forEach(place => {
								totalReviewRating += place.placeReviewRating;
								text +=`<article class="reviewItem" style="border-top: solid 1px #ededed;"><div class="reviewWriter" style="margin-top: 10px;"><a href="">`;
								text +=`<img src="`+ (place.userFileSystemName == null? context + `/images/logo.png` : context + `/upload/user/`+ place.userFileSystemName) + `" class="writerImage"></a><div class="reviewWriterInfo"><p class="writerInfoId">`+place.userName +`</p><div class="reviewWriterInfoBottomWrap"><div class="reviewWriterInfoStarWrap" type="button"><span class="reviewWriterInfoTotalStar">`;
								for(var i = 0; i < place.placeReviewRating; i++){
									text +=`<svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;									
								}
								if(place.placeReviewRating !=5){
									var reviewRatingCount = 5-place.placeReviewRating;
									for(var i=0; i< reviewRatingCount; i++){
										text +=`<svg fill="#dadce0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;								
									}									
								}
								text += `</span></div><span class="reviewWriterInfoDate">` + place.placeReviewDateTime + `</span>`
								text += `<span class="modifyDeleteLine" style="position: relative;right: -455px;font-size:13px;">`;
								if(place.userNumber==userNumber){
									text += `<span class="modify" style="margin-right:5px;" data-number=`+ place.placeReviewNumber +`><button>수정</button></span>`;
									text += `<span class="modifyClicked" style="margin-right:5px;display:none;" data-number=`+ place.placeReviewNumber +`><button>취소</button></span>`;
									text += `<span class="delete" data-number =`+ place.placeReviewNumber +`><button>삭제</button></span>`;
									text += `<span class="deleteClicked" style="display:none;" data-number =`+ place.placeReviewNumber +`><button>확인</button></span></span></span>`;									
								}
									text += `</div></div></div><button type="button" class="reviewItemImage">`;
								if(place.reviewFileSystemName){
									text +=`<img src= "/upload/review/` + place.reviewFileSystemName + `" class="reviewItemImageBtn">`;									
								}
								text += `</button><p class="reviewComment">`;
								text += place.placeReviewContents + `</p><div class="reviewCommentGood"  style="margin-bottom:15px;">`;

								
								if(!place.help){
									text +=`<button type="button" class="reviewCommentGoodBtn" data-number =`+ place.placeReviewNumber +`><div class="reviewCommentGoodBtnTxt">도움이 돼요</div>`;									
								} else{
									text +=`<button type="button" class="reviewCommentGoodBtn clicked" data-number =`+ place.placeReviewNumber +`><div class="reviewCommentGoodBtnTxt">도움 됨</div>`;
								}
								text += `</button><span class="helpful" style="line-height:30px; font-size:12px">`+ place.placeReviewHelful +`명에게 도움이 되는 댓글입니다.</span></div></article>`;	
								
								/* 막대 필터에 필요한 정보 추가 */
								if(place.placeReviewRating == 5){
									fiveStar++;
								} else if(place.placeReviewRating ==4){
									fourStar++;
								} else if(place.placeReviewRating ==3){
									threeStar++;
								} else if(place.placeReviewRating ==2){
									twoStar++;
								} else if(place.placeReviewRating ==1){
									oneStar++;
								} 
							});
							
							/*리뷰 항목들 리스트 출력*/
							$("#reviewList").html(text);
							
							/*전체 평점 구하기*/
							
							var averageStar="";
							averageReviewRating = totalReviewRating / result.length;
							$(".badge").html(averageReviewRating.toFixed(1));
							var avgReviewRating = 0;
							avgReviewRating = parseInt(averageReviewRating.toFixed(0))+1;
							if(averageReviewRating.toFixed(1)-averageReviewRating.toFixed(0)>=0.5){
								/*평균 평점이 5점인 경우*/
								if(averageReviewRating.toFixed(0)==5){
									for(var i=0; i<5; i++){
										averageStar += `<svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;
									}
								} else {
									for(i=0; i < avgReviewRating;i++){
										averageStar += `<svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;
									}
									for(i=0; i < 5-(avgReviewRating);i++){
										averageStar += `<svg fill="#dadce0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;
									}
								}
							} else{
									for(var i=0; i<averageReviewRating.toFixed(0); i++){
										averageStar += `<svg fill="#FF914D" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;
									}
									for(i=0; i < 5-averageReviewRating.toFixed(0);i++){
										averageStar += `<svg fill="#dadce0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><defs><path id="star-path-140" d="M11.9996 19.7201L6.32294 22.1251C5.5626 22.4472 5.005 22.0311 5.0755 21.2188L5.60855 15.0767L1.5671 10.421C1.02579 9.79745 1.24924 9.13855 2.04358 8.95458L8.04973 7.56354L11.2287 2.28121C11.6545 1.57369 12.3502 1.5826 12.7706 2.28121L15.9496 7.56354L21.9557 8.95458C22.7602 9.1409 22.9667 9.8053 22.4322 10.421L18.3907 15.0767L18.9238 21.2188C18.9952 22.0414 18.4271 22.4432 17.6764 22.1251L11.9996 19.7201Z"></path><clipPath id="star-clip-140"><rect x="0" y="0" width="24" height="24"></rect></clipPath></defs><use xlink:href="#star-path-140" fill="#DBDBDB"></use><use clip-path="url(#star-clip-140)" xlink:href="#star-path-140"></use></svg>`;
									}
							}
							
							$(".starIcon").html(averageStar);
							
							
							/* 점수 막대 필터 구하기*/
							var scoreBar = "";

							scoreBar += `<div class="production-review-feed__header-v2__stars__avg__container"><div class="production-review-feed__header-v2__stars__avg__label label_selected"> 5점 </div><div class="production-review-feed__header-v2__stars__avg__bar"><div class="production-review-feed__header-v2__stars__avg__bar__bg"></div><div class="production-review-feed__header-v2__stars__avg__bar__color" style="width: `;
							scoreBar += (fiveStar / result.length)*100;
							scoreBar += `%;"></div></div><div class="production-review-feed__header-v2__stars__avg__number label_selected">`;
							scoreBar += fiveStar;
							scoreBar += `</div></div>`

							scoreBar += `<div class="production-review-feed__header-v2__stars__avg__container"><div class="production-review-feed__header-v2__stars__avg__label label_selected"> 4점 </div><div class="production-review-feed__header-v2__stars__avg__bar"><div class="production-review-feed__header-v2__stars__avg__bar__bg"></div><div class="production-review-feed__header-v2__stars__avg__bar__color" style="width: `;
							scoreBar += (fourStar / result.length)*100;
							scoreBar += `%;"></div></div><div class="production-review-feed__header-v2__stars__avg__number label_selected">`;
							scoreBar += fourStar;
							scoreBar += `</div></div>`

							scoreBar += `<div class="production-review-feed__header-v2__stars__avg__container"><div class="production-review-feed__header-v2__stars__avg__label label_selected"> 3점 </div><div class="production-review-feed__header-v2__stars__avg__bar"><div class="production-review-feed__header-v2__stars__avg__bar__bg"></div><div class="production-review-feed__header-v2__stars__avg__bar__color" style="width: `;
							scoreBar += (threeStar / result.length)*100;
							scoreBar += `%;"></div></div><div class="production-review-feed__header-v2__stars__avg__number label_selected">`;
							scoreBar += threeStar;
							scoreBar += `</div></div>`

							scoreBar += `<div class="production-review-feed__header-v2__stars__avg__container"><div class="production-review-feed__header-v2__stars__avg__label label_selected"> 2점 </div><div class="production-review-feed__header-v2__stars__avg__bar"><div class="production-review-feed__header-v2__stars__avg__bar__bg"></div><div class="production-review-feed__header-v2__stars__avg__bar__color" style="width: `;
							scoreBar += (twoStar / result.length)*100;
							scoreBar += `%;"></div></div><div class="production-review-feed__header-v2__stars__avg__number label_selected">`;
							scoreBar += twoStar;
							scoreBar += `</div></div>`

							scoreBar += `<div class="production-review-feed__header-v2__stars__avg__container"><div class="production-review-feed__header-v2__stars__avg__label label_selected"> 1점 </div><div class="production-review-feed__header-v2__stars__avg__bar"><div class="production-review-feed__header-v2__stars__avg__bar__bg"></div><div class="production-review-feed__header-v2__stars__avg__bar__color" style="width: `;
							scoreBar += (oneStar / result.length)*100;
							scoreBar += `%;"></div></div><div class="production-review-feed__header-v2__stars__avg__number label_selected">`;
							scoreBar += oneStar;
							scoreBar += `</div></div>`
							
							$(".rightReviewScore").html(scoreBar);
							
						} else{
							text += `<p>등록된 후기가 없습니다.</p>`;
							$("#reviewList").html(text);
							$(".reviewItemContainer").hide();
							$(".reviewWritingSection").show();
						}
					}
				});
				return;
			}
			
            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}




// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                `<h5 style='font-size: 20px;'>` + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '<span>' + places.road_address_name + '</span>' +
                    '<span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '<span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '<span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
			
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
    return marker;
}



// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}


/* 지도 컨트롤러 만들기 */
// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


/*================================================*/

/* 좌표로 주소값 찾기 */
// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);

// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
            
            var content = '<div class="bAddr">' +
                            '<span class="title">법정동 주소정보</span>' + 
                            detailAddr + 
                        '</div>';

            // 마커를 클릭한 위치에 표시합니다 
            marker.setPosition(mouseEvent.latLng);
            marker.setMap(map);

            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
            infowindow.setContent(content);
            infowindow.open(map, marker);
        }   
    });
});

// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var infoDiv = document.getElementById('centerAddr');

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                break;
            }
        }
    }    
}




/*================================================*/

/* 별점순 필터 껐다 켰다 하기 */
function closeStarFilter() {
    if(filterCheck){
            $('#starFilterOption').attr('class','animated-popout drop-down__content share-drop-down production-selling-header__action__modal open open-active');
            $('#popOut').attr('class', 'popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2');
            filterCheck=false;
    }
    else{
        $('#starFilterOption').attr('class', 'popout--axis-1 popout--dir-2 share-drop-down filterBtnOff');
        $('#popOut').attr('class', 'popOutDisplayNone');
        filterCheck=true;
    }
}

/* 별점 필터 누적 */
$starCountWrap.click(function(){
    var star="";

	/*몇 점짜리인지 알아보기 위해 숫자 저장*/
	filterCountStar = $(this).nextAll().length+1
	
    
    if($(this).attr('class')=="starCountWrap"){
		$(".starCountWrap").attr("class", "starCountWrap");
        $(this).attr("class", "starCountWrap select");
		$filteringStar.empty();
        for(var i=0; i<$starCountWrap.length; i++){
            if($starCountWrap[i].className=="starCountWrap select"){
                
                for(var j=0; j<5-i;j++){
                    star +=filterStarFull;
                }
                if(i!=0){
                    for(var j=0; j<i;j++){
                        star +=filterStar;
                    }
                }
                var countText = $starCountWrap[i].innerText.trim();
				
                $filteringStar.append("<span class='starFilters'><span class='hoverStar'>" + star + countText + "</span><button type='button' class='starPic'><img src='../../images/xButton.png' style='width: 20px;height: 15px;margin-right: 5px;position: relative;opacity: 75%;'></button></span>");
                $(this).attr("class", "starCountWrap selected");
                return;
            }
        }
    }
    else if($(this).attr('class')=="starCountWrap selected"){
        $filteringStar.empty();
        $(this).attr('class','starCountWrap');
        for(var i=0; i<$starCountWrap.length; i++){
            if($starCountWrap[i].className=="starCountWrap selected"){
                for(var j=0; j<5-i;j++){
                    star += filterStarFull;
                }
                if(i!=0){
                    for(var j=0; j<i;j++){
                        star += filterStar;
                    }
                }
                var countText = $starCountWrap[i].innerText.trim();
                $filteringStar.append("<span class='starFilters'><span class='hoverStar'>" + star + countText + "</span><button type='button' class='starPic'><img src='..//..//images/xButton.png' style='width: 15px;height: 15px;margin-right: 5px;position: relative;opacity: 75%;'></button></span>");
            }
        }
    }
})


/* 별 누르면 삭제 */
$(document).on("click", ".hoverStar", function(){
	filterCountStar = 0;
    for(var i=0; i<$('.starPic').length;i++){
        $('.starPic')[i].className="starPic";
    }
    $(this).next().attr('class', 'starPic check');
    for(var i=0;i<$('.starPic').length;i++){
        if($('.starPic')[i].className.includes('check')){
            var deleteStarText = $('.starFilters')[i].innerText;
            $('.starFilters')[i].remove();
        }
        for(var j=0;j<$('.starCountText').length;j++){
            if(deleteStarText == $('.starCountText')[j].innerText.trim()){
                $starCountWrap[j].className='starCountWrap';
            }
        }
    }
})

$(document).on("click", ".starPic", function(){
    for(var i=0; i<$('.starPic').length;i++){
        $('.starPic')[i].className="starPic";
    }
    $(this).attr('class', 'starPic check');
    for(var i=0;i<$('.starPic').length;i++){
        if($('.starPic')[i].className.includes('check')){
            var deleteStarText = $('.starFilters')[i].innerText;
            $('.starFilters')[i].remove();
        }
        for(var j=0;j<$('.starCountText').length;j++){
            if(deleteStarText == $('.starCountText')[j].innerText.trim()){
                $starCountWrap[j].className='starCountWrap';
            }
        }
    }
})

$(document).on("mouseover", ".hoverStar", function(){
    $(this).css('opacity','30%');
    $(this).next().css('visibility', 'visible');
})

$(document).on("mouseleave", ".hoverStar", function(){
    $(this).css('opacity','100%');
    $(this).next().css('visibility', 'hidden');
})


/* 필터들 다른 곳 클릭하면 꺼지게 만들기 */
$(document).mouseup(function (e){
    var layerPopupDisplay = $('#popOut');
    var layerPopup = $('#starFilterOption');
    var innerFilter = $('#asideFilter');
    var blackScreen = $('.black_screen');
    if(layerPopup.has(e.target).length === 0){
        layerPopupDisplay.attr("class", "popOutDisplayNone");
        layerPopup.attr("class", "popout--axis-1 popout--dir-2 share-drop-down filterBtnOff");
    }
    if(innerFilter.has(e.target).length === 0 ){
        innerFilter.attr("style", "display:none");
        blackScreen.attr("style", "display:none");
		document.body.style.overflowY='scroll';
    }
  });


/* 왼쪽 필터 선택 */
$btnFilter.click(function(){
    blackScreen.style.display='block';
    asideFilter.style.display='block';
    document.body.style.overflowY='hidden';
})

/* 필터 끝내기 버튼 */
$cancelButton.click(function(){
    blackScreen.style.display='none';
    asideFilter.style.display='none';
	document.body.style.overflowY='scroll';
})



/* 필터 가격 정보 */
$costFilter.click(function(){
    if($(this).attr('class') == "cost"){
        $(this).attr('class', 'cost checked');
    } else{
        $(this).attr('class', 'cost');
    }
})

/* 필터 음식 정보 */
$foodFilter.click(function(){
    if($(this).attr('class') == "food"){
        $(this).attr('class', 'food checked');
    } else{
        $(this).attr('class', 'food');
    }
})


/* 도움이 돼요 클릭 */
$(".column-module").on("click", ".reviewCommentGoodBtn", function(){

	var thisNumber =  $(this).data("number");
	var click = $(this).next();
	if(!userNumber){
		alert("비회원은 도움 버튼을 클릭하실 수 없습니다.");
		return;
	}

	if ($(this).attr('class') == "reviewCommentGoodBtn") {
        $(this).attr("class", "reviewCommentGoodBtn clicked");
        $(this).children('div').text("도움됨");

    $.ajax({        /*도움이 돼요 증가*/     
       	type: "GET",          
        url: context + "/map/mapHelpfulUp.pl",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data : {
			placeReviewNumber : thisNumber,
			userNumber : userNumber,
			placeId : placeId
			},
        success: function (result) {

			console.log(click.text());
			click.text(result + '명에게 도움이 되는 댓글입니다.');
 			//console.log($('.helpful')[thisNumber-1].innerHTML);
			//console.log(result);
			//$('.helpful')[thisNumber-1].innerHTML = result + "명에게 도움이 되는 댓글입니다.";

        },
		error: function(e){
		}
	});
    } else {
        $(this).attr('class', 'reviewCommentGoodBtn');
        $(this).children('div').text("도움이 돼요");
	    $.ajax({             /*도움이 돼요 감소*/
	       type: "GET",          
	        url: context + "/map/mapHelpfulDown.pl",
	        contentType: "application/json; charset=utf-8",        
	        dataType: "json",
        	data : {
				placeReviewNumber : $(this).data("number"),
				userNumber : userNumber,
				placeId : placeId
			},   

	         success: function (result) {
	 			console.log(click.text());
				click.text(result + '명에게 도움이 되는 댓글입니다.');
        }, error: function(){
			}
	});
    }
})




/* 사진리뷰 선택/해제 */
$(".column-module").on("click", ".filterPhoto", function(){
	    if (document.getElementById('filterPhoto').className.includes("filterActive")) {
        document.getElementById('filterPhoto').className = 'bestReview reviewSecond filterPhoto';
    } else {
        document.getElementById('filterPhoto').className += " filterActive";
    }
})



/* 베스트순, 최신순 */
$(".column-module").on("click", ".timeReview",function () {

    if (document.getElementById('bestReview').className.includes("filterActive")) {
        document.getElementById('bestReview').className = 'bestReview reviewSecond timeReview';
        document.getElementById('recentReview').className += ' filterActive';
    } else {
        document.getElementById('bestReview').className += ' filterActive';
        document.getElementById('recentReview').className = 'bestReview reviewSecond timeReview';
    }
})


/* 오른쪽 페이지 하단 댓글 번호 */
$('li button.pageBtnNumber').click(function () {
    $('li button.pageBtnNumber').removeClass("clickNumber");
    $(this).addClass("clickNumber");
    /* 후기페이지 1페이지일 경우 이전으로 가기 버튼 없애기 */
    if ($('li button.pageBtnNumber')[0].className.includes("clickNumber")) {
        document.getElementById('beforePageArrow').className += ' firstPage';
    } else {
        document.getElementById('beforePageArrow').className = 'beforePageArrow';
    }
});


/* 오른쪽 페이지 화살표로 이동하기(뒤로) */
$('.afterPageBtn').click(function(){
    document.getElementById('beforePageArrow').className = 'beforePageArrow';
    if(clickNumberPages[9].className != "pageBtnNumber clickNumber"){
        for(var i=0; i < clickNumberPages.length; i++){
            if(clickNumberPages[i].className.includes("clickNumber")){
                clickNumberPages[i].className = "pageBtnNumber";
                clickNumberPages[i+1].className = "pageBtnNumber clickNumber";
                return;
            }
        }
    }
})

/* 오른쪽 화살표로 이동하기(앞으로) */
$('.beforePageBtn').click(function(){
    if(clickNumberPages[9].className != "pageBtnNumber clickNumber"){
        for(var i=0; i < clickNumberPages.length; i++){
            if(clickNumberPages[i].className.includes("clickNumber")){
                clickNumberPages[i].className = "pageBtnNumber";
                clickNumberPages[i-1].className = "pageBtnNumber clickNumber";
                if((i-1)==0){
                    document.getElementById('beforePageArrow').className = 'beforePageArrow firstPage';
                }
                return;
            }
        }
    }
})



/* 왼쪽 페이지 하단 댓글 번호 */
$('li button.pageBtnNumberLeft').click(function () {
    $('li button.pageBtnNumberLeft').removeClass("clickNumber");
    $(this).addClass("clickNumber");
    /* 후기페이지 1페이지일 경우 이전으로 가기 버튼 없애기 */
    if ($('li button.pageBtnNumberLeft')[0].className.includes("clickNumber")) {
        document.getElementById('beforePageArrowLeft').className += ' firstPage';
    } else {
        document.getElementById('beforePageArrowLeft').className = 'beforePageArrowLeft';
    }
});


/* 왼쪽 페이지 화살표로 이동하기(뒤로) */
$('.afterPageBtnLeft').click(function(){
    document.getElementById('beforePageArrowLeft').className = 'beforePageArrowLeft';
    if(clickNumberPagesLeft[4].className != "pageBtnNumberLeft clickNumber"){
        for(var i=0; i < clickNumberPagesLeft.length; i++){
            if(clickNumberPagesLeft[i].className.includes("clickNumber")){
                clickNumberPagesLeft[i].className = "pageBtnNumberLeft";
                clickNumberPagesLeft[i+1].className = "pageBtnNumberLeft clickNumber";
                return;
            }
        }
    }
})

/* 왼쪽 화살표로 이동하기(앞으로) */
$('.beforePageBtnLeft').click(function(){
    if(clickNumberPagesLeft[0].className != "pageBtnNumberLeft clickNumber"){
        for(var i=0; i < clickNumberPagesLeft.length; i++){
            if(clickNumberPagesLeft[i].className.includes("clickNumber")){
                clickNumberPagesLeft[i].className = "pageBtnNumberLeft";
                clickNumberPagesLeft[i-1].className = "pageBtnNumberLeft clickNumber";
                if((i-1)==0){
                    document.getElementById('beforePageArrowLeft').className = 'beforePageArrowLeft firstPage';
                }
                return;
            }
        }
    }
})



/* 후기 별점 마우스 갖다 댔을 때 */
$ratingInputStar.mouseover(function () {
    for (var i = 0; i < $ratingInputStar.length; i++) {
        $ratingInputStar[i].className = 'rating-input__star';
    }

    for (var i = 0; i < $ratingInputStar.length; i++) {
        $(this).attr("class", "rating-input__star suggested");
        if ($ratingInputStar[i].className.includes("suggested")) {
            for (var j = 0; j < i + 1; j++) {
                $ratingInputStar[j].className = "rating-input__star suggested";
            }
        }
    }

})

$ratingInputStar.click(function () {
    for (var i = 0; i < $ratingInputStar.length; i++) {
        $ratingInputStar[i].className = 'rating-input__star';
    }

    for (var i = 0; i < $ratingInputStar.length; i++) {
        $(this).attr("class", "rating-input__star suggested");
        if ($ratingInputStar[i].className.includes("suggested")) {
            for (var j = 0; j < i + 1; j++) {
                $ratingInputStar[j].className = "rating-input__star selected";
            }
        }
    }
})



/* 첨부파일 */
file.addEventListener("change", function(e){
    var reader = new FileReader();  // 업로드한 파일을 읽어올 객체
    reader.readAsDataURL(e.target.files[0]);
    reader.onload = function(e){
        let url = e.target.result;
        // 이미지 파일인지 아닌지 검사하여 이미지 파일이 아닐 경우 알림창 뜸
        if(url.includes('image')){
            thumbnail.className = 'attached';
            thumbnail.style.backgroundImage = "url('" + url + "')";
            xButton.className='xButtonActive';
        }else{
            alert("이미지 파일만 업로드 가능합니다.");
        }
    }
})

/* 첨부파일 삭제 */
function xBtn(){
    thumbnail.className = 'attach';
    xButton.className = 'xButton';
    $(".attach").removeAttr( 'style' );
}
 

function refreshReviewList(){
        location.reload();
}

/* 글 작성 안하면 알람창 */
function resist(){
    if($userRegist.val().length < 10){
        alert("글은 10자 이상 작성해주셔야 합니다.");
        return false;
    }

	if(!$(".rating-input__star.suggested").length){
		alert("별점을 기재해주세요.")
		return;
	}

	var reviewRating = $(".rating-input__star.suggested").length;

	/*formData 생성 및 key, value 삽입*/
   	var formData = new FormData();
	/*글*/
	var modifyCommentSector=$(".userCommentWritingSector").val().replace(/\</g,'&lt;');
	modifyCommentSector=modifyCommentSector.replace(/\>/g,'&gt;');
	/*formData.append("placeReviewContents", $(".userCommentWritingSector").val())*/
	formData.append("placeReviewContents",modifyCommentSector);
	
	/*사진*/
	formData.append("placeReviewFile", $('.cameraImgWrap')[0].files[0])
	
	/*placeId*/
	formData.append("placeId", placeId);
	
	/*placeName*/
	formData.append("placeName", placeName);
	
	/*placeAddress*/
	formData.append("placeAddress", placeAddress);
	
	/*점수*/
	formData.append("reviewRating", $(".rating-input__star.suggested").length)

/*==================== 글등록 + 사진등록 ajax =====================*/    
    $.ajax({             
       type: "POST",          
        enctype: 'multipart/form-data',  
        url: context + "/map/mapReviewOk.pl",        
        data: formData,
        processData: false,
        contentType: false,      
        cache: false,           
        timeout: 600000,       
        success: function () { 
			$(".userCommentWritingSector").val("");
			$(".rating-input__star").attr('class', 'rating-input__star');
			xBtn();
			console.log(place);
			$(".item")[dataNumber].click();
			
/*           $("#contentResistButton").prop("disabled", false);      
*/        },          
        error: function (e) {  
           console.log("ERROR : ", e);     
				console.log(placeName);
				console.log(placeId);
				console.log(placeAddress);
/*            $("#contentResistButton").prop("disabled", false);    
*/            alert("글 등록을 실패하였습니다. 다시 시도해주세요.");      
	         }     
	   });
}



