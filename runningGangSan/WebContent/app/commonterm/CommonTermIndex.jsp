<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>h.hyeoniya_Term</title>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
<%-- 	<jsp:include page="CommonTerm_community.jsp"/>
	<jsp:include page="${pageContext.request.contextPath}/app/commonterm/CommonTerm_join.jsp"/>
	<jsp:include page="CommonTerm_knowledge.jsp"/> --%>
	<jsp:include page="${pageContext.request.contextPath}/app/service/privacyTerm.jsp"/>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
	
</body>
</html>