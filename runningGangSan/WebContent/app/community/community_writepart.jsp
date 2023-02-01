<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/community/community.css">
</head>
<body>

   <!-- 게시글 작성 부분 시작 -->
                     <div class="FeedCardList_list__2yOEy" aria-label="피드 리스트">
                           <!-- 글 작성 div -->
                        <div class="FeedCard_container__2vyLX">
                           <textarea name="feedMainWriting" id="feedMainWriting" cols="30" rows="10" placeholder="내 반려동물을 자랑해주세요!" style="margin-bottom: 10px; width: 100%; height: 200px; resize: none; padding: 20px;"></textarea>
                           <div>
                              <!-- 사진 첨부 -->
                                                     <!-- 첨부파일 목록 -->
                        <c:choose>
                           <c:when test="${files != null and fn:length(files) > 0}">
                              <c:forEach var="file" items="${files}">
                                 <a href="${pageContext.request.contextPath}/file/download.file?fileSystemName=${file.getFileSystemName()}&fileOriginalName=${file.getFileOriginalName()}">
                                    <c:out value="${file.getFileOriginalName()}"/>
                                 </a>
                                 <br>
                              </c:forEach>
                           </c:when>
                           <c:otherwise>
                               첨부파일이 없습니다.
                              <hr>
                           </c:otherwise>
                        </c:choose>
                        	<form method="post" enctype="multipart/form-data">
                              <div class="ImageUploader_container__2FM0D">
                                 <div class="ImageUploader_contentWrap__1P_48">
                                    <div class="ImageUploader_button__FPX_Y" id="addPhotoButton">
                                       <svg viewBox="0 0 32 32" focusable="false"
                                          role="presentation"
                                          class="withIcon_icon__2l2ds ImageUploader_addIcon__1tond" aria-hidden="true" style="width: 24px; height: 24px;">
                                                        <path
                                             d="M20.8 16.8a4.8 4.8 0 1 1-9.6 0 4.8 4.8 0 0 1 9.6 0z">
                                                        </path>
                                                        <path
                                             d="M22.4 6.4L20 3.2h-8L9.6 6.4h-8v20.8h28.8V6.4zM16 23.2c-3.535 0-6.4-2.865-6.4-6.4s2.865-6.4 6.4-6.4 6.4 2.865 6.4 6.4-2.865 6.4-6.4 6.4z">
                                                        </path>
                                                    </svg>
                                       <span class="uploadPhotoCount">
                                                        <div class="uploadBeforeText">0/1</div>
                                                    </span> 
                                                    <input type="file" class="realUpload" id = "realUpload"  accept="image/*"  required multiple style="display: none;" multiple>
                                       <div
                                          class="StaticPopper_container__3fEN8 ImageUploader_popper__3yY05">
                                          <div>
                                             소중한 나의 반려동물을<br>마음껏 자랑해주세요!
                                          </div>
                                          <div
                                             class="StaticPopper_arrow__3okBO ImageUploader_popperArrow__21T9p">
                                          </div>
                                       </div>
                                    </div>
                                                <ul class="image-preview"></ul>
                                                <button class="deleteBtn" type="button">사진 초기화</div>
                                    <div class="ImageUploader_imageContainer__2QUb6" style="transform: translateX(0px);">
                                                </div>
                                                
                                            </div>
                                            <button class="registBtn Button_button__341ce Button_primary__2Xc2p Button_contained__1azJ6 Button_md__3IA0_ Button_block__1sz_j RecommendationSupporterList_moreButton__Gp4KF" id = "contentResistButton"type="button" style="margin-bottom: 50px;margin-top: 10px;">
                                                <span><span class="Button_children__10ESl">게시글 등록 <svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__20lDO"aria-hidden="true">
                                                            <path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path>
                                                        </svg></span></span>
                                            </button>
									</form>
                              </div>
                           </div>
                           <div class="FeedCard_divider__3V9EP"></div>
                        </div>
                        <!-- 게시글 작성 부분 끝 -->
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
let postContent = $("textarea[name='feedMainWriting']").val();
/* let userNumber = 1; */
let context = "${pageContext.request.contextPath}";

 
/*  function cancelFile(fileName){
    $("input#" + fileName).val("");
    $("img#" + fileName + "Img").attr("src", "${pageContext.request.contextPath}/images/filePlus.png");
 } */
</script>
<script
   src="${pageContext.request.contextPath}/assets/js/community/community.js"></script>
</html>
