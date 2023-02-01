/*페이지 번호 클릭 및 좌우 아이콘 클릭시*/

     let $prev=$(".prev-page");
     let $next=$(".next-page");
     let $clicknum=$('.current'); 
    globalThis.keyword;
     $(".desktop-only a").on("click",function(){
        $(".desktop-only a").attr("class","");
        $(this).attr("class","current");
     });

     $next.on("click",function(){
        $nexttemp=$('.current');
        if($('.current').text()<=1){
            $nexttemp.prev().attr("class","prev-page icon-chevron-left");
            $nexttemp.next().attr("class","current");
            $nexttemp.attr("class","");
        }
        else if($('.current').text()>1 && $('.current').text()<6){
            $nexttemp.next().attr("class","current");
            $nexttemp.attr("class","");
        }
     });
     $prev.on("click",function(){
        $prevtemp=$('.current');
        if($('.current').text()>=6){
            $prevtemp.next().attr("class","next-page icon-chevron-right");
            $prevtemp.prev().attr("class","current");
            $prevtemp.attr("class","");
        }
        else if($('.current').text()>1 && $('.current').text()<6){
            $prevtemp.prev().attr("class","current");
            $prevtemp.attr("class","");
        }
     });

/*공유 아이콘 클릭시 모달창(span태그들로 묶인 영역들이 뜨는 현상은 왜그러는지 모르겠습니다.)*/
/*애니메이션을 처리할 속성,애니메이션 지속 시간, 애니메이션 유형,애니메이션이 시작 시간*/

    let $shareicon=$("#share");
    let $modalpopup=$(".WadizModal_portal__1XfIx");
    
    let $modalclose=$(".withIcon_icon__d0KdI");
    let $modalblack=$(".WadizModal_overlay__TRZ2L.ShareModal_overlay__8Tz2m.WadizModal_overlayAfterOpen__CwHuy");
    let $modalcontent=$(".WadizModal_container__gX-0t");
    

    $shareicon.on("click",function(e){
        
        document.documentElement.style.overflowY = "hidden";
        $modalpopup.css("visibility","visible");
        $modalpopup.css("opacity",1);
        $modalpopup.css("transition","visibility 1s ease-in-out 0s,opacity 1s");
    });

    $modalclose.on("click",function(e){
        document.documentElement.style.overflowY = "auto";
        $modalpopup.css("visibility","hidden");
        $modalpopup.css("opacity",0);
        $modalpopup.css("transition","visibility 1s ease-in-out 1s,opacity 1s");
    });
    $modalblack.on("click",function(e){
        document.documentElement.style.overflowY = "auto";
        $modalpopup.css("visibility","hidden");
        $modalpopup.css("opacity",0);
        $modalpopup.css("transition","visibility 1s ease-in-out 1s,opacity 1s");
    });

    $modalcontent.on("click",function(e){
        document.documentElement.style.overflowY = "hidden";
        e.stopPropagation();
        $modalpopup.css("visibility","visible");
    });

/*url 링크 복사*/
    function clip(){
        var url = '';
        var textarea = document.createElement("textarea");
        document.body.appendChild(textarea);
        url = window.document.location.href;
        textarea.value = url;
        textarea.select();
        document.execCommand("copy");
        document.body.removeChild(textarea);   
    }

/*카테고리 선택*/
    let $btnnormal=$(".Button_tertiaryGrey__2nEnb");
    let $btnactive=$(".Button_tertiaryMint__1fcKK");
    $(".Button_button__341ce").on("click",function(){
        $(".Button_button__341ce").attr("class","Button_button__341ce Button_tertiaryGrey__2nEnb Button_contained__1azJ6 Button_xs__2WEyK FilterTabButton_button__2YDMX")
        $(this).attr("class","Button_button__341ce Button_tertiaryMint__1fcKK Button_contained__1azJ6 Button_xs__2WEyK FilterTabButton_button__2YDMX");
    });
/*url 링크 복사 클릭시 출력되는 박스*/
    let $smallpopupicon =$(".ShareModal_link__red3N");
    let $blackpopup= $(".ToastContainer_container__98N9u");
    
    let $blackpopupEastSouth=$(".ToastContainer_container__98N9u2");
    $smallpopupicon.on("click",function(){
        document.documentElement.style.overflowY = "hidden";
        
        $(window).trigger('resize');
        var h,w;
        function onresize() {
            h = $(window).height(),
            w = $(window).width();
            // $('#logo').html('height= ' + h + ' width: '
            //     +w);
        }
        $(window).resize(onresize);
        onresize(); // first time;

        if(w>1097){
            $blackpopupEastSouth.css("left",w);
            $blackpopupEastSouth.css("top",h-80);
            $blackpopupEastSouth.css("visibility","visible");
            $blackpopupEastSouth.animate({
                opacity:"+=1",
                left:"-=400px",
                bottom:h
            },200,"linear").animate({
                opacity:1
            },1100).animate({
                opacity:"-=1",
                left:"+=400px",
                bottom:h
            },200,"linear");
        }
        else if(w>769 && w<1097){
            $blackpopup.css("visibility","visible");
            $blackpopup.animate({
                opacity:"+=1",
                top:"+=20px"
            },200,"linear").animate({
                opacity:1
            },1100).animate({
                opacity:"-=1",
                top:"-=20px"
            },200,"linear");
        }
    });








/* 검색창 입력 */
var searchTag = $("#search-list");
feedSearch(searchTag)

function feedSearch(obj){
   var menu = $(obj);
   var checkTotal =true;
   var checkDog =false;
   var checkCat =false;
   var checkLeft =$(".Button_tertiaryMint__1fcKK").attr("id");
   var checkRignt=$(".SearchFilter_0601_click").attr("id");   
   
   
   
   var sort ="sim";
   /*클릭되어있는 상태를 확인하는것*/
   if(checkLeft=="사료"){
      checkTotal=true;
         checkDog=false;
         checkCat=false;
   }else if(checkLeft=="고양이 사료"){
         checkTotal=false;
         checkDog=false;
         checkCat=true;
   }else if(checkLeft=="강아지 사료"){
         checkTotal=false;
         checkDog=true;
         checkCat=false;
}

   if(checkRignt=="sim"){
      sort="sim";
   }else if(checkRignt=="date"){
      sort="date";
   }else if(checkRignt=="dsc"){
      sort="dsc";
   }else if(checkRignt =="asc"){
      sort="asc";
   }
   


   /*버튼 플래그 : 클릭을 했을 시 실행시키는것*/
   if(menu.attr("id")){
      if(menu.attr("id")=="search-list"){
      
      }else if(menu.attr("id")=="사료"){
         checkTotal=true;
         checkDog=false;
         checkCat=false;
      }else if(menu.attr("id")=="강아지 사료"){
         checkTotal=false;
         checkDog=true;
         checkCat=false;
      }else if(menu.attr("id")=="고양이 사료"){
         checkTotal=false;
         checkDog=false;
         checkCat=true;
      }
      
      if(menu.attr("id")=="sim"){
         sort="sim";
      }else if(menu.attr("id")=="date"){
         sort="date";
      }else if(menu.attr("id")=="dsc"){
         sort="dsc";
      }else if(menu.attr("id")=="asc"){
         sort="asc";
      }
      
   }
   
   
   
   
   
   /*키워드 빈문자열 막아주기*/
   var keyword = searchTag.val();
   if(!keyword){
      alert('검색어를 입력해주세요')
      return;
   }
      $.ajax({
         url: pageURI+"/meommi/FeedSearch.fe",
         type: "get",
         data:{keyword:keyword, sort:sort}, 
         contentType: "application/json; charset=utf-8",
         success: function(result){
         let text="";
         var resultM = JSON.parse(result)
         /* Conslole 의 items 배열 */ 
         var items = resultM.items
         /* 이미지태그 */
         var imgSpan = $(".CommonCard_background__3toTR");
         /* 제목,가격,브랜드,카테고리 태그 */
         var iTitle = $(".titleName");
         var iPrice = $(".titlePrice");
         var iKind = $(".titleKind");
         var iCategory = $(".category1");
         /* items 배열에서 카테고리에 맞는 값 가져오기 */
         var Wrapper = $(".ProjectCardList_list__1YBa2");
         if(checkTotal){
            items = items.filter(i=>i.category3.includes("사료"));
         }else if(checkDog){
            items = items.filter(i=>i.category3.includes("강아지사료"));
         }else if(checkCat){
            items = items.filter(i=>i.category3.includes("고양이사료"));
         }
         /*가져오는 데이터 0개 일 때*/
         if(items.length==0){
            feedZeroSearch(obj);
            return;
         }

            /* image, title, lprice, brand, category 수정 */
            items.forEach(i=>{
               text+= `<div class="ProjectCardList_item__1owJa">`;
               text+= ` <div>`;
               text+= `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`;
               text+= `<a class="CardLink_link__1k83H CommonCard_image__vaqkf" href="#" aria-hidden="true" tabindex="-1">`;
               text+= `<div class="CommonCard_rect__2wpm4">`;
               text+= `<span class="CommonCard_background__3toTR CommonCard_visible__ABkYx" style="background-image: url("`+i.image+`");"></span>`;
               text+= `</div>`;
               text+= `</a>`;
               text+= `<div class="CommonCard_info__1f4kq">`;
               text+= `<div class="RewardProjectCard_info__3JFub">`;
               text+= `<div class="RewardProjectCard_infoTop__3QR5w">`;
               text+= `<a class="CardLink_link__1k83H" href="/web/campaign/detail/54516?_refer_section_st=REWARD_0">`;
               text+= `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`;
               text+= `<strong class="titleName">`+i.title+`</strong>`;
               text+= `</p>`;
               text+= `</a>`;
               text+= `<div>`;
               text+= `<span class="RewardProjectCard_category__2muXk">가격 </span>`;
               text+= `<span class="RewardProjectCard_makerName__2q4oH titlePrice">`+i.lprice+`</span>`;
               text+= `</div>`;
               text+= `<div>`;
               text+= `<span class="RewardProjectCard_category__2muXk">브랜드 </span>`;
               text+= `<span class="RewardProjectCard_makerName__2q4oH titleKind">`+i.brand+`</span>`;
               text+= `</div>`;
               text+= `<div>`;
               text+= `<span class="RewardProjectCard_category__2muXk">카테고리 </span>`;
               text+= `<span class="RewardProjectCard_makerName__2q4oH category1">`+i.category3+">"+i.category4+`</span>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
            })
            Wrapper.html(text);/*html 수정*/
            var images = $('.CommonCard_visible__ABkYx');
            items.forEach((j,v,item)=>{
               /*html text 이미지를 css로 다시 줌*/
               images.eq(v).css("background-image",`url("`+j.image+`")`)
            /*   images.eq(i).css("background-image",`url("`+items[i].image+`")`)*/
               /*상세페이지 링크연결*/
               images.eq(v).parent().parent().parent().attr("onclick",`location.href="`+j.link+`"`)
            })
         }
         });
}

/* 빈분자열 검색 입력 */
function feedZeroSearch(obj){
   var menu = $(obj);
   var checkTotal =true;
   var checkDog =false;
   var checkCat =false;
   var checkLeft =$(".Button_tertiaryMint__1fcKK").attr("id");
   var checkRignt=$(".SearchFilter_0601_click").attr("id");   
   
   /*클릭되어있는 상태를 확인하는것*/
   if(checkLeft=="사료"){
         checkTotal=true;
         checkDog=false;
         checkCat=false;
   }else if(checkLeft=="고양이 사료"){
         checkTotal=false;
         checkDog=false;
         checkCat=true;
   }else if(checkLeft=="강아지 사료"){
         checkTotal=false;
         checkDog=true;
         checkCat=false;
}
   var sort ="sim";
if(checkRignt=="sim"){
      sort="sim";
   }else if(checkRignt=="date"){
      sort="date";
   }else if(checkRignt=="dsc"){
      sort="dsc";
   }else if(checkRignt =="asc"){
      sort="asc";
   }
   

   /*버튼 플래그 : 클릭을 했을 시 실행시키는것*/
   if(menu.attr("id")){
      if(menu.attr("id")=="search-list"){
      }else if(menu.attr("id")=="사료"){
         checkTotal=true;
         checkDog=false;
         checkCat=false;
      }else if(menu.attr("id")=="강아지 사료"){
         checkTotal=false;
         checkDog=true;
         checkCat=false;
      }else if(menu.attr("id")=="고양이 사료"){
         checkTotal=false;
         checkDog=false;
         checkCat=true;
      }
      
      if(menu.attr("id")=="sim"){
         sort="sim";
      }else if(menu.attr("id")=="date"){
         sort="date";
      }else if(menu.attr("id")=="dsc"){
         sort="dsc";
      }else if(menu.attr("id")=="asc"){
         sort="asc";
      }
   }
   

   var keyword = searchTag.val()+"사료";
   /*if(!keyword){
      alert('검색어를 입력해주세요')
      return;
   }*/

      $.ajax({
         url: pageURI+"/meommi/FeedSearch.fe",
         type: "get",
         data:{keyword:keyword, sort:sort}, 
         contentType: "application/json; charset=utf-8",
         success: function(result){
         let text="";
         var resultM = JSON.parse(result)
         /* Conslole 의 items 배열 */ 
         var items = resultM.items
         /* 이미지태그 */
         var imgSpan = $(".CommonCard_background__3toTR");
         /* 제목,가격,브랜드,카테고리 태그 */
         var iTitle = $(".titleName");
         var iPrice = $(".titlePrice");
         var iKind = $(".titleKind");
         var iCategory = $(".category1");
         /* items 배열에서 카테고리에 맞는 값 가져오기 */
         var Wrapper = $(".ProjectCardList_list__1YBa2");
         if(checkTotal){
            items = items.filter(i=>i.category3.includes("사료"));
         }else if(checkDog){
            items = items.filter(i=>i.category3.includes("강아지"));
         }else if(checkCat){
            items = items.filter(i=>i.category3.includes("고양이"));
         }
         /*if(items.length==0){
            zeroSearch();
            return;
         }*/

            /* image, title, lprice, brand, category 수정 */
            items.forEach(i=>{
               
               text+= `<div class="ProjectCardList_item__1owJa">`;
               text+= ` <div>`;
               text+= `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`;
               text+= `<a class="CardLink_link__1k83H CommonCard_image__vaqkf" href="#" aria-hidden="true" tabindex="-1">`;
               text+= `<div class="CommonCard_rect__2wpm4">`;
               text+= `<span class="CommonCard_background__3toTR CommonCard_visible__ABkYx" style="background-image: url("`+i.image+`");"></span>`;
               text+= `</div>`;
               text+= `</a>`;
               text+= `<div class="CommonCard_info__1f4kq">`;
               text+= `<div class="RewardProjectCard_info__3JFub">`;
               text+= `<div class="RewardProjectCard_infoTop__3QR5w">`;
               text+= `<a class="CardLink_link__1k83H" href="/web/campaign/detail/54516?_refer_section_st=REWARD_0">`;
               text+= `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`;
               text+= `<strong class="titleName">`+i.title+`</strong>`;
               text+= `</p>`;
               text+= `</a>`;
               text+= `<div>`;
               text+= `<span class="RewardProjectCard_category__2muXk">가격 </span>`;
               text+= `<span class="RewardProjectCard_makerName__2q4oH titlePrice">`+i.lprice+`</span>`;
               text+= `</div>`;
               text+= `<div>`;
               text+= `<span class="RewardProjectCard_category__2muXk">브랜드 </span>`;
               text+= `<span class="RewardProjectCard_makerName__2q4oH titleKind">`+i.brand+`</span>`;
               text+= `</div>`;
               text+= `<div>`;
               text+= `<span class="RewardProjectCard_category__2muXk">카테고리 </span>`;
               text+= `<span class="RewardProjectCard_makerName__2q4oH category1">`+i.category3+">"+i.category4+`</span>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
               text+= `</div>`;
            })
            Wrapper.html(text);/*html 수정*/
            var images = $('.CommonCard_visible__ABkYx');
            items.forEach((j,v,item)=>{
               images.eq(v).css("background-image",`url("`+j.image+`")`)
            /*   images.eq(i).css("background-image",`url("`+items[i].image+`")`)*/
         images.eq(v).parent().parent().parent().attr("onclick",`location.href="`+j.link+`"`)
            })
         }
         });
}



















/*검색어 입력 엔터키*/
searchTag.keydown(function(e) {
            if (e.keyCode == 13) {
               feedSearch();
            }
      });

const $FilterButtons = $(".SearchFilter_0601");

/*RightButton css 속성*/
$FilterButtons.mouseover(function(){
   $(this).css("border-color","#FFCEAF");
   $(this).css("background-color","#FFCEAF");
   $(this).css("color","#FF914D");
})
$FilterButtons.mouseout(function(){
   $(this).css("border-color","#f2f4f6");
   $(this).css("background-color","#f2f4f6");
   $(this).css("color","#495057");
   
})
$FilterButtons.click(function(){
   if($(this).hasClass("SearchFilter_0601")){
      $FilterButtons.each((i,item)=>{
         if($FilterButtons.eq(i).hasClass("SearchFilter_0601_click")){
            $FilterButtons.eq(i).removeClass("SearchFilter_0601_click").addClass("SearchFilter_0601")
         }
      })
      $(this).removeClass("SearchFilter_0601").addClass("SearchFilter_0601_click")
   }
})