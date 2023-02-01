/*드롭다운리스트 선택시 값 변경*/
let $seltext=$(".SortingSelect_container__8AOZQ.ProjectListHead_sorting__2n1WY");
$('#orders').on('change',function(){
        $seltext.children().first().remove();
        $seltext.prepend("<span>"+$('#orders option:selected').text()+"</span>");
});

 /*페이지 번호 클릭 및 좌우버튼 클릭시*/
     let $prev=$(".prev-page");
     let $next=$(".next-page");
     let $clicknum=$('.current'); 

     let $pagenum=$(".desktop-only a");
        $pagenum.on("click",function(){
        $pagenum.attr("class","");
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
        console.log($prevtemp.text());
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