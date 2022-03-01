<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ page import="java.sql.*,java.util.ArrayList,com.hi.bean.BbsBean" %>
<%
ArrayList<BbsBean> list=new ArrayList<BbsBean>();
String sql="select num,sub,id,nalja from bbs06 order by num desc";
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String username="scott";
String password="tiger";

Connection conn=null;
Statement stmt=null;
ResultSet rs=null;

try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url,username,password);
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	while(rs.next()){
		BbsBean bean=new BbsBean();
		bean.setNum(rs.getInt(1));
		bean.setSub(rs.getString(2));
		bean.setId(rs.getString(3));
		bean.setNalja(rs.getDate(4));
		list.add(bean);
	}
}finally{
	if(rs!=null)rs.close();
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
%>
<h1>게시판 목록</h1>
<table border="1" align="center" width="600" cellspacing="0">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>글쓴이</th>
		<th>날짜</th>
	</tr>
	<%
	// 개선된루프문(jdk1.7추가문법)
	for(BbsBean bean:list){
	%>
	<tr>
		<td><a href="detail.jsp?num=<%=bean.getNum() %>"><%=bean.getNum() %></a></td>
		<td><a href="detail.jsp?num=<%=bean.getNum() %>"><%=bean.getSub() %></a></td>
		<td><a href="detail.jsp?num=<%=bean.getNum() %>"><%=bean.getId() %></a></td>
		<td><a href="detail.jsp?num=<%=bean.getNum() %>"><%=bean.getNalja() %></a></td>
	</tr>
	<%
	}
	%>
</table>
<p>
	<a href="add.jsp">[입 력]</a>
</p>
<%@ include file="../template/footer.jspf" %>
</body>
</html>