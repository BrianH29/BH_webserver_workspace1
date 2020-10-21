<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	//스크립틀릿
	String userName = (String)request.getAttribute("userName");
	String phone = (String)request.getAttribute("phone");
	String address = (String)request.getAttribute("address");
	String message = (String)request.getAttribute("message");
	
	String[] pizza = (String[])request.getAttribute("pizza");
	String[] toppings = (String[])request.getAttribute("toppings");
	String[] sides = (String[])request.getAttribute("sides");
	int price = (int)request.getAttribute("price");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>주문내역</h1>

    <h4>[ 주문자 정보 ]</h4>
    <ul>
        <li>성함 : <%=userName %></li>
        <li>전화번호 : <%=phone %></li>
        <li>주소 : <%=address %></li>

        <!-- 요청사항을 기술했을 경우-->
        <%if(!message.equals("")){ %>
        	<li>요청사항:<%=message %>)</li>
        
		<%} else { %><!-- 요청사항을 기술하지 않았을 경우-->
       		 <li>요청사항 : 작성안함</li>
			
		<%} %>
    </ul>

    <br>
    <h4>[ 주문 정보 ]</h4>
    <ul>
    	<%if(pizza != null) { %>
        <li>피자 :<%= String.join(",",pizza) %></li>
		<%} %>

		<%if(toppings == null){ %><!-- 토핑을 선택안헀을 경우 -->
	        <li>토핑 : 선택안함</li>
        
		<%} else { %> <!-- 토핑을 선택했을 경우 -->
       
        	<li>토핑 : <%= String.join(",",toppings) %></li>
       	<%} %>
       	
       	
		
		<%if(sides == null){ %><!-- 사이드,을 선택안헀을 경우 -->
        	<li>사이드 : 선택안함</li>
        	
		<%}else { %> <!-- 사이드을 선택했을 경우 -->
       
        	<li>사이드 : <%= String.join(",",sides) %></li>
     	<%} %>
    </ul>

    <br>
    <h3>위와 같이 주문하셨습니다.</h3>

    <h2>총 가격 : <%=price %>원</h2>

    <br>
    <h1 style="color:pink">즐거운 식사 되세요~~</h1>
</body>
</html>