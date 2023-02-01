
myFollowing();

//팔로잉 불러오기-----------------------------------------------------------------------------------
 function followingList(followings) {
			let text = "";
			let img = "https://static.wadiz.kr/assets/icon/profile-icon-3.png";
	   if(followings.length > 0){
			followings.forEach(following => {
				text += `<div class="FollowingCard_container">`;
				text +=`<div class="FollowingCard_contents">`;
				text += `<a href="/web/wmypage/myprofile/fundinglist/2763325505" class="FollowingCard_leftPanel">`;
    			text += `<div class="FollowingCard_avatarWrapper">`;
        		text+=`<button class="Avatar_avatar" style="margin-right: 8px; background: none 50% center / cover repeat; border: none; width: 56px; height: 56px;">`;
            	text+= `<span style="background-image: url(`+ (following.userFileSystemName == null? img : $context + `/upload/user/`+ following.userFileSystemName) +`); border: 1px solid rgb(221, 226, 230);"></span>`;
        		text +=`</button>`;
    			text += `</div>`;
    			text += `<div class="FollowingCard_info">`;
				text += `<p class="FollowingCard_name">`+ following.userName +`</p>`;
				text += `<p class="FollowingCard_detail">작성 리뷰 ` + following.reviewCount +` · 게시글 ` + following.postCount +`</p>`;
				text += `</div>`;
				text += `</a>`;
				text += `<div class="FollowingCard_rightPanel">`;
				if(following.follow){
					text += `<button onclick="followChange(this, `+ following.userNumber +`)" class="Button_button Button_secondary Button_md Button_startIcon SupporterFollowingButton_followingButton"; type="button">`;
					text += `<span>`;
					text += `<svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon Button_icon SupporterFollowingButton_icon" aria-hidden="true" style="width: 12px; height: 12px;"><path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>`;
					text += `<span class="Button_children">팔로잉</span>`;
				}else{
					text += `<button onclick="followChange(this, `+ following.userNumber +`)" class="Button_button Button_primary Button_md Button_startIcon SupporterFollowingButton_followingButton"; type="button">`;
					text += `<span>`;
					text += `<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon Button_icon SupporterFollowingButton_icon" aria-hidden="true" style="width: 12px; height: 12px;"><path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>`;
                    text += `<span class="Button_children">팔로우</span>`;
				}
				text += `</span>`;
				text += `</button>`;
				text += `</div>`;
				text += `</div>`;
				text += `<div class="FollowingCard_divider"></div>`;
				text += `</div>`;
				text += `</div>`;
			});
				
			
	   }else{
			text += `<div class="Page_content">`;
			text += `<div>`;
			text += `<p>사용자를 팔로잉하고</p>`;
			text += `<p>피드 통해 소식을 빠르게 확인해보세요</p>`;
			text += `</div>`; 
			text += `<a rel="noreferrer noopener" href="/meommi/Postlist.po" class="Button_button Button_primary Button_contained">`;
			text += `<span>`
			text += `<span class="Button_children">피드 보러가기</span>`
			text += `</span>`
			text += `</a>`
			text += `</div>`; 
		}
			$('.Page_container').html(text);
}

function myFollowing(){
	 $.ajax({
         url: $context + "/meommi/FollowingOk.fo",
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
         success: followingList
      });
}
//----------------------------------------------------------------------------------------------------
//팔로워 불러오기-----------------------------------------------------------------------------------
 function followerList(followers) {
			let text = "";
			let img = "https://static.wadiz.kr/assets/icon/profile-icon-3.png";
	   if(followers.length > 0){
			followers.forEach(follower => {
				text += `<div class="FollowingCard_container">`;
				text +=`<div class="FollowingCard_contents">`;
				text += `<a href="/web/wmypage/myprofile/fundinglist/2763325505" class="FollowingCard_leftPanel">`;
    			text += `<div class="FollowingCard_avatarWrapper">`;
        		text+=`<button class="Avatar_avatar" style="margin-right: 8px; background: none 50% center / cover repeat; border: none; width: 56px; height: 56px;">`;
            	text+= `<span style="background-image: url(`+ (follower.userFileSystemName == null? img : $context + `/upload/user/`+ follower.userFileSystemName) +`); border: 1px solid rgb(221, 226, 230);"></span>`;
        		text +=`</button>`;
    			text += `</div>`;
    			text += `<div class="FollowingCard_info">`;
				text += `<p class="FollowingCard_name">`+ follower.userName +`</p>`;
				text += `<p class="FollowingCard_detail">작성 리뷰 ` + follower.reviewCount +` · 게시글 ` + follower.postCount +`</p>`;
				text += `</div>`;
				text += `</a>`;
				text += `<div class="FollowingCard_rightPanel">`;
				if(follower.follow){
					text += `<button onclick="followChange(this, `+ follower.userNumber +`)" class="Button_button Button_secondary Button_md Button_startIcon SupporterFollowingButton_followingButton"; type="button">`;
					text += `<span>`;
					text += `<svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon Button_icon SupporterFollowingButton_icon" aria-hidden="true" style="width: 12px; height: 12px;"><path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>`;
					text += `<span class="Button_children">팔로잉</span>`;
				}else{
					text += `<button onclick="followChange(this,`+ follower.userNumber +`)" class="Button_button Button_primary Button_md Button_startIcon SupporterFollowingButton_followingButton"; type="button">`;
					text += `<span>`;
					text += `<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon Button_icon SupporterFollowingButton_icon" aria-hidden="true" style="width: 12px; height: 12px;"><path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>`;
                    text += `<span class="Button_children">팔로우</span>`;
				}
				text += `</span>`;
				text += `</button>`;
				text += `</div>`;
				text += `</div>`;
				text += `<div class="FollowingCard_divider"></div>`;
				text += `</div>`;
				text += `</div>`;
			});
				
			
	   }else{
			text += `<div class="Page_content">`;
			text += `<div>`;
			text += `<p>작성하지 않은 리뷰가 있다면</p>`;
			text += `<p>리뷰를 쓰고 팔로워를 늘려보세요</p>`;
			text += `</div>`; 
			text += `<a rel="noreferrer noopener" href="`+ $context +`/meommi/FavoritePlace.fa" class="Button_button Button_primary Button_contained">`;
			text += `<span>`
			text += `<span class="Button_children">리뷰 작성하기</span>`
			text += `</span>`
			text += `</a>`
			text += `<p class="Page_caption">마이멈뭄 &gt; 리뷰 / 내 장소 내역 &gt; 리뷰 쓰기</p>`
			text += `</div>`; 
		}
			$('.Page_container').html(text);
}

function myFollower(){
	 $.ajax({
         url: $context + "/meommi/FollowerOk.fo",
         type: "get",
         dataType:'json',
		 contentType: "application/json; charset=utf-8",
         success: followerList
      });
}
//----------------------------------------------------------------------------------------------------




$('.Tab_tab').attr('class', 'Tab_tab');
$('.Tab_tab').eq(0).attr('class', 'Tab_tab Tab_first Tab_active');

$('.Tab_tab').on('click', function(){
    $('.Tab_tab').attr('class', 'Tab_tab');
    $(this).attr('class', 'Tab_tab Tab_active');
    console.log($(this).data('value'));

    switch($('.Tab_tab.Tab_active').data('value')){
        case 0 :
			myFollowing();
            break;
        case 1 :
			myFollower();
            break;
        // case 2 :
        //     $('.Page_container').children().detach();
        //     $('.Page_container').append(followerEmpty);
        //     break;
        // case 3 :
        //     $('.Page_container').children().detach();
        //     $('.Page_container').append(muteEmpty);
        //     break;
    }
});

console.log($('.Button_button').get(0));
$('.Button_button').on('click', function(){
	console.log(0);
	console.log(this);
});


function Follow(number){
			$.ajax({
	         url: $context + "/meommi/FollowingUserOk.fo",
	         type: "get",
			 data : {"followNumber" : number},
	         dataType:'json',
			 contentType: "application/json; charset=utf-8",
	         success:function(){console.log('언팔함');}
      	});
}

function unFollow(number){
			$.ajax({
	         url: $context + "/meommi/UnfollowOk.fo",
	         type: "get",
			 data : {"followNumber" : number},
	         dataType:'json',
			 contentType: "application/json; charset=utf-8",
	         success:function(){console.log('언팔함');}
      	});
}


// 버튼 누르기 전
const secondary = `Button_button Button_secondary Button_md Button_startIcon SupporterFollowingButton_followingButton`;
// 버튼 누른 후
const primary = `Button_button Button_primary Button_md Button_startIcon SupporterFollowingButton_followingButton`
function followChange(text, number) {
	
    if($(text).attr('class') == secondary){
		unFollow(number);
        $(text).attr('class', primary);
        $(text).find('span').children().detach();
        $(text).find('span').append(`<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon Button_icon SupporterFollowingButton_icon" aria-hidden="true" style="width: 12px; height: 12px;"><path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
                                    <span class="Button_children">팔로우</span>`);
		
    }else{
		Follow(number);
        $(text).attr('class', secondary);
        $(text).find('span').children().detach();
        $(text).find('span').append(`<svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon Button_icon SupporterFollowingButton_icon" aria-hidden="true" style="width: 12px; height: 12px;"><path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>
                                    <span class="Button_children">팔로잉</span>`);
    }
}


console.log($('.Tab_tab.Tab_active').data("value"));

/* if($('.Tab_tab Tab_active').data('index')) */



