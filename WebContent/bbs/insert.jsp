<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="bean" class="com.hi.bean.BbsBean"></jsp:useBean>
	<jsp:setProperty property="sub" name="bean"/>
	<jsp:setProperty property="id" name="bean"/>
	<jsp:setProperty property="content" name="bean"/>
	<%@ page import="java.sql.*" %>
	<%
	String sql="insert into bbs06 values (bbs06_seq.nextval,'"+bean.getId()
				+"',sysdate,'"+bean.getSub()+"','"+bean.getContent()+"')";
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	Connection conn=null;
	Statement stmt=null;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		stmt.executeUpdate(sql);
	}finally{
		if(stmt!=null) stmt.close();
		if(conn!=null) conn.close();
	}
	response.sendRedirect("./");
	%>
</body>
</html>