<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기동물 찾기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/service/lostfoundanimal.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/footer.css">
<script src="https://kit.fontawesome.com/5ee2c7b38b.js" crossorigin="anonymous"></script>
</head>
<body>
    <div id="page-container">
        <div id="wz-header">
            <div class="web-header">
                <div class="web-header-large">
                    <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>

                </div>
            </div>
        </div>
        <main>
            <div id="store-app" data-base="/web/store/campaign/">
                <ul class="RewardMainTab_container__geHTr">
                    <li>
                        <a class="RewardMainTab_link___1r2a" href="${pageContext.request.contextPath}/app/service/animalfeed.jsp">
                            <span>사료 검색</span>
                        </a>
                    </li>
                    <li class="RewardMainTab_onlyLarge__1q7_V">
                        <a class="RewardMainTab_link___1r2a RewardMainTab_active__1zRir" href="${pageContext.request.contextPath}/app/service/lostfoundanimal.jsp" aria-current="page">
                            <span>유기동물 찾기</span>
                        </a>
                    </li>
                    <li>
                        <a class="RewardMainTab_link___1r2a" href="${pageContext.request.contextPath}/funeral.fu">
                            <span>장례업체</span>
                        </a>
                    </li>
                </ul>
                <div class="StoreCollectionVisual_container__kPoxZ">
                    <div class="StoreCollectionVisual_visual__dNWlZ" style="background-image:url('${pageContext.request.contextPath}/images/animalfind.gif');"></div>
                </div>
                
                <div class="RewardMainWrapper_container__2HR7Y RewardMainCategory_container__19OYY">
                    <div class="RewardProjectListApp_container__1ZYeD RewardMainProjectList_listApp__2noRS">
                        <!-- 추가부분 -->
                        
                        <div class="ProjectListHead_container__rpQ37 RewardProjectListHead_container__2FzIj">
                            <div class="ProjectListHead_bar__2dyHz">
                               <div class="regionSectionFirst">
	                               <button class="buttonpageSeach citybuttonpage citybuttonpageseoul"  onclick="savecitycode(6110000)">서울</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpageincheon" onclick="savecitycode(6280000)">인천</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagesejong"  onclick="savecitycode(5690000)">세종</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagedaejeon"  onclick="savecitycode(6300000)">대전</button>
                               	   <button class="buttonpageSeach citybuttonpage citybuttonpagegwangju"  onclick="savecitycode(6290000)">광주</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagebusan"  onclick="savecitycode(6260000)">부산</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagedaegu"  onclick="savecitycode(6270000)">대구</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpageulsan"  onclick="savecitycode(6310000)">울산</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagejeju"  onclick="savecitycode(6500000)">제주</button>
                               </div>
                               <div class="regionSectionSecond">
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagegg"  onclick="savecitycode(6410000)">경기</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagechungbuk"  onclick="savecitycode(6430000)">충북</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagechungnam "  onclick="savecitycode(6440000)">충남</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagecjeonbuk"  onclick="savecitycode(6450000)">전북</button>
                                   <button class="buttonpageSeach citybuttonpage citybuttonpagecjeonnam"  onclick="savecitycode(6460000)">전남</button>
					               <button class="buttonpageSeach citybuttonpage citybuttonpagegyeonbuk"  onclick="savecitycode(6470000)">경북</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagegyeongnam"  onclick="savecitycode(6480000)">경남</button>
	                               <button class="buttonpageSeach citybuttonpage citybuttonpagegangwon"  onclick="savecitycode(6420000)">강원</button>
                               </div>

								<div class="catDog">
	                               <button class="buttonpageSeach kindbuttonpage" onclick="savekindcode(417000)">강아지</button>
	                               <button class="buttonpageSeach kindbuttonpage" onclick="savekindcode(422400)">고양이</button>
                               </div>
                               <div class="searchSection">
	                               <button class="buttonpageSeach kindbuttonpage searchSector" onclick="Inquire()" style="background:red;">조회</button>
	                               <button class="buttonpageSeach kindbuttonpage searchSector" onclick="cityaddkindone()" style="background:red;">초기화</button>
                                </div>
                              
                              
                                <div class="ProjectListHead_children__2Y7-F"></div>
                            </div>
                        </div>
                        <!-- 추가부분 -->
                        <div class="ProjectCardList_container__3Y14k">
                            <div class="ProjectCardList_list__1YBa2">
                     
                                <!-- 3개씩 반복 -->
                            </div>
                            <!-- page number추가 -->
                            <div class="board-footer">
                                <div class="pagination">
                                    <div class="page">
                                        <div class="desktop-only">
                                        <div class = "pageing">
                                          <ul id="pagingul" style="display: flex;">
											</ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- page number 추가 끝 -->
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>

let totalData = 60; //총 데이터 수
let dataPerPage = 6; //한 페이지에 나타낼 글 수
let pageCount = 10; //페이징에 나타낼 페이지 수
let globalCurrentPage=1; //현재 페이지

let $items;
let $length;
let $numOfRows;

/* 항목들 */
let $desertionno;
let $happenDt;
let $happenPlace;
let $kindCd;
let $colorCd;
let $age;
let $weight;
let $noticeNo;
let $noticeSdt;
let $noticeEdt;
let $popfile;
let $processState;
let $sexCd;
let $neuterYn;
let $specialMark;
let $careNm;
let $careTel;
let $careAddr;
let $orgNm;
let $chargeNm;
let $officetel;
// 기본값 서울 - 강아지
let citycodenumber = 6110000;
let kindcodenumber = 417000;
let citycheck = 0;
let kindcheck = 0;
let cityonclick = 0;
let citycodepreviousmemory = 0;
let kindonclick= 0;
let conut = 0;
let totalbutton = document.querySelector('.citybuttonpage');
let seoul = document.querySelector('.citybuttonpageseoul');
let busan = document.querySelector('.citybuttonpagebusan');
// 종류 함수 
// 서울 버튼 색상 컬러 변경 이벤트 리스너 

//활성화 후 background-color: #d55506;

//활성화 전 background-color: #ff914d;
// 종류 전체 버튼!
function savecitycode(number){
 	citycodenumber = number;
 	
 	
}  

function savekindcode(number){
	kindcodenumber = number;
	switch (kindcodenumber) {
	  case 417000:

	 	    break;
	 case 422400:

	 	    break;
	  default:
	 	    alert( "어떤 값인지 파악이 되지 않습니다." );
	 	}
} 

function Inquire(){
	console.log(citycodenumber);
	console.log(kindcodenumber);
	// 두 변수다 값이 있으므로 조합 검색으로 시작
	if(citycodenumber >1 && kindcodenumber >1){
		cityaddkind()
		function cityaddkind() {
			console.log(citycodenumber);
			console.log(kindcodenumber);
			citycodenumber = citycodenumber;
			kindcodenumber = kindcodenumber;
				let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
				let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
				let pageNo=1;
				let numOfRows=6;
				let upr_cd = citycodenumber; 
				let upkind = kindcodenumber;
			 $.ajax({ // ajax로 데이터 가져오기
				   //totalData 구하기
					type:"GET",
					url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&upr_cd="+upr_cd+"&upkind="+upkind+"&serviceKey="+apikey,
					data:{},
					async: false,
					success:function(response){
						console.log("들어옴2");
						$(".ProjectCardList_list__1YBa2").empty();
						/* 길이들 전역변수에 저장 */
						$items=$(response).find("item");
						$length=$($items).children().length;
						$numOfRows=$(response).find("numOfRows").text();
						
						/* 항목들 전역변수에 저장*/
						$desertionno=$(response).find("desertionNo");
						$happenDt=$(response).find("happenDt");
						$happenPlace=$(response).find("happenPlace");
						$kindCd=$(response).find("kindCd");
						$colorCd=$(response).find("colorCd");
						$age=$(response).find("age");
						$weight=$(response).find("weight");
						$noticeNo=$(response).find("noticeNo");
						$noticeSdt=$(response).find("noticeSdt");
						$noticeEdt=$(response).find("noticeEdt");
						$popfile=$(response).find("popfile");
						$processState=$(response).find("processState");
						$sexCd=$(response).find("sexCd");
						$neuterYn=$(response).find("neuterYn");
						$specialMark=$(response).find("specialMark");
						$careNm=$(response).find("careNm");
					    $careTel=$(response).find("careTel");
						$careAddr=$(response).find("careAddr");
						$orgNm=$(response).find("orgNm");
						$chargeNm=$(response).find("chargeNm");
						$officetel=$(response).find("officetel");
			}
			 });
			 
			 //글 목록 표시 호출 (테이블 생성)
			 displayData(1, dataPerPage);
			 
			 //페이징 표시 호출
			 paging(totalData, dataPerPage, pageCount, 1);
			}



			// 페이징 표시 함수 

			function paging(totalData, dataPerPage, pageCount, currentPage) {
			  console.log("currentPage : " + currentPage);

			  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
			  
			  if(totalPage<pageCount){
			    pageCount=totalPage;
			  }
			  
			  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
			  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
			  
			  if (last > totalPage) {
			    last = totalPage;
			  }

			  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
			  let next = last + 1;
			  let prev = first - 1;

			  let pageHtml = "";

			  if (prev > 0) {
			    pageHtml += "<li><a href='javascript:city()' id='prev'> 이전 </a></li>";
			  }

			 //페이징 번호 표시 
			  for (var i = first; i <= last; i++) {
			    if (currentPage == i) {
			      pageHtml +=
			        "<li class='on'><a href='javascript:city("+ i +")' id='" + i + "'>" + i + "</a></li>";
			    } else {
			      pageHtml += "<li><a href='javascript:city("+ i +");'" + i + "'>" + i + "</a></li>";
			    }
			  }

			  if (last < totalPage) {
			    pageHtml += "<li><a href='javascript:city("+ (10 + i) +");' id='next'> 다음 </a></li>";
			  }

			  $("#pagingul").html(pageHtml);
			  let displayCount = "";
			  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
			  $("#displayCount").text(displayCount);


			  //페이징 번호 클릭 이벤트 
			  $("#pagingul li a").click(function () {
			    let $id = $(this).attr("id");
			    selectedPage = $(this).text();

			    if ($id == "next") selectedPage = next;
			    if ($id == "prev") selectedPage = prev;
			    
			    //전역변수에 선택한 페이지 번호를 담는다...
			    globalCurrentPage = selectedPage;
			    //페이징 표시 재호출
			    paging(totalData, dataPerPage, pageCount, selectedPage);
			    //글 목록 표시 재호출
			    displayData(selectedPage, dataPerPage);
			  });
			}


			//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
			function displayData(currentPage, dataPerPage) {
			  let text = "";

			//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
			  currentPage = Number(currentPage);
			  dataPerPage = Number(dataPerPage);
			  console.log(currentPage);
			  console.log(dataPerPage);
			  for (
			    var i = (currentPage - 1) * dataPerPage;
			    i < (currentPage - 1) * dataPerPage + dataPerPage;
			    i++
			  ) {
				  let $imgs = $($($items[i]).children()[1]).text();
								text += `<div class="ProjectCardList_item__1owJa">`
			                    text += `<div>`
			                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
			                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf"  aria-hidden="true" tabindex="-1">`
			                    text += `<div class="CommonCard_rect__2wpm4">`
			                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
			                    text += `</div>`
			                    text += `</a>`
			                    text += `<div class="CommonCard_info__1f4kq">`
			                    text += `<div class="RewardProjectCard_info__3JFub">`
			                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
			                    text += `<a class="CardLink_link__1k83H" >`
			                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
			                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
			                    text += `</p>`
			                    text += `</a>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
				   			 text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
			  $(".ProjectCardList_list__1YBa2").html(text);

			$("#dataPerPage").change(function () {
			    dataPerPage = $("#dataPerPage").val();
			    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
			    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
			    displayData(globalCurrentPage, dataPerPage);
			 });
		}
			citycodenumber = 0;
			kindcodenumber = 0;
			return;
	}else if(citycodenumber > 1 && kindcodenumber == 0){
		city()
		function city() {
			
			console.log(citycodenumber);
			
			
				let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
				let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
				let pageNo=1;
				let numOfRows=6;
				let upr_cd = citycodenumber;
				
				

			 $.ajax({ // ajax로 데이터 가져오기
				   //totalData 구하기
					type:"GET",
					url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&upr_cd="+upr_cd+"&serviceKey="+apikey,
					data:{},
					async: false,
					success:function(response){
						console.log("들어옴2");
						$(".ProjectCardList_list__1YBa2").empty();
						/* 길이들 전역변수에 저장 */
						$items=$(response).find("item");
						$length=$($items).children().length;
						$numOfRows=$(response).find("numOfRows").text();
						
						/* 항목들 전역변수에 저장*/
						$desertionno=$(response).find("desertionNo");
						$happenDt=$(response).find("happenDt");
						$happenPlace=$(response).find("happenPlace");
						$kindCd=$(response).find("kindCd");
						$colorCd=$(response).find("colorCd");
						$age=$(response).find("age");
						$weight=$(response).find("weight");
						$noticeNo=$(response).find("noticeNo");
						$noticeSdt=$(response).find("noticeSdt");
						$noticeEdt=$(response).find("noticeEdt");
						$popfile=$(response).find("popfile");
						$processState=$(response).find("processState");
						$sexCd=$(response).find("sexCd");
						$neuterYn=$(response).find("neuterYn");
						$specialMark=$(response).find("specialMark");
						$careNm=$(response).find("careNm");
					    $careTel=$(response).find("careTel");
						$careAddr=$(response).find("careAddr");
						$orgNm=$(response).find("orgNm");
						$chargeNm=$(response).find("chargeNm");
						$officetel=$(response).find("officetel");
			}
			 });
			 
			 //글 목록 표시 호출 (테이블 생성)
			 displayData(1, dataPerPage);
			 
			 //페이징 표시 호출
			 paging(totalData, dataPerPage, pageCount, 1);
			}



			// 페이징 표시 함수 

			function paging(totalData, dataPerPage, pageCount, currentPage) {
			  console.log("currentPage : " + currentPage);

			  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
			  
			  if(totalPage<pageCount){
			    pageCount=totalPage;
			  }
			  
			  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
			  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
			  
			  if (last > totalPage) {
			    last = totalPage;
			  }

			  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
			  let next = last + 1;
			  let prev = first - 1;

			  let pageHtml = "";

			  if (prev > 0) {
			    pageHtml += "<li><a href='javascript:city()' id='prev'> 이전 </a></li>";
			  }

			 //페이징 번호 표시 
			  for (var i = first; i <= last; i++) {
			    if (currentPage == i) {
			      pageHtml +=
			        "<li class='on'><a href='javascript:city("+ i +")' id='" + i + "'>" + i + "</a></li>";
			    } else {
			      pageHtml += "<li><a href='javascript:city("+ i +");'" + i + "'>" + i + "</a></li>";
			    }
			  }

			  if (last < totalPage) {
			    pageHtml += "<li><a href='javascript:city("+ (10 + i) +");' id='next'> 다음 </a></li>";
			  }

			  $("#pagingul").html(pageHtml);
			  let displayCount = "";
			  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
			  $("#displayCount").text(displayCount);


			  //페이징 번호 클릭 이벤트 
			  $("#pagingul li a").click(function () {
			    let $id = $(this).attr("id");
			    selectedPage = $(this).text();

			    if ($id == "next") selectedPage = next;
			    if ($id == "prev") selectedPage = prev;
			    
			    //전역변수에 선택한 페이지 번호를 담는다...
			    globalCurrentPage = selectedPage;
			    //페이징 표시 재호출
			    paging(totalData, dataPerPage, pageCount, selectedPage);
			    //글 목록 표시 재호출
			    displayData(selectedPage, dataPerPage);
			  });
			}


			//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
			function displayData(currentPage, dataPerPage) {
			  let text = "";

			//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
			  currentPage = Number(currentPage);
			  dataPerPage = Number(dataPerPage);
			  console.log(currentPage);
			  console.log(dataPerPage);
			  for (
			    var i = (currentPage - 1) * dataPerPage;
			    i < (currentPage - 1) * dataPerPage + dataPerPage;
			    i++
			  ) {
				  let $imgs = $($($items[i]).children()[1]).text();
								text += `<div class="ProjectCardList_item__1owJa">`
			                    text += `<div>`
			                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
			                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf" aria-hidden="true" tabindex="-1">`
			                    text += `<div class="CommonCard_rect__2wpm4">`
			                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
			                    text += `</div>`
			                    text += `</a>`
			                    text += `<div class="CommonCard_info__1f4kq">`
			                    text += `<div class="RewardProjectCard_info__3JFub">`
			                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
			                    text += `<a class="CardLink_link__1k83H">`
			                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
			                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
			                    text += `</p>`
			                    text += `</a>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
				   			 text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
			  $(".ProjectCardList_list__1YBa2").html(text);

			$("#dataPerPage").change(function () {
			    dataPerPage = $("#dataPerPage").val();
			    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
			    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
			    displayData(globalCurrentPage, dataPerPage);
			 });
		}


		// 처음 페이지 접속시 사용하는 함수들
		function ajaxcurrentPage() {
			let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
			let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
			let pageNo=1;
			let numOfRows=6;
			$.ajax({ // ajax로 데이터 가져오기
				   //totalData 구하기
					type:"GET",
					url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&serviceKey="+apikey,
					data:{},
					async: false,
					success:function(response){
						console.log("들어옴2");
						$(".ProjectCardList_list__1YBa2").empty();
						/* 길이들 전역변수에 저장 */
						$items=$(response).find("item");
						$length=$($items).children().length;
						$numOfRows=$(response).find("numOfRows").text();
						
						/* 항목들 전역변수에 저장*/
						$desertionno=$(response).find("desertionNo");
						$happenDt=$(response).find("happenDt");
						$happenPlace=$(response).find("happenPlace");
						$kindCd=$(response).find("kindCd");
						$colorCd=$(response).find("colorCd");
						$age=$(response).find("age");
						$weight=$(response).find("weight");
						$noticeNo=$(response).find("noticeNo");
						$noticeSdt=$(response).find("noticeSdt");
						$noticeEdt=$(response).find("noticeEdt");
						$popfile=$(response).find("popfile");
						$processState=$(response).find("processState");
						$sexCd=$(response).find("sexCd");
						$neuterYn=$(response).find("neuterYn");
						$specialMark=$(response).find("specialMark");
						$careNm=$(response).find("careNm");
					    $careTel=$(response).find("careTel");
						$careAddr=$(response).find("careAddr");
						$orgNm=$(response).find("orgNm");
						$chargeNm=$(response).find("chargeNm");
						$officetel=$(response).find("officetel");
			}
			 });
			 //글 목록 표시 호출 (테이블 생성)
			 displayData(1, dataPerPage);
			 
			 //페이징 표시 호출
			 paging(totalData, dataPerPage, pageCount, 1);
			
		}
		
		
		citycodenumber = 0;
	}else if(citycodenumber == 0 && kindcodenumber > 1){
		kind()
		function kind() {
			
			console.log(kindcodenumber);
		
				let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
				let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
				let pageNo=1;
				let numOfRows=6;
				let upkind = kindcodenumber;
				
				

			 $.ajax({ // ajax로 데이터 가져오기
				   //totalData 구하기
					type:"GET",
					url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&upkind="+upkind+"&serviceKey="+apikey,
					data:{},
					async: false,
					success:function(response){
						console.log("들어옴2");
						$(".ProjectCardList_list__1YBa2").empty();
						/* 길이들 전역변수에 저장 */
						$items=$(response).find("item");
						$length=$($items).children().length;
						$numOfRows=$(response).find("numOfRows").text();
						
						/* 항목들 전역변수에 저장*/
						$desertionno=$(response).find("desertionNo");
						$happenDt=$(response).find("happenDt");
						$happenPlace=$(response).find("happenPlace");
						$kindCd=$(response).find("kindCd");
						$colorCd=$(response).find("colorCd");
						$age=$(response).find("age");
						$weight=$(response).find("weight");
						$noticeNo=$(response).find("noticeNo");
						$noticeSdt=$(response).find("noticeSdt");
						$noticeEdt=$(response).find("noticeEdt");
						$popfile=$(response).find("popfile");
						$processState=$(response).find("processState");
						$sexCd=$(response).find("sexCd");
						$neuterYn=$(response).find("neuterYn");
						$specialMark=$(response).find("specialMark");
						$careNm=$(response).find("careNm");
					    $careTel=$(response).find("careTel");
						$careAddr=$(response).find("careAddr");
						$orgNm=$(response).find("orgNm");
						$chargeNm=$(response).find("chargeNm");
						$officetel=$(response).find("officetel");
			}
			 });
			 
			 //글 목록 표시 호출 (테이블 생성)
			 displayData(1, dataPerPage);
			 
			 //페이징 표시 호출
			 paging(totalData, dataPerPage, pageCount, 1);
			}



			// 페이징 표시 함수 

			function paging(totalData, dataPerPage, pageCount, currentPage) {
			  console.log("currentPage : " + currentPage);

			  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
			  
			  if(totalPage<pageCount){
			    pageCount=totalPage;
			  }
			  
			  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
			  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
			  
			  if (last > totalPage) {
			    last = totalPage;
			  }

			  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
			  let next = last + 1;
			  let prev = first - 1;

			  let pageHtml = "";

			  if (prev > 0) {
			    pageHtml += "<li><a href='javascript:city()' id='prev'> 이전 </a></li>";
			  }

			 //페이징 번호 표시 
			  for (var i = first; i <= last; i++) {
			    if (currentPage == i) {
			      pageHtml +=
			        "<li class='on'><a href='javascript:city("+ i +")' id='" + i + "'>" + i + "</a></li>";
			    } else {
			      pageHtml += "<li><a href='javascript:city("+ i +");'" + i + "'>" + i + "</a></li>";
			    }
			  }

			  if (last < totalPage) {
			    pageHtml += "<li><a href='javascript:city("+ (10 + i) +");' id='next'> 다음 </a></li>";
			  }

			  $("#pagingul").html(pageHtml);
			  let displayCount = "";
			  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
			  $("#displayCount").text(displayCount);


			  //페이징 번호 클릭 이벤트 
			  $("#pagingul li a").click(function () {
			    let $id = $(this).attr("id");
			    selectedPage = $(this).text();

			    if ($id == "next") selectedPage = next;
			    if ($id == "prev") selectedPage = prev;
			    
			    //전역변수에 선택한 페이지 번호를 담는다...
			    globalCurrentPage = selectedPage;
			    //페이징 표시 재호출
			    paging(totalData, dataPerPage, pageCount, selectedPage);
			    //글 목록 표시 재호출
			    displayData(selectedPage, dataPerPage);
			  });
			}


			//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
			function displayData(currentPage, dataPerPage) {
			  let text = "";

			//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
			  currentPage = Number(currentPage);
			  dataPerPage = Number(dataPerPage);
			  console.log(currentPage);
			  console.log(dataPerPage);
			  for (
			    var i = (currentPage - 1) * dataPerPage;
			    i < (currentPage - 1) * dataPerPage + dataPerPage;
			    i++
			  ) {
				  let $imgs = $($($items[i]).children()[1]).text();
								text += `<div class="ProjectCardList_item__1owJa">`
			                    text += `<div>`
			                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
			                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf"  aria-hidden="true" tabindex="-1">`
			                    text += `<div class="CommonCard_rect__2wpm4">`
			                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
			                    text += `</div>`
			                    text += `</a>`
			                    text += `<div class="CommonCard_info__1f4kq">`
			                    text += `<div class="RewardProjectCard_info__3JFub">`
			                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
			                    text += `<a class="CardLink_link__1k83H" >`
			                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
			                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
			                    text += `</p>`
			                    text += `</a>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
				   			 text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
			                    text += `</div>`
			                    text += `<div>`
			                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			                    text += `</div>`
			  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
			  $(".ProjectCardList_list__1YBa2").html(text);

			$("#dataPerPage").change(function () {
			    dataPerPage = $("#dataPerPage").val();
			    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
			    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
			    displayData(globalCurrentPage, dataPerPage);
			 });
		}
		
		
		
			kindcodenumber = 0;
	}else {
		console.log("오류입니다!");
	}
}

$('.kindbuttonpage').click(function(){
	
	
}); 

// 서울 버튼 이벤트
$('.citybuttonpageseoul').click(function(){

}); 


// 부산 버튼 이벤트
$('.citybuttonpagebusan').click(function(){

}); 

//대구 버튼 이벤트
$('.citybuttonpagedaegu').click(function(){

}); 

//인천 버튼 이벤트
$('.citybuttonpageincheon').click(function(){

}); 


//광주 버튼 이벤트
$('.citybuttonpagegwangju').click(function(){

}); 
 
//세종 버튼 이벤트
$('.citybuttonpagesejong').click(function(){
	
}); 

//대전 버튼 이벤트
$('.citybuttonpagedaejeon').click(function(){
	
}); 
 
 
//울산 버튼 이벤트
$('.citybuttonpageulsan').click(function(){
	
}); 
 
 

function kind(param) {
	kindcodenumber = param;
		let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
		let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
		let pageNo=1;
		let numOfRows=6;
		let upkind = kindcodenumber;
		
		

	 $.ajax({ // ajax로 데이터 가져오기
		   //totalData 구하기
			type:"GET",
			url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&upkind="+upkind+"&serviceKey="+apikey,
			data:{},
			async: false,
			success:function(response){
				console.log("들어옴2");
				$(".ProjectCardList_list__1YBa2").empty();
				/* 길이들 전역변수에 저장 */
				$items=$(response).find("item");
				$length=$($items).children().length;
				$numOfRows=$(response).find("numOfRows").text();
				
				/* 항목들 전역변수에 저장*/
				$desertionno=$(response).find("desertionNo");
				$happenDt=$(response).find("happenDt");
				$happenPlace=$(response).find("happenPlace");
				$kindCd=$(response).find("kindCd");
				$colorCd=$(response).find("colorCd");
				$age=$(response).find("age");
				$weight=$(response).find("weight");
				$noticeNo=$(response).find("noticeNo");
				$noticeSdt=$(response).find("noticeSdt");
				$noticeEdt=$(response).find("noticeEdt");
				$popfile=$(response).find("popfile");
				$processState=$(response).find("processState");
				$sexCd=$(response).find("sexCd");
				$neuterYn=$(response).find("neuterYn");
				$specialMark=$(response).find("specialMark");
				$careNm=$(response).find("careNm");
			    $careTel=$(response).find("careTel");
				$careAddr=$(response).find("careAddr");
				$orgNm=$(response).find("orgNm");
				$chargeNm=$(response).find("chargeNm");
				$officetel=$(response).find("officetel");
	}
	 });
	 
	 //글 목록 표시 호출 (테이블 생성)
	 displayData(1, dataPerPage);
	 
	 //페이징 표시 호출
	 paging(totalData, dataPerPage, pageCount, 1);
	}



	// 페이징 표시 함수 

	function paging(totalData, dataPerPage, pageCount, currentPage) {
	  console.log("currentPage : " + currentPage);

	  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
	  
	  if(totalPage<pageCount){
	    pageCount=totalPage;
	  }
	  
	  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
	  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
	  
	  if (last > totalPage) {
	    last = totalPage;
	  }

	  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
	  let next = last + 1;
	  let prev = first - 1;

	  let pageHtml = "";

	  if (prev > 0) {
	    pageHtml += "<li><a href='javascript:city()' id='prev'> 이전 </a></li>";
	  }

	 //페이징 번호 표시 
	  for (var i = first; i <= last; i++) {
	    if (currentPage == i) {
	      pageHtml +=
	        "<li class='on'><a href='javascript:city("+ i +")' id='" + i + "'>" + i + "</a></li>";
	    } else {
	      pageHtml += "<li><a href='javascript:city("+ i +");'" + i + "'>" + i + "</a></li>";
	    }
	  }

	  if (last < totalPage) {
	    pageHtml += "<li><a href='javascript:city("+ (10 + i) +");' id='next'> 다음 </a></li>";
	  }

	  $("#pagingul").html(pageHtml);
	  let displayCount = "";
	  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
	  $("#displayCount").text(displayCount);


	  //페이징 번호 클릭 이벤트 
	  $("#pagingul li a").click(function () {
	    let $id = $(this).attr("id");
	    selectedPage = $(this).text();

	    if ($id == "next") selectedPage = next;
	    if ($id == "prev") selectedPage = prev;
	    
	    //전역변수에 선택한 페이지 번호를 담는다...
	    globalCurrentPage = selectedPage;
	    //페이징 표시 재호출
	    paging(totalData, dataPerPage, pageCount, selectedPage);
	    //글 목록 표시 재호출
	    displayData(selectedPage, dataPerPage);
	  });
	}


	//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
	function displayData(currentPage, dataPerPage) {
	  let text = "";

	//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
	  currentPage = Number(currentPage);
	  dataPerPage = Number(dataPerPage);
	  console.log(currentPage);
	  console.log(dataPerPage);
	  for (
	    var i = (currentPage - 1) * dataPerPage;
	    i < (currentPage - 1) * dataPerPage + dataPerPage;
	    i++
	  ) {
		  let $imgs = $($($items[i]).children()[1]).text();
						text += `<div class="ProjectCardList_item__1owJa">`
	                    text += `<div>`
	                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
	                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf"  aria-hidden="true" tabindex="-1">`
	                    text += `<div class="CommonCard_rect__2wpm4">`
	                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
	                    text += `</div>`
	                    text += `</a>`
	                    text += `<div class="CommonCard_info__1f4kq">`
	                    text += `<div class="RewardProjectCard_info__3JFub">`
	                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
	                    text += `<a class="CardLink_link__1k83H" >`
	                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
	                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
	                    text += `</p>`
	                    text += `</a>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
		   			 text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
	  $(".ProjectCardList_list__1YBa2").html(text);

	$("#dataPerPage").change(function () {
	    dataPerPage = $("#dataPerPage").val();
	    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
	    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
	    displayData(globalCurrentPage, dataPerPage);
	 });
}


// 처음 페이지 접속시 사용하는 함수들
function ajaxcurrentPage(number) {
	let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
	let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
	let pageNo=1 * number;
	let numOfRows=6;
	$.ajax({ // ajax로 데이터 가져오기
		   //totalData 구하기
			type:"GET",
			url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&serviceKey="+apikey,
			data:{},
			async: false,
			success:function(response){
				console.log("들어옴2");
				$(".ProjectCardList_list__1YBa2").empty();
				/* 길이들 전역변수에 저장 */
				$items=$(response).find("item");
				$length=$($items).children().length;
				$numOfRows=$(response).find("numOfRows").text();
				
				/* 항목들 전역변수에 저장*/
				$desertionno=$(response).find("desertionNo");
				$happenDt=$(response).find("happenDt");
				$happenPlace=$(response).find("happenPlace");
				$kindCd=$(response).find("kindCd");
				$colorCd=$(response).find("colorCd");
				$age=$(response).find("age");
				$weight=$(response).find("weight");
				$noticeNo=$(response).find("noticeNo");
				$noticeSdt=$(response).find("noticeSdt");
				$noticeEdt=$(response).find("noticeEdt");
				$popfile=$(response).find("popfile");
				$processState=$(response).find("processState");
				$sexCd=$(response).find("sexCd");
				$neuterYn=$(response).find("neuterYn");
				$specialMark=$(response).find("specialMark");
				$careNm=$(response).find("careNm");
			    $careTel=$(response).find("careTel");
				$careAddr=$(response).find("careAddr");
				$orgNm=$(response).find("orgNm");
				$chargeNm=$(response).find("chargeNm");
				$officetel=$(response).find("officetel");
	}
	 });
	 //글 목록 표시 호출 (테이블 생성)
	 displayData(1, dataPerPage);
	 
	 //페이징 표시 호출
	 paging(totalData, dataPerPage, pageCount, 1);
	
}
 
 
// 도시 함수
function city(param) {
	citycodenumber = param
	
	
		let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
		let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
		let pageNo=1;
		let numOfRows=6;
		let upr_cd = citycodenumber;
		
		

	 $.ajax({ // ajax로 데이터 가져오기
		   //totalData 구하기
			type:"GET",
			url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&upr_cd="+upr_cd+"&serviceKey="+apikey,
			data:{},
			async: false,
			success:function(response){
				console.log("들어옴2");
				$(".ProjectCardList_list__1YBa2").empty();
				/* 길이들 전역변수에 저장 */
				$items=$(response).find("item");
				$length=$($items).children().length;
				$numOfRows=$(response).find("numOfRows").text();
				
				/* 항목들 전역변수에 저장*/
				$desertionno=$(response).find("desertionNo");
				$happenDt=$(response).find("happenDt");
				$happenPlace=$(response).find("happenPlace");
				$kindCd=$(response).find("kindCd");
				$colorCd=$(response).find("colorCd");
				$age=$(response).find("age");
				$weight=$(response).find("weight");
				$noticeNo=$(response).find("noticeNo");
				$noticeSdt=$(response).find("noticeSdt");
				$noticeEdt=$(response).find("noticeEdt");
				$popfile=$(response).find("popfile");
				$processState=$(response).find("processState");
				$sexCd=$(response).find("sexCd");
				$neuterYn=$(response).find("neuterYn");
				$specialMark=$(response).find("specialMark");
				$careNm=$(response).find("careNm");
			    $careTel=$(response).find("careTel");
				$careAddr=$(response).find("careAddr");
				$orgNm=$(response).find("orgNm");
				$chargeNm=$(response).find("chargeNm");
				$officetel=$(response).find("officetel");
	}
	 });
	 
	 //글 목록 표시 호출 (테이블 생성)
	 displayData(1, dataPerPage);
	 
	 //페이징 표시 호출
	 paging(totalData, dataPerPage, pageCount, 1);
	}



	// 페이징 표시 함수 

	function paging(totalData, dataPerPage, pageCount, currentPage) {
	  console.log("currentPage : " + currentPage);

	  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
	  
	  if(totalPage<pageCount){
	    pageCount=totalPage;
	  }
	  
	  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
	  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
	  
	  if (last > totalPage) {
	    last = totalPage;
	  }

	  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
	  let next = last + 1;
	  let prev = first - 1;

	  let pageHtml = "";

	  if (prev > 0) {
	    pageHtml += "<li><a href='javascript:city()' id='prev'> 이전 </a></li>";
	  }

	 //페이징 번호 표시 
	  for (var i = first; i <= last; i++) {
	    if (currentPage == i) {
	      pageHtml +=
	        "<li class='on'><a href='javascript:city("+ i +")' id='" + i + "'>" + i + "</a></li>";
	    } else {
	      pageHtml += "<li><a href='javascript:city("+ i +");'" + i + "'>" + i + "</a></li>";
	    }
	  }

	  if (last < totalPage) {
	    pageHtml += "<li><a href='javascript:city("+ (10 + i) +");' id='next'> 다음 </a></li>";
	  }

	  $("#pagingul").html(pageHtml);
	  let displayCount = "";
	  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
	  $("#displayCount").text(displayCount);


	  //페이징 번호 클릭 이벤트 
	  $("#pagingul li a").click(function () {
	    let $id = $(this).attr("id");
	    selectedPage = $(this).text();

	    if ($id == "next") selectedPage = next;
	    if ($id == "prev") selectedPage = prev;
	    
	    //전역변수에 선택한 페이지 번호를 담는다...
	    globalCurrentPage = selectedPage;
	    //페이징 표시 재호출
	    paging(totalData, dataPerPage, pageCount, selectedPage);
	    //글 목록 표시 재호출
	    displayData(selectedPage, dataPerPage);
	  });
	}


	//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
	function displayData(currentPage, dataPerPage) {
	  let text = "";

	//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
	  currentPage = Number(currentPage);
	  dataPerPage = Number(dataPerPage);
	  console.log(currentPage);
	  console.log(dataPerPage);
	  for (
	    var i = (currentPage - 1) * dataPerPage;
	    i < (currentPage - 1) * dataPerPage + dataPerPage;
	    i++
	  ) {
		  let $imgs = $($($items[i]).children()[1]).text();
						text += `<div class="ProjectCardList_item__1owJa">`
	                    text += `<div>`
	                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
	                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf"  aria-hidden="true" tabindex="-1">`
	                    text += `<div class="CommonCard_rect__2wpm4">`
	                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
	                    text += `</div>`
	                    text += `</a>`
	                    text += `<div class="CommonCard_info__1f4kq">`
	                    text += `<div class="RewardProjectCard_info__3JFub">`
	                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
	                    text += `<a class="CardLink_link__1k83H" >`
	                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
	                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
	                    text += `</p>`
	                    text += `</a>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
		   			 text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
	  $(".ProjectCardList_list__1YBa2").html(text);

	$("#dataPerPage").change(function () {
	    dataPerPage = $("#dataPerPage").val();
	    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
	    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
	    displayData(globalCurrentPage, dataPerPage);
	 });
}


// 처음 페이지 접속시 사용하는 함수들
function ajaxcurrentPage() {
	let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
	let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
	let pageNo=1 ;
	let numOfRows=6;
	$.ajax({ // ajax로 데이터 가져오기
		   //totalData 구하기
			type:"GET",
			url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&serviceKey="+apikey,
			data:{},
			async: false,
			success:function(response){
				console.log("들어옴2");
				$(".ProjectCardList_list__1YBa2").empty();
				/* 길이들 전역변수에 저장 */
				$items=$(response).find("item");
				$length=$($items).children().length;
				$numOfRows=$(response).find("numOfRows").text();
				
				/* 항목들 전역변수에 저장*/
				$desertionno=$(response).find("desertionNo");
				$happenDt=$(response).find("happenDt");
				$happenPlace=$(response).find("happenPlace");
				$kindCd=$(response).find("kindCd");
				$colorCd=$(response).find("colorCd");
				$age=$(response).find("age");
				$weight=$(response).find("weight");
				$noticeNo=$(response).find("noticeNo");
				$noticeSdt=$(response).find("noticeSdt");
				$noticeEdt=$(response).find("noticeEdt");
				$popfile=$(response).find("popfile");
				$processState=$(response).find("processState");
				$sexCd=$(response).find("sexCd");
				$neuterYn=$(response).find("neuterYn");
				$specialMark=$(response).find("specialMark");
				$careNm=$(response).find("careNm");
			    $careTel=$(response).find("careTel");
				$careAddr=$(response).find("careAddr");
				$orgNm=$(response).find("orgNm");
				$chargeNm=$(response).find("chargeNm");
				$officetel=$(response).find("officetel");
	}
	 });
	 //글 목록 표시 호출 (테이블 생성)
	 displayData(1, dataPerPage);
	 
	 //페이징 표시 호출
	 paging(totalData, dataPerPage, pageCount, 1);
	
}



$(document).ready(function () {
	let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
	let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
	let pageNo=1;
	let numOfRows=6;


 $.ajax({ // ajax로 데이터 가져오기
	   //totalData 구하기
		type:"GET",
		url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&serviceKey="+apikey,
		data:{},
		async: false,
		success:function(response){
			console.log("들어옴2");
			$(".ProjectCardList_list__1YBa2").empty();
			/* 길이들 전역변수에 저장 */
			$items=$(response).find("item");
			$length=$($items).children().length;
			$numOfRows=$(response).find("numOfRows").text();
			
			/* 항목들 전역변수에 저장*/
			$desertionno=$(response).find("desertionNo");
			$happenDt=$(response).find("happenDt");
			$happenPlace=$(response).find("happenPlace");
			$kindCd=$(response).find("kindCd");
			$colorCd=$(response).find("colorCd");
			$age=$(response).find("age");
			$weight=$(response).find("weight");
			$noticeNo=$(response).find("noticeNo");
			$noticeSdt=$(response).find("noticeSdt");
			$noticeEdt=$(response).find("noticeEdt");
			$popfile=$(response).find("popfile");
			$processState=$(response).find("processState");
			$sexCd=$(response).find("sexCd");
			$neuterYn=$(response).find("neuterYn");
			$specialMark=$(response).find("specialMark");
			$careNm=$(response).find("careNm");
		    $careTel=$(response).find("careTel");
			$careAddr=$(response).find("careAddr");
			$orgNm=$(response).find("orgNm");
			$chargeNm=$(response).find("chargeNm");
			$officetel=$(response).find("officetel");
}
 });
 
 //글 목록 표시 호출 (테이블 생성)
 displayData(1, dataPerPage);
 
 //페이징 표시 호출
 paging(totalData, dataPerPage, pageCount, 1);
});



// 페이징 표시 함수 

function paging(totalData, dataPerPage, pageCount, currentPage) {
  console.log("currentPage : " + currentPage);

  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
  
  if(totalPage<pageCount){
    pageCount=totalPage;
  }
  
  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
  
  if (last > totalPage) {
    last = totalPage;
  }

  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
  let next = last + 1;
  let prev = first - 1;

  let pageHtml = "";

  if (prev > 0) {
    pageHtml += "<li><a href='' id='prev'> 이전 </a></li>";
  }

 //페이징 번호 표시 
  for (var i = first; i <= last; i++) {
    if (currentPage == i) {
      pageHtml +=
        "<li class='on'><a href='javascript:ajaxcurrentPage("+ i +")' id='" + i + "'>" + i + "</a></li>";
    } else {
      pageHtml += "<li><a href='javascript:ajaxcurrentPage("+ i  +");'" + i + "'>" + i + "</a></li>";
    }
  }

  if (last < totalPage) {
    pageHtml += "<li><a href='javascript:ajaxcurrentPage("+(10 + i) +");' id='next'> 다음 </a></li>";
  }

  $("#pagingul").html(pageHtml);
  let displayCount = "";
  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
  $("#displayCount").text(displayCount);


  //페이징 번호 클릭 이벤트 
  $("#pagingul li a").click(function () {
    let $id = $(this).attr("id");
    selectedPage = $(this).text();

    if ($id == "next") selectedPage = next;
    if ($id == "prev") selectedPage = prev;
    
    //전역변수에 선택한 페이지 번호를 담는다...
    globalCurrentPage = selectedPage;
    //페이징 표시 재호출
    paging(totalData, dataPerPage, pageCount, selectedPage);
    //글 목록 표시 재호출
    displayData(selectedPage, dataPerPage);
  });
}


//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
function displayData(currentPage, dataPerPage) {
  let text = "";

//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
  currentPage = Number(currentPage);
  dataPerPage = Number(dataPerPage);
  console.log(currentPage);
  console.log(dataPerPage);
  for (
    var i = (currentPage - 1) * dataPerPage;
    i < (currentPage - 1) * dataPerPage + dataPerPage;
    i++
  ) {
	  let $imgs = $($($items[i]).children()[1]).text();
					text += `<div class="ProjectCardList_item__1owJa">`
                    text += `<div>`
                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf"  aria-hidden="true" tabindex="-1">`
                    text += `<div class="CommonCard_rect__2wpm4">`
                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
                    text += `</div>`
                    text += `</a>`
                    text += `<div class="CommonCard_info__1f4kq">`
                    text += `<div class="RewardProjectCard_info__3JFub">`
                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
                    text += `<a class="CardLink_link__1k83H" >`
                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
                    text += `</p>`
                    text += `</a>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
	   			 text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
                    text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
                    text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
                    text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
                    text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
  $(".ProjectCardList_list__1YBa2").html(text);
}

$("#dataPerPage").change(function () {
    dataPerPage = $("#dataPerPage").val();
    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
    displayData(globalCurrentPage, dataPerPage);
 });
 
function citycode(param) {
	
	citycodenumber = param;
	
		let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
		let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
		let pageNo=1;
		let numOfRows=6;
		let upr_cd = citycodenumber;
		
		

	 $.ajax({ // ajax로 데이터 가져오기
		   //totalData 구하기
			type:"GET",
			url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&upr_cd="+upr_cd+"&serviceKey="+apikey,
			data:{},
			async: false,
			success:function(response){
				console.log("들어옴2");
				$(".ProjectCardList_list__1YBa2").empty();
				/* 길이들 전역변수에 저장 */
				$items=$(response).find("item");
				$length=$($items).children().length;
				$numOfRows=$(response).find("numOfRows").text();
				
				/* 항목들 전역변수에 저장*/
				$desertionno=$(response).find("desertionNo");
				$happenDt=$(response).find("happenDt");
				$happenPlace=$(response).find("happenPlace");
				$kindCd=$(response).find("kindCd");
				$colorCd=$(response).find("colorCd");
				$age=$(response).find("age");
				$weight=$(response).find("weight");
				$noticeNo=$(response).find("noticeNo");
				$noticeSdt=$(response).find("noticeSdt");
				$noticeEdt=$(response).find("noticeEdt");
				$popfile=$(response).find("popfile");
				$processState=$(response).find("processState");
				$sexCd=$(response).find("sexCd");
				$neuterYn=$(response).find("neuterYn");
				$specialMark=$(response).find("specialMark");
				$careNm=$(response).find("careNm");
			    $careTel=$(response).find("careTel");
				$careAddr=$(response).find("careAddr");
				$orgNm=$(response).find("orgNm");
				$chargeNm=$(response).find("chargeNm");
				$officetel=$(response).find("officetel");
	}
	 });
	 
	 //글 목록 표시 호출 (테이블 생성)
	 displayData(1, dataPerPage);
	 
	 //페이징 표시 호출
	 paging(totalData, dataPerPage, pageCount, 1);
	}



	// 페이징 표시 함수 

	function paging(totalData, dataPerPage, pageCount, currentPage) {
	  console.log("currentPage : " + currentPage);

	  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
	  
	  if(totalPage<pageCount){
	    pageCount=totalPage;
	  }
	  
	  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
	  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
	  
	  if (last > totalPage) {
	    last = totalPage;
	  }

	  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
	  let next = last + 1;
	  let prev = first - 1;

	  let pageHtml = "";

	  if (prev > 0) {
	    pageHtml += "<li><a href='javascript:city()' id='prev'> 이전 </a></li>";
	  }

	 //페이징 번호 표시 
	  for (var i = first; i <= last; i++) {
	    if (currentPage == i) {
	      pageHtml +=
	        "<li class='on'><a href='javascript:city("+ i +")' id='" + i + "'>" + i + "</a></li>";
	    } else {
	      pageHtml += "<li><a href='javascript:city("+ i +");'" + i + "'>" + i + "</a></li>";
	    }
	  }

	  if (last < totalPage) {
	    pageHtml += "<li><a href='javascript:city("+ (10 + i) +");' id='next'> 다음 </a></li>";
	  }

	  $("#pagingul").html(pageHtml);
	  let displayCount = "";
	  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
	  $("#displayCount").text(displayCount);


	  //페이징 번호 클릭 이벤트 
	  $("#pagingul li a").click(function () {
	    let $id = $(this).attr("id");
	    selectedPage = $(this).text();

	    if ($id == "next") selectedPage = next;
	    if ($id == "prev") selectedPage = prev;
	    
	    //전역변수에 선택한 페이지 번호를 담는다...
	    globalCurrentPage = selectedPage;
	    //페이징 표시 재호출
	    paging(totalData, dataPerPage, pageCount, selectedPage);
	    //글 목록 표시 재호출
	    displayData(selectedPage, dataPerPage);
	  });
	}


	//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
	function displayData(currentPage, dataPerPage) {
	  let text = "";

	//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
	  currentPage = Number(currentPage);
	  dataPerPage = Number(dataPerPage);
	  console.log(currentPage);
	  console.log(dataPerPage);
	  for (
	    var i = (currentPage - 1) * dataPerPage;
	    i < (currentPage - 1) * dataPerPage + dataPerPage;
	    i++
	  ) {
		  let $imgs = $($($items[i]).children()[1]).text();
						text += `<div class="ProjectCardList_item__1owJa">`
	                    text += `<div>`
	                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
	                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf" aria-hidden="true" tabindex="-1">`
	                    text += `<div class="CommonCard_rect__2wpm4">`
	                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
	                    text += `</div>`
	                    text += `</a>`
	                    text += `<div class="CommonCard_info__1f4kq">`
	                    text += `<div class="RewardProjectCard_info__3JFub">`
	                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
	                    text += `<a class="CardLink_link__1k83H" >`
	                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
	                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
	                    text += `</p>`
	                    text += `</a>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
		   			 text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
	                    text += `</div>`
	                    text += `<div>`
	                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	                    text += `</div>`
	  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
	  $(".ProjectCardList_list__1YBa2").html(text);

	$("#dataPerPage").change(function () {
	    dataPerPage = $("#dataPerPage").val();
	    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
	    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
	    displayData(globalCurrentPage, dataPerPage);
	 });
}
// 버튼 클릭시 종류 코드 저장
function kindcode(param) {
	kindcodenumber = param;
}

// 처음 페이지 접속시 사용하는 함수들
function ajaxcurrentPage(number) {
	let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
	let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
	let pageNo=1 * number;
	let numOfRows=6;
	$.ajax({ // ajax로 데이터 가져오기
		   //totalData 구하기
			type:"GET",
			url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&serviceKey="+apikey,
			data:{},
			async: false,
			success:function(response){
				console.log("들어옴2");
				$(".ProjectCardList_list__1YBa2").empty();
				/* 길이들 전역변수에 저장 */
				$items=$(response).find("item");
				$length=$($items).children().length;
				$numOfRows=$(response).find("numOfRows").text();
				
				/* 항목들 전역변수에 저장*/
				$desertionno=$(response).find("desertionNo");
				$happenDt=$(response).find("happenDt");
				$happenPlace=$(response).find("happenPlace");
				$kindCd=$(response).find("kindCd");
				$colorCd=$(response).find("colorCd");
				$age=$(response).find("age");
				$weight=$(response).find("weight");
				$noticeNo=$(response).find("noticeNo");
				$noticeSdt=$(response).find("noticeSdt");
				$noticeEdt=$(response).find("noticeEdt");
				$popfile=$(response).find("popfile");
				$processState=$(response).find("processState");
				$sexCd=$(response).find("sexCd");
				$neuterYn=$(response).find("neuterYn");
				$specialMark=$(response).find("specialMark");
				$careNm=$(response).find("careNm");
			    $careTel=$(response).find("careTel");
				$careAddr=$(response).find("careAddr");
				$orgNm=$(response).find("orgNm");
				$chargeNm=$(response).find("chargeNm");
				$officetel=$(response).find("officetel");
	}
	 });
	 //글 목록 표시 호출 (테이블 생성)
	 displayData(1, dataPerPage);
	 
	 //페이징 표시 호출
	 paging(totalData, dataPerPage, pageCount, 1);
	
}



$(document).ready(function () {
	let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
	let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
	let pageNo=1;
	let numOfRows=6;


 $.ajax({ // ajax로 데이터 가져오기
	   //totalData 구하기
		type:"GET",
		url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&serviceKey="+apikey,
		data:{},
		async: false,
		success:function(response){
			console.log("들어옴2");
			$(".ProjectCardList_list__1YBa2").empty();
			/* 길이들 전역변수에 저장 */
			$items=$(response).find("item");
			$length=$($items).children().length;
			$numOfRows=$(response).find("numOfRows").text();
			
			/* 항목들 전역변수에 저장*/
			$desertionno=$(response).find("desertionNo");
			$happenDt=$(response).find("happenDt");
			$happenPlace=$(response).find("happenPlace");
			$kindCd=$(response).find("kindCd");
			$colorCd=$(response).find("colorCd");
			$age=$(response).find("age");
			$weight=$(response).find("weight");
			$noticeNo=$(response).find("noticeNo");
			$noticeSdt=$(response).find("noticeSdt");
			$noticeEdt=$(response).find("noticeEdt");
			$popfile=$(response).find("popfile");
			$processState=$(response).find("processState");
			$sexCd=$(response).find("sexCd");
			$neuterYn=$(response).find("neuterYn");
			$specialMark=$(response).find("specialMark");
			$careNm=$(response).find("careNm");
		    $careTel=$(response).find("careTel");
			$careAddr=$(response).find("careAddr");
			$orgNm=$(response).find("orgNm");
			$chargeNm=$(response).find("chargeNm");
			$officetel=$(response).find("officetel");
}
 });
 
 //글 목록 표시 호출 (테이블 생성)
 displayData(1, dataPerPage);
 
 //페이징 표시 호출
 paging(totalData, dataPerPage, pageCount, 1);
});



// 페이징 표시 함수 

function paging(totalData, dataPerPage, pageCount, currentPage) {
  console.log("currentPage : " + currentPage);

  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
  
  if(totalPage<pageCount){
    pageCount=totalPage;
  }
  
  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
  
  if (last > totalPage) {
    last = totalPage;
  }

  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
  let next = last + 1;
  let prev = first - 1;

  let pageHtml = "";

  if (prev > 0) {
    pageHtml += "<li><a href='' id='prev'> 이전 </a></li>";
  }

 //페이징 번호 표시 
  for (var i = first; i <= last; i++) {
    if (currentPage == i) {
      pageHtml +=
        "<li class='on'><a href='javascript:ajaxcurrentPage("+ i +")' id='" + i + "'>" + i + "</a></li>";
    } else {
      pageHtml += "<li><a href='javascript:ajaxcurrentPage("+ i  +");'" + i + "'>" + i + "</a></li>";
    }
  }

  if (last < totalPage) {
    pageHtml += "<li><a href='javascript:ajaxcurrentPage("+(10 + i) +");' id='next'> 다음 </a></li>";
  }

  $("#pagingul").html(pageHtml);
  let displayCount = "";
  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
  $("#displayCount").text(displayCount);


  //페이징 번호 클릭 이벤트 
  $("#pagingul li a").click(function () {
    let $id = $(this).attr("id");
    selectedPage = $(this).text();

    if ($id == "next") selectedPage = next;
    if ($id == "prev") selectedPage = prev;
    
    //전역변수에 선택한 페이지 번호를 담는다...
    globalCurrentPage = selectedPage;
    //페이징 표시 재호출
    paging(totalData, dataPerPage, pageCount, selectedPage);
    //글 목록 표시 재호출
    displayData(selectedPage, dataPerPage);
  });
}


//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
function displayData(currentPage, dataPerPage) {
  let text = "";

//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
  currentPage = Number(currentPage);
  dataPerPage = Number(dataPerPage);
  console.log(currentPage);
  console.log(dataPerPage);
  for (
    var i = (currentPage - 1) * dataPerPage;
    i < (currentPage - 1) * dataPerPage + dataPerPage;
    i++
  ) {
	  let $imgs = $($($items[i]).children()[1]).text();
					text += `<div class="ProjectCardList_item__1owJa">`
                    text += `<div>`
                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf"  aria-hidden="true" tabindex="-1">`
                    text += `<div class="CommonCard_rect__2wpm4">`
                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
                    text += `</div>`
                    text += `</a>`
                    text += `<div class="CommonCard_info__1f4kq">`
                    text += `<div class="RewardProjectCard_info__3JFub">`
                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
                    text += `<a class="CardLink_link__1k83H" >`
                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
                    text += `</p>`
                    text += `</a>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
	   			 text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
                    text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
                    text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
                    text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
                    text += `</div>`
                    text += `<div>`
                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
                    text += `</div>`
  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
  $(".ProjectCardList_list__1YBa2").html(text);
}

$("#dataPerPage").change(function () {
    dataPerPage = $("#dataPerPage").val();
    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
    displayData(globalCurrentPage, dataPerPage);
 });
 
 // 지역 코드를 사용하여 사용하는 함수
 
 function ajaxcurrentPage(number) {
	let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
	let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
	let pageNo=1 * number;
	let numOfRows=6;
	$.ajax({ // ajax로 데이터 가져오기
		   //totalData 구하기
			type:"GET",
			url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&serviceKey="+apikey,
			data:{},
			async: false,
			success:function(response){
				console.log("들어옴2");
				$(".ProjectCardList_list__1YBa2").empty();
				/* 길이들 전역변수에 저장 */
				$items=$(response).find("item");
				$length=$($items).children().length;
				$numOfRows=$(response).find("numOfRows").text();
				
				/* 항목들 전역변수에 저장*/
				$desertionno=$(response).find("desertionNo");
				$happenDt=$(response).find("happenDt");
				$happenPlace=$(response).find("happenPlace");
				$kindCd=$(response).find("kindCd");
				$colorCd=$(response).find("colorCd");
				$age=$(response).find("age");
				$weight=$(response).find("weight");
				$noticeNo=$(response).find("noticeNo");
				$noticeSdt=$(response).find("noticeSdt");
				$noticeEdt=$(response).find("noticeEdt");
				$popfile=$(response).find("popfile");
				$processState=$(response).find("processState");
				$sexCd=$(response).find("sexCd");
				$neuterYn=$(response).find("neuterYn");
				$specialMark=$(response).find("specialMark");
				$careNm=$(response).find("careNm");
			    $careTel=$(response).find("careTel");
				$careAddr=$(response).find("careAddr");
				$orgNm=$(response).find("orgNm");
				$chargeNm=$(response).find("chargeNm");
				$officetel=$(response).find("officetel");
	}
	 });
	 //글 목록 표시 호출 (테이블 생성)
	 displayData(1, dataPerPage);
	 
	 //페이징 표시 호출
	 paging(totalData, dataPerPage, pageCount, 1);
	
}


 function cityaddkindone() {
		console.log(citycodenumber);
		console.log(kindcodenumber);
		citycodenumber = citycodenumber;
		kindcodenumber = kindcodenumber;
			let apiurl='http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic';
			let apikey='DyktvVTGg0%2FIg1NivqmJPVBJRCfkCZRqGYjQoqII%2FlfiBAddeYghCugXGwLCzD4BZuP6%2FdNlVEeHoaRn7MW7Lw%3D%3D';
			let pageNo=1;
			let numOfRows=6;

		 $.ajax({ // ajax로 데이터 가져오기
			   //totalData 구하기
				type:"GET",
				url:apiurl+"?pageNo="+pageNo+"&numOfRows="+numOfRows+"&serviceKey="+apikey,
				data:{},
				async: false,
				success:function(response){
					console.log("들어옴2");
					$(".ProjectCardList_list__1YBa2").empty();
					/* 길이들 전역변수에 저장 */
					$items=$(response).find("item");
					$length=$($items).children().length;
					$numOfRows=$(response).find("numOfRows").text();
					
					/* 항목들 전역변수에 저장*/
					$desertionno=$(response).find("desertionNo");
					$happenDt=$(response).find("happenDt");
					$happenPlace=$(response).find("happenPlace");
					$kindCd=$(response).find("kindCd");
					$colorCd=$(response).find("colorCd");
					$age=$(response).find("age");
					$weight=$(response).find("weight");
					$noticeNo=$(response).find("noticeNo");
					$noticeSdt=$(response).find("noticeSdt");
					$noticeEdt=$(response).find("noticeEdt");
					$popfile=$(response).find("popfile");
					$processState=$(response).find("processState");
					$sexCd=$(response).find("sexCd");
					$neuterYn=$(response).find("neuterYn");
					$specialMark=$(response).find("specialMark");
					$careNm=$(response).find("careNm");
				    $careTel=$(response).find("careTel");
					$careAddr=$(response).find("careAddr");
					$orgNm=$(response).find("orgNm");
					$chargeNm=$(response).find("chargeNm");
					$officetel=$(response).find("officetel");
		}
		 });
		 
		 //글 목록 표시 호출 (테이블 생성)
		 displayData(1, dataPerPage);
		 
		 //페이징 표시 호출
		 paging(totalData, dataPerPage, pageCount, 1);
		}



		// 페이징 표시 함수 

		function paging(totalData, dataPerPage, pageCount, currentPage) {
		  console.log("currentPage : " + currentPage);

		  totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
		  
		  if(totalPage<pageCount){
		    pageCount=totalPage;
		  }
		  
		  let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
		  let last = pageGroup * pageCount; //화면에 보여질 마지막 페이지 번호
		  
		  if (last > totalPage) {
		    last = totalPage;
		  }

		  let first = last - (pageCount - 1); //화면에 보여질 첫번째 페이지 번호
		  let next = last + 1;
		  let prev = first - 1;

		  let pageHtml = "";

		  if (prev > 0) {
		    pageHtml += "<li><a href='javascript:city()' id='prev'> 이전 </a></li>";
		  }

		 //페이징 번호 표시 
		  for (var i = first; i <= last; i++) {
		    if (currentPage == i) {
		      pageHtml +=
		        "<li class='on'><a href='javascript:city("+ i +")' id='" + i + "'>" + i + "</a></li>";
		    } else {
		      pageHtml += "<li><a href='javascript:city("+ i +");'" + i + "'>" + i + "</a></li>";
		    }
		  }

		  if (last < totalPage) {
		    pageHtml += "<li><a href='javascript:city("+ (10 + i) +");' id='next'> 다음 </a></li>";
		  }

		  $("#pagingul").html(pageHtml);
		  let displayCount = "";
		  displayCount = "현재 1 - " + totalPage + " 페이지 / " + totalData + "건";
		  $("#displayCount").text(displayCount);


		  //페이징 번호 클릭 이벤트 
		  $("#pagingul li a").click(function () {
		    let $id = $(this).attr("id");
		    selectedPage = $(this).text();

		    if ($id == "next") selectedPage = next;
		    if ($id == "prev") selectedPage = prev;
		    
		    //전역변수에 선택한 페이지 번호를 담는다...
		    globalCurrentPage = selectedPage;
		    //페이징 표시 재호출
		    paging(totalData, dataPerPage, pageCount, selectedPage);
		    //글 목록 표시 재호출
		    displayData(selectedPage, dataPerPage);
		  });
		}


		//현재 페이지(currentPage)와 페이지당 글 개수(dataPerPage) 반영
		function displayData(currentPage, dataPerPage) {
		  let text = "";

		//Number로 변환하지 않으면 아래에서 +를 할 경우 스트링 결합이 되어버림.. 
		  currentPage = Number(currentPage);
		  dataPerPage = Number(dataPerPage);
		  console.log(currentPage);
		  console.log(dataPerPage);
		  for (
		    var i = (currentPage - 1) * dataPerPage;
		    i < (currentPage - 1) * dataPerPage + dataPerPage;
		    i++
		  ) {
			  let $imgs = $($($items[i]).children()[1]).text();
							text += `<div class="ProjectCardList_item__1owJa">`
		                    text += `<div>`
		                    text += `<div class="CommonCard_container__e_ebQ CommonCard_squareSmall__1Cdkn">`
		                    text += `<a class="CardLink_link__1k83H CommonCard_image__vaqkf"  aria-hidden="true" tabindex="-1">`
		                    text += `<div class="CommonCard_rect__2wpm4">`
		                    text += `<img class ="CommonCard_background__3toTR CommonCard_visible__ABkYx" src=`+ $imgs + `>`
		                    text += `</div>`
		                    text += `</a>`
		                    text += `<div class="CommonCard_info__1f4kq">`
		                    text += `<div class="RewardProjectCard_info__3JFub">`
		                    text += `<div class="RewardProjectCard_infoTop__3QR5w">`
		                    text += `<a class="CardLink_link__1k83H" >`
		                    text += `<p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs">`
		                    text += `<strong>유기동물 품종ㅣ `+ $($($items[i]).children()[4]).text() +`</strong>`
		                    text += `</p>`
		                    text += `</a>`
		                    text += `<div>`
		                    text += `<span class="RewardProjectCard_category__2muXk">공고번호ㅣ` + $($($items[i]).children()[8]).text()  + `</span>`
			   			 text += `</div>`
		                    text += `<div>`
		                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 발견장소ㅣ` + $($($items[i]).children()[3]).text()  + `</span>`
		                    text += `</div>`
		                    text += `<div>`
		                    text += `<span class="RewardProjectCard_category__2muXk">보호기관이름ㅣ` + $($($items[i]).children()[16]).text() + `</span>`
		                    text += `</div>`
		                    text += `<div>`
		                    text += `<span class="RewardProjectCard_category__2muXk">보호기관전화번호ㅣ` + $($($items[i]).children()[17]).text() + `</span>`
		                    text += `</div>`
		                    text += `<div>`
		                    text += `<span class="RewardProjectCard_category__2muXk">보호기관주소ㅣ` + $($($items[i]).children()[18]).text()  + `</span>`
		                    text += `</div>`
		                    text += `<div>`
		                    text += `<span class="RewardProjectCard_category__2muXk">유기동물 특징 ㅣ` + $($($items[i]).children()[15]).text() + `</span>`
		                    text += `</div>`
		                    text += `</div>`
		                    text += `</div>`
		                    text += `</div>`
		                    text += `</div>`
		                    text += `</div>`
		                    text += `</div>`
		  } //dataList는 임의의 데이터임.. 각 소스에 맞게 변수를 넣어주면 됨...
		  $(".ProjectCardList_list__1YBa2").html(text);

		$("#dataPerPage").change(function () {
		    dataPerPage = $("#dataPerPage").val();
		    //전역 변수에 담긴 globalCurrent 값을 이용하여 페이지 이동없이 글 표시개수 변경 
		    paging(totalData, dataPerPage, pageCount, globalCurrentPage);
		    displayData(globalCurrentPage, dataPerPage);
		 });
	}
 
 
 
 
 
 
 

 
 
</script>
</html>