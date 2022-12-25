<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
   Altitude by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
   <head>
      <title>게시글 작성</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <style>
         form textarea{
            border-radius:0; 
            resize:none;
            color:black !important;
         }
         
         form div#reply{
            display:flex;
            margin-bottom:3%;
         }
         
         input[type='submit']:not(#register), input[type='button'] {border-radius:0;}
         
         ul.actions li {
             padding: 0 0 0 0.2em;
         }
         
         input#board_title{
            border-radius: 0;
            border: none;
            text-align: left;
            font-size: 1.75em;
            font-weight: 500;
            line-height: 1.5;
            letter-spacing: 0.1em;
            padding:0;
         }
         
         input[type='file']{
            display:none;
         }
         
         div.files{
            text-align:center;
            margin-right: 3%;
         }
         
         textarea {
            font-size: 1em;
             font-weight: 600;
             letter-spacing: 0.1em;
         }
         
      </style>
   </head>
   <body class="is-preload">
      <!-- Page Wrapper -->
         <div id="page-wrapper">

            <!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">
                     <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
                  </div>
               </div>

            <!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">

                     <!-- Main -->
                     <section class="main">
                        <a href="#" class="image main"><img src="${pageContext.request.contextPath}/images/boardView.png" alt="" /></a>
                        <div class="col-12">
                           <ul class="actions" style="display:flex; justify-content:flex-end;">
                              <li><input type="button" value="목록" class="primary" onclick="location.href = '${pageContext.request.contextPath}/board/listOk.bo'"/></li>
                           </ul>
                        </div>
                        <form action="${pageContext.request.contextPath}/board/writeOk.bo" name="writeForm" method="post" enctype="multipart/form-data">
                           <header class="major">
                              <p>
                                 <input name="boardTitle" type="text" placeholder="제목 입력">
                              </p>
                              <p style="text-align:left; margin-bottom:1%; margin-top:-1.75em;">작성자 : <c:out value="${memberId}"/></p>
                           </header>
                           <hr style="margin-top:0;">
                           <div style="margin-bottom:2%;">
                              첨부파일
                           </div>
                           <div style="display:flex;">
                              <div class="files">
                                 <div>
                                    <label for="board_file1" style="display:inline;">
                                       <img id="board_file1Img" src="${pageContext.request.contextPath}/images/filePlus.png" width="110px" height="110px" style="display:inline;">
                                    </label>
                                 </div>
                                 <input id="board_file1" name="board_file1" type="file">
                                 <input type="button" onclick="cancelFile('board_file1')" value="첨부 삭제">
                              </div>
                              <div class="files">
                                 <div>
                                    <label for="board_file2" style="display:inline;">
                                       <img id="board_file2Img" src="${pageContext.request.contextPath}/images/filePlus.png" width="110px" height="110px" style="display:inline;">
                                    </label>
                                 </div>
                                 <input id="board_file2" name="board_file2" type="file">
                                 <input type="button" onclick="cancelFile('board_file2')" value="첨부 삭제">
                              </div>
                              <div class="files">
                                 <div>
                                    <label for="board_file3" style="display:inline;">
                                       <img id="board_file3Img" src="${pageContext.request.contextPath}/images/filePlus.png" width="110px" height="110px" style="display:inline;">
                                    </label>
                                 </div>
                                 <input id="board_file3" name="board_file3" type="file">
                                 <input type="button" onclick="cancelFile('board_file3')" value="첨부 삭제">
                              </div>
                           </div>
                           <div style="margin-top:3%;">
                              <textarea name="boardContent" placeholder="내용 작성" style="resize:none;" rows="30"></textarea>
                           </div>
                           <ul class="actions" style="display:flex; justify-content:center; margin-top:3%;">
                              <li><input type="button" value="글쓰기" class="primary" onclick="send()"/></li>
                              <li><input type="button" value="취소" onclick="location.href='${pageContext.request.contextPath}/board/listOk.bo'"/></li>
                           </ul>
                        </form>
                     </section>
                  </div>
               </div>

            <!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">

                     <!-- Footer -->
                        <footer id="footer">
                           <section class="links">
                              <div>
                                 <h3>Magna</h3>
                                 <ul class="plain">
                                    <li><a href="#">Aliquam tempus</a></li>
                                    <li><a href="#">Ultrecies nul</a></li>
                                    <li><a href="#">Gravida ultricies</a></li>
                                    <li><a href="#">Commodo etiam</a></li>
                                 </ul>
                              </div>
                              <div>
                                 <h3>Feugiat</h3>
                                 <ul class="plain">
                                    <li><a href="#">Morbi sem lorem</a></li>
                                    <li><a href="#">Praes sed dapi</a></li>
                                    <li><a href="#">Sed adipis nullam</a></li>
                                    <li><a href="#">Fus dolor lacinia</a></li>
                                 </ul>
                              </div>
                              <div>
                                 <h3>Tempus</h3>
                                 <ul class="plain">
                                    <li><a href="#">Donecnec etiam</a></li>
                                    <li><a href="#">Aapibus sedun</a></li>
                                    <li><a href="#">Namnulla tempus</a></li>
                                    <li><a href="#">Morbi set amet</a></li>
                                 </ul>
                              </div>
                              <div>
                                 <h3>Aliquam</h3>
                                 <ul class="plain">
                                    <li><a href="#">Lorem prasent dia</a></li>
                                    <li><a href="#">Nellentes ipsum</a></li>
                                    <li><a href="#">Diamsed arcu dolor</a></li>
                                    <li><a href="#">Sit amet cursus</a></li>
                                 </ul>
                              </div>
                           </section>
                           <ul class="contact-icons">
                              <li class="icon solid fa-home">1234 Fictional Street #5432 Nashville, TN 00000-0000</li>
                              <li class="icon solid fa-phone"><a href="#">(000) 000-0000</a></li>
                              <li class="icon solid fa-envelope"><a href="#">info@untitled.tld</a></li>
                           </ul>
                           <p class="copyright">&copy; Untitled. All rights reserved.</p>
                        </footer>

                  </div>
               </div>

         </div>

      <!-- Scripts -->
         <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
         <script>
            function send(){
               if(!writeForm.boardTitle){
                  alert("제목을 작성해주세요.");
                  return;
               }
               
               if(!writeForm.boardContent){
                  alert("내용을 작성해주세요.");
                  return;
               }
               
               writeForm.submit();
            }
         
            $(".files").change(function(e){
               var file = e.target.files[0];
               var img = $(this).find("img");
               var reader = new FileReader();
               reader.readAsDataURL(file);
               
                reader.onload = function(e){
                   if(e.target.result.indexOf("image") != -1){
                      img.attr("src", e.target.result)
                   }else{
                      img.attr("src", "${pageContext.request.contextPath}/images/no_img.jpg");
                   }
                }
             });
            
            function cancelFile(fileName){
               $("input#" + fileName).val("");
               $("img#" + fileName + "Img").attr("src", "${pageContext.request.contextPath}/images/filePlus.png");
            }
         </script>
   </body>
</html>