<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>멈미뭄미</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/follow.css">
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/app/fix/header_MainLogin.jsp"></jsp:include>
    <div id="my-follow-web" min-height:100vh>
        <div class="MyFollowWebContainer_container">
            <div class="MyFollowWebContainer_contents">
                <p class="MyFollowWebContainer_header">팔로잉</p>
                <div class="MyFollowWebContainer_tabsWrapper">
                    <div class="Tabs_tabsWrapper">
                        <ul class="Tabs_tabs MyFollowWebContainer_tabs">
                            <li data-index="0">
                                <button class="Tab_tab Tab_first" type="button" role="tab" data-value="0">
                                    <span>
                                        <p>
                                            팔로잉
                                            <sup><c:out value="${followingCount}"></c:out></sup>
                                        </p>
                                    </span>
                                </button>
                            </li>
                            <li data-index="1">
                                <button class="Tab_tab" type="button" role="tab" data-value="1">
                                    <span>
                                        <p>
                                            팔로워
                                            <sup><c:out value="${followerCount}"></c:out></sup>
                                        </p>
                                    </span>
                                </button>   
                            </li>
                        </ul>
                    </div>
                </div>
                <div>
                    <div class="TabPanels_tabPanels">
                        <div class="Page_container">
                            <div class="FollowingCard_container">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"></jsp:include>
</body>
<script>
	let $context = "${pageContext.request.contextPath}";
</script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/user/follow.js?ver=4"></script>
</html>