<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<p>	아이디 : <%=request.getParameter("uid")%>
	<p>	비밀번호 :	<%=request.getParameter("upw")%>
	<p>	이름 : <%=request.getParameter("unm")%>
	<p>	연락처 : <%=request.getParameter("phone1")%>-<%=request.getParameter("phone2")%>-<%=request.getParameter("phone3")%>
	<p>	이메일 : <%=request.getParameter("umail")%>
	
	
	
</body>
</html>