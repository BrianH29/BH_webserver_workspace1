<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML 주석: 개발자도구 탭에 노출됨-->
	<%-- JSP 주석 : 개발자도구 탭에 노출안됨 --%>
	
	
	<%
		// 스크립틀릿 : 이안에서는 일반적인 자바 코드 작성 가능(변수 선언 및 초기화, 제어문 등등...)
		int sum = 0; 
	
		for(int i =1; i<=100; i++){
			sum += i; 
		}
		
		System.out.println("sum" + sum);
	%>
	
	<p>
		화면으로 출력 <br>
		스크립틀릿 이용해서 출력 가능 : <% out.println(sum); %><br><br>
		표현식(출력식)으로 출력 가능 : <%= sum %>
	</p>
	
	<%
		String[] name = {"김말동","홍길동","이순신","강개순"}; 
	%>
	
	<h5>배열의 길이 : <%= name.length %></h5>
	
	<h4>반복문을 통해 요소 반복적으로 화면에 출력 가능</h4>
	
	<ul>
		<%-- 
		<% for(int i=0; i<name.length; i++){ %>
			<!-- HTML 구간 -->
			<li><%= name[i] %></li>
		
		
		<% } %>
		--%>
		
		<% for(String str : name){ %>
			<li><%= str %></li>
		<% } %>
	</ul>
	
</body>
</html>