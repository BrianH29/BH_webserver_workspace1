<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- errorPage="error500.jsp" -->
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int sum = 0; 
	
	for(int i=1; i<=100; i++){
		sum += i; 
	}
	
	//System.out.println("sum" + sum);
	
	ArrayList<String> list = new ArrayList<>(); 
	// page 지시자에 import 속성으로 선언해야됨
	
	list.add("Servlet"); 
	list.add("JSP"); 
	
	Date today = new Date(); // 현재 날짜(년월일시분초) == 시스템날짜 
	%>

	<p>
		덧셈결과 : <%= sum %> <br>
		리스트의 길이 : <%= list.size() %> <br>
		list.get(0): <%= list.get(0) %> <br>
		오늘날짜 : <%= today %><br>
	</p>
	
	<p>
		list.get(10) : <%=list.get(10) %> 
	</p>



</body>
</html>