


var tabButton = document.getElementsByClassName('tab-button');
var followButton = document.getElementsByClassName('Button_button__mRXZC Button_primary__1HJqX Button_xs__2zuKd Button_startIcon__SRdP5 Button_block__1LAUA SupporterFollowingButton_followingButton__6GRdi RecommendationSupporterCard_followingButton__342zZ');
var followButtonBelow = document.getElementsByClassName('Button_button__mRXZC Button_primary__1HJqX Button_sm__1aKYg Button_startIcon__SRdP5 SupporterFollowingButton_followingButton__6GRdi FeedCard_followingButton__3oUdS');
var showAllButton = document.getElementsByClassName('Button_button__341ce Button_primary__2Xc2p Button_contained__1azJ6 Button_md__3IA0_ Button_block__1sz_j RecommendationSupporterList_moreButton__Gp4KF');
var reportButton = "<div class = 'modal' ><div class = 'modal_overlay'></div><div class = 'modal_content'><button class = 'report'>신고하기</button><button class = 'close'>닫기</button></div></div>"
var temp = 0;
var count = 0;
/*=====================================*/
$jsparentposition=$(".FeedCardList_container__13rc1");
/*=====================================*/
const realUpload = document.querySelector('#realUpload');
const upload = document.querySelector('#addPhotoButton');
const $moreBtn = $(".FeedCard_moreWrap__1AsqH");
const $report = $(".report");
const $reactModalPortal = $(".ReactModalPortal");
/*for (var i = 0; i < tabButton.length; i++) {
    tabButton[i].addEventListener('click', clickTab);
}

function clickTab() {
    if (temp == 0) {
        this.style.background = "#e7f9f9";
        this.style.border = "#e7f9f9";
        this.firstChild.style.color = "#00a2a2";
        temp++;
    }
    else {
        for (var i = 0; i < tabButton.length; i++) {
            tabButton[i].style.background = "#f2f4f6";
            tabButton[i].style.border = "#f2f4f6";
            tabButton[i].firstChild.style.color = "#495057";
        }

        this.style.background = "#e7f9f9";
        this.style.border = "#e7f9f9";
        this.firstChild.style.color = "#00a2a2";
        temp++;


    }
}*/
$(".tab-button").on("click",function(){
	$(".tab-button").css("background","#f2f4f6");
	$(".tab-button").css("border","#f2f4f6");
	$(".tab-button").css("color","#495057");
	$(this).css("background","#e7f9f9");
	$(this).css("border","#e7f9f9");
	$(this).css("color","#00a2a2");
})

for (var i = 0; i < followButton.length; i++) {
    followButton[i].addEventListener('mouseover', overFollowButton);
    followButton[i].addEventListener('mouseout', outFollowButton);
}

for (var i = 0; i < followButtonBelow.length; i++) {
    followButtonBelow[i].addEventListener('mouseover', overFollowButton);
    followButtonBelow[i].addEventListener('mouseout', outFollowButton);
}

function overFollowButton() {
    this.style.background = "#e7f9f9";
}
function outFollowButton() {
    this.style.background = "#fff";
}


// 팔로우 클릭 시 텍스트 바꾸기
const $followBtn = $(".Button_button__mRXZC");

$followBtn.click(function(){
    if($(this).text().trim()=="팔로우"){
        $(this).children().remove();
        $(this).append("<svg viewBox='0 0 48 48' focusable='false' role='presentation' class='withIcon_icon__20lDO Button_icon__1JHRV FollowingButton_icon__2jTGt' aria-hidden='true' style='width: 12px; height: 12px;'><path d='M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z'></path></svg><span class='Button_children__3HY2l'>팔로잉</span>")
    }else{
        $(this).children().remove();
        $(this).append("<svg viewBox='0 0 32 32' focusable='false' role='presentation' class='withIcon_icon__20lDO Button_icon__1JHRV SupporterFollowingButton_icon__1j7ZA' aria-hidden='true' style='width: 12px; height: 12px;'><path d='M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z'></path></svg><span class='Button_children__3HY2l'>팔로우</span>")
    }
})

// 게시글 도시락 버튼 클릭
$moreBtn.click(function(){
    if($(this).next().css('visibility') == 'hidden'){
        $(this).next().css('visibility','visible');
    } 
})

// 도시락 버튼 닫기
$(".close").click(function(){
    $(this).parent().parent().css('visibility','hidden');
})

/* 도시락 버튼 외 다른 곳 클릭하면 꺼지게 만들기 */
$(document).mouseup(function (e){
    if($('.modal').has(e.target).length === 0){
        $('.modal').css('visibility','hidden');
    }
});

// 신고하기 버튼 클릭 시 신고 모달창 뜨기
$report.click(function(){
    $reactModalPortal.attr('style', 'visibility:visible');
    $('.modal').css('visibility','hidden');
})

// 신고하기 닫기 클릭 시 신고창 닫기
const $policeCloseBtn = $(".Button_button__mRXZC");
const $policeXBtn = $(".ConfirmModal_closeIconWrapper__2-lWO");
$policeCloseBtn.click(function(){
    $reactModalPortal.attr('style', 'visibility:hidden');
})

// 신고하기 창 x버튼 클릭 시 닫기
$policeXBtn.click(function(){
    $reactModalPortal.attr('style', 'visibility:hidden');
})


// 첨부파일 열기
upload.addEventListener('click', () => realUpload.click());

// 미리보기 만들기
realUpload.addEventListener('change', getImageFiles);



// 이미지 첨부하기
function getImageFiles(e) {
    const uploadFiles = [];
    const files = e.currentTarget.files;
    const imagePreview = document.querySelector('.image-preview');
    const docFrag = new DocumentFragment();
    const pictureCount = $('li img').length;
    if (pictureCount >= 1) {
      alert('이미지는 최대 3개 까지 업로드가 가능합니다.');
      return;
    }
    
    // 파일 타입 검사
    [...files].forEach(file => {
      if (!file.type.match("image/.*")) {
        alert('이미지 파일만 업로드가 가능합니다.');
        return
    }

    // 파일 갯수 검사
    if (pictureCount < 1) {
        uploadFiles.push(file);
        const reader = new FileReader();
        reader.onload = (e) => {
          const preview = createElement(e, file);
          imagePreview.appendChild(preview);
        };
        reader.readAsDataURL(file);
      } else{
		alert("사진은 한 장만 등록 가능합니다.");
		return;
	}
    
    if(pictureCount>0){
        $('.uploadBeforeText').attr('style','display:none'); 
    }
    var getText = (pictureCount+1) + "/1";
    $('.uploadPhotoCount').text(getText);

    });
	console.log("aaa");
	$(".image-preview ").find("img").remove();

  }

function createElement(e, file) {
    const li = document.createElement('li');
    const img = document.createElement('img');
    img.setAttribute('src', e.target.result);
    img.setAttribute('data-file', file.name);
    img.style.width = '100px'; //기본설정된 div의 안에 뿌려지는 효과를 주기 위해서 div크기와 같은 크기를 지정해준다.
    img.style.height = '90px';
    li.appendChild(img);
    return li;
}






// 이미지 삭제하기
$deleteBtn = $(".deleteBtn");
var $thumbnail = $('.image-preview li');
$deleteBtn.click(function(){
    var photoCount = $('.image-preview li').length;
    var $thumbnail = $('.image-preview li');
    if(photoCount==0){alert("등록된 사진이 없습니다.")}
    else{
        for(var i=0;i<photoCount;i++){
            $thumbnail[i].remove();
            $('.uploadPhotoCount').text('0/1');
        }
        
    }
})



const infiniteScrollTemplate = `                        <div class="FeedCard_container__2vyLX">
<section class="FeedCard_header__3R2hC">
    <a href="/web/wmypage/myprofile/fundinglist/1152357015"
        class="FeedCard_leftPanel__wkbbV">
        <div class="FeedCard_leftPanel__wkbbV">
            <span class="Avatar_container__3ynJF FeedCard_avatar__M0EvN"
                style="width: 32px; height: 32px; background-image: -webkit-image-set(url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/sns_profile_pics/20180912120628616_38897851.jpg/wadiz/format/jpg/quality/80/optimize/wadiz/resize/32/quality/85/&quot;) 1x, url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/sns_profile_pics/20180912120628616_38897851.jpg/wadiz/format/jpg/quality/80/optimize/wadiz/resize/64/quality/85/&quot;) 2x);"></span>
            <div class="FeedCard_headerContent__37gxQ">
                <div class="FeedCard_nickNameWrap__3dGXP">
                    <p class="FeedCard_nickName__3vNYO">라온**</p>
                    <div class="FeedCard_supporterClub__7EgiL"></div>
                </div>
                <div class="FeedCard_summary__17A5w">
                    <div
                        class="RatingScore_container__AeQ_I RatingScore_smTitle__1OhOH FeedCard_rating__2O_vL">
                        <div class="RatingScore_icon__rIS_k"></div>
                        <span class="RatingScore_score__2a-SN">4.5</span>
                    </div>
                    <div class="FeedCard_follower__23ddV">
                        팔로워<span class="FeedCard_count__1fbWO">14</span>
                    </div>
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
        <div class="FeedCard_image__2-Puq">
            <div class="FeedCard_thumbnail__22k7x"
                style="background-image: -webkit-image-set(url(&quot;https://cdn2.wadiz.kr/2022/10/01/b1845cd7-8c9b-4184-8f32-2475eace29b5.jpg/wadiz/resize/520/quality/85/&quot;) 1x, url(&quot;https://cdn2.wadiz.kr/2022/10/01/b1845cd7-8c9b-4184-8f32-2475eace29b5.jpg/wadiz/resize/1040/quality/85/&quot;) 2x);">
            </div>
        </div>
    </div>
</div>
<section class="FeedCard_content__2ato7">
    <p class="FeedCard_comment__3PXr8 FeedCard_ellipsis2__uNpJo">우선
        배송박스 상태도 그렇고 체어 담는 가방도 한쪽이 살짝 찢겨있어서 반품상품 받은것 같아서 기분이 좀 그랬지만
        일단 의자는 정말 편하네요. 넓어서 의자가 넉넉하니 좋아요. 야외도 좋겠지만 집에서 사용해도 좋을것 같네요.
        저보다 저희집 냥이가 내려오질 않네요.</p>
    <p class="FeedCard_showMore__1IK43">더보기</p>
    <span class="FeedCard_date__nQ9NI">33분 전</span>
</section>
<a href="/web/store/detail/1921?_refer_section_st=feed_3"
    class="FeedCard_footer__2JOxv" data-ec-list="피드"
    data-ec-id="1921"
    data-ec-name="쇼파의 푹신함을 캠핑장으로! 멍때리기 좋은 리베로 폴딩체어"
    data-ec-price="98000" data-ec-category="여행·스포츠"
    data-ec-brand="태산레져" data-ec-usertype="SUPPORTER"
    data-ec-feedtype="SATISFACTION" data-ec-contenttype="store"><img
    loading="lazy"
    srcset="https://cdn2.wadiz.kr/2021/12/15/de5fbe95-d57d-48f6-a014-dd3042091568.jpg/wadiz/resize/180/quality/85/ 1x, https://cdn2.wadiz.kr/2021/12/15/de5fbe95-d57d-48f6-a014-dd3042091568.jpg/wadiz/resize/360/quality/85/ 2x"
    alt="쇼파의 푹신함을 캠핑장으로! 멍때리기 좋은 리베로 폴딩체어"
    class="FeedCard_thumbnail__22k7x">
    <div class="FeedCard_projectInfo__3FAY7">
        <p class="FeedCard_title__3ETaX FeedCard_ellipsis2__uNpJo">쇼파의
            푹신함을 캠핑장으로! 멍때리기 좋은 리베로 폴딩체어</p>
        <div class="FeedCard_priceWrap__10crH">
            <span class="FeedCard_price__3OfRF">98,000원</span><span
                class="Badge_container__3PJ1J Badge_visible__T0Jpp FeedCard_badge__2rxTW"><span
                class="Badge_badge__1ygl8 Badge_label__3VWNx Badge_sm__19RLo Badge_secondary__3rKeB Badge_circular__2oYt7 Badge_tertiary__cuJeE">무료배송</span></span>
        </div>
    </div> </a>
    <div class="replyWrap">
        <a href="replyContents" class="replyShow">댓글 보기 ▼</a>
        <div class="replyContents" name="replyContents" style="display:none;" data-index="0">
            <span class="replyIdWrap"><div class="replyId">hongjunsung</div></span>
            <span class="replyCommentWrap"><div class="replyComment">누가 졸아 또</div></span>
        </div>
        <div class="replyContents" name="replyContents" style="display:none;" data-index="0">
            <span class="replyIdWrap"><div class="replyId">GTA5</div></span>
            <span class="replyCommentWrap"><div class="replyComment">아니 근데 막상... 괜찮지 않을까?</div></span>
        </div>
        <div class="replyContents" name="replyContents" style="display:none;" data-index="0">
            <span class="replyIdWrap"><div class="replyId">deliveryBin</div></span>
            <span class="replyCommentWrap"><div class="replyComment">네? 저요? 저 컴퓨터가 없는데요?</div></span>
        </div>
        <div class="replyContents" name="replyContents" style="display:none;" data-index="0">
            <span class="replyIdWrap"><div class="replyId">lovesickGirl</div></span>
            <span class="replyCommentWrap"><div class="replyComment">아 진짜 모르겠다 강산님 저 좀 봐주실래요 아니 강.산.님 말고 강.사.님이요</div></span>
        </div>
        <div class="replyContents" name="replyContents" style="display:none;" data-index="0">
            <span class="replyIdWrap"><div class="replyId">foodfighter</div></span>
            <span class="replyCommentWrap"><div class="replyComment">그때 강산님이 그렇게 말하셨잖아요 또 말을...</div></span>
        </div>
        <div class="replyContents" name="replyContents" style="display:none;" data-index="0">
            <span class="replyIdWrap"><div class="replyId">hate3team</div></span>
            <span class="replyCommentWrap"><div class="replyComment">아 모르겠다고오오오오오오오 하기싫다고오오오오오오오</div></span>
        </div>
    </div>

    <div class="replyWritingWrap">
        <form class="replyWriting">
        <textarea name="realReply" class="realReply" placeholder="바르고 예쁜 말을 사용해주세요." cols="30" rows="10" onkeydown="resize(this)" onkeyup="resize(this)"></textarea>
            <button type="button" class="replyEnter">입력</button>
        </form>
        <p class="replyAlarmOff replyCheck">작성하신 댓글이 없습니다.</p>
    </div>
<div class="FeedCard_divider__3V9EP"></div>
</div>`;

// 무한 스크롤
/*window.onscroll = function(e) {
     console.log(window.innerHeight , window.scrollY,document.body.offsetHeight);
    if((window.innerHeight + window.scrollY) >= document.body.offsetHeight-5) { 
      setTimeout(function(){
        var addContent = "<div class='FeedCard_container__2vyLX'>" + "김인영..." + "</div>";

        $('.FeedCardList_container__13rc1').append(infiniteScrollTemplate);

      }, 500)  
    }
  }*/


//   게시글 등록 시 내용이 아무것도 없으면 등록 못하게 막기

// 토글창
/*const $aTags = $("a.replyShow");
let checks = -1; 

$aTags.on("click", function(e){
   e.preventDefault();
   checks *= -1;
   $(this).text(checks > 0 ? "댓글 닫기 ▲" : "댓글 보기 ▼");
   $(this).nextAll().slideToggle();
});*/

// 토글창 작성 없을 시 제한
/*const $replyCheck = $(".replyCheck");
$replyEnter = $(".replyEnter");

$replyEnter.click(function(){
    if($(this).prev().val().length==0){
        console.log($(this).next());
        $(this).parent().next().attr('class','replyAlarmOn');
    } else{
        $(this).parent().next().attr('class','replyAlarmOff');
    }
})*/

/* textarea 길이 자동 늘리기 */
function resize(obj) {

    obj.style.height = '1px';
    obj.style.height = (obj.scrollHeight) + 'px';
}






/*let postContent = $("textarea[name=feedMainWriting]").text();
let context = "${pageContext.request.contextPath}";*/

//preventDefault 는 기본으로 정의된 이벤트를 작동하지 못하게 하는 메서드이다. submit을 막음 
    // disabled the submit button         
/*formData 생성 및 key, value 삽입*/
/*==================== 글등록 + 사진등록 ajax =====================*/    
/*$("#contentResistButton").click(function (event) {         
   event.preventDefault();          
    $("#contentResistButton").prop("disabled", true);   
    
   var formData = new FormData();
   formData.append("postContent", $("textarea[name='feedMainWriting']").val())
   formData.append("postFile1", $('.realUpload')[0].files[0])  
   formData.append("postFile2", $('.realUpload')[0].files[1])
   formData.append("postFile3", $('.realUpload')[0].files[2])
   


    $.ajax({             
       type: "POST",          
        url: context + "/meommi/PostRegistration.po",        
        data: formData,
        processData: false,    
        contentType: false,      
        cache: false,           
        timeout: 600000,       
        success: function (data) { 
           alert("complete");           
           $("#contentResistButton").prop("disabled", false);
			location.reload();
			showDefault();
        },          
        error: function (e) {  
           console.log("ERROR : ", e);     
            $("#contentResistButton").prop("disabled", false);    
            alert("fail");      
         }     
   });  
});
*/