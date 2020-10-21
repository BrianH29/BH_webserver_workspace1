<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>피자 주문 페이지</h1>
	
	<h2>Today's Date</h2>
	<%@include file="includePage.jsp" %>
	
	  <form action="/2_JSP/confirmPizza.do" method="post">
        <fieldset>
            <legend>주문자정보</legend>

            <table>
                <tr>
                    <th>이름</th>
                    <td><input type="text" name="userName" required></td>
                </tr>
                <tr>
                    <th>전화번호</th>
                    <td><input type="tel" name="phone" required></td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td><input type="text" name="address" required></td>
                </tr>
                <tr>
                    <th>요청사항</th>
                    <td>
                        <textarea name="message"></textarea>
                    </td>
                </tr>
            </table>

        </fieldset>
        <fieldset>
            <legend>주문정보</legend>
            <table>
                <tr>
                    <th>피자</th>
                    <td>
                        <select name="pizza">
                            <option value="콤비네이션">콤비네이션</option>
                            <option value="치즈">치즈</option>
                            <option value="포테이토">포테이토</option>
                            <option value="고구마">고구마</option>
                            <option value="불고기">불고기</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>피자</th>
                    <td>
                        <select name="pizza">
                            <option value="콤비네이션">콤비네이션</option>
                            <option value="치즈">치즈</option>
                            <option value="포테이토">포테이토</option>
                            <option value="고구마">고구마</option>
                            <option value="불고기">불고기</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>토핑</th>
                    <td>
                        <input type="checkbox" name="topping" value="고구마무스"> 고구마무스
                        <input type="checkbox" name="topping" value="콘크림무스"> 콘크림무스
                        <input type="checkbox" name="topping" value="파인애플토핑"> 파인애플토핑
                        <br>
                        <input type="checkbox" name="topping" value="치즈토핑"> 치즈토핑
                        <input type="checkbox" name="topping" value="치즈크러스트"> 치즈크러스트
                        <input type="checkbox" name="topping" value="치즈바이트"> 치즈바이트
                    </td>
                </tr>
                <tr>
                    <th>사이드</th>
                    <td>
                        <input type="checkbox" name="side" value="콜라"> 콜라
                        <input type="checkbox" name="side" value="사이다"> 사이다
                        <input type="checkbox" name="side" value="핫소스"> 핫소스
                        <br>
                        <input type="checkbox" name="side" value="피클"> 피클
                        <input type="checkbox" name="side" value="파마사치즈"> 파마사치즈
                        <input type="checkbox" name="side" value="갈릭소스"> 갈릭소스
                        <br>
                        <input type="checkbox" name="side" value="웨지감자"> 웨지감자
                        <input type="checkbox" name="side" value="치킨봉"> 치킨봉
                        <input type="checkbox" name="side" value="치즈스티"> 치즈스티

                    </td>
                </tr>

            </table>

        </fieldset>
        <button type="submit">주문</button>
    </form>
	
</body>
</html>