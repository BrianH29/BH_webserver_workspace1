<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
    <%
    	Date now = new Date();
    
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
    	String today = sdf.format(now); // "2020년 08월 31일"
    	
    	String msg = "hi!";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= today %>
</body>
</html>