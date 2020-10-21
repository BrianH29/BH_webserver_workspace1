package com.kh.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestPostServlet
 */
@WebServlet("/test2.do")
public class RequestPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 요청시 전달값은 request의 parameter 영역 안에 담겨있음!!
		
		// POST 방식같은경우 request 담겨있는 값을 뽑기 "전"에 !! 인코딩을 UTF-8로 작업한 후 그리고나서 뽑아야됨!! 
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");					// "홍길동"  / " " 
		String gender = request.getParameter("gender"); 			// "M", "F" / null 
		int age = Integer.parseInt(request.getParameter("age")); 	// "20" -> 20 / "" -> 오류(NumberFormatException) 
		String city = request.getParameter("city"); 				// "서울"  
		double height = Double.parseDouble(request.getParameter("height")); //"170" -> 170.0
		String[] foods = request.getParameterValues("food"); 		//["한식","일식"] / null
		
		System.out.println("name: " + name);
		System.out.println("gender: " + gender);
		System.out.println("age: " + age);
		System.out.println("city: " + city);
		System.out.println("height: " + height);
		
		if(foods != null) {
			for(int i=0; i<foods.length; i++) {
				System.out.println("foods : " + foods[i]);
			}
		}//e.if
		
		//> Service > Dao > sql문실행 
		// 요청처리 다 했다는 가정하에 응답페이지 만들기
		
		// 1) 이제부터 내가 전달한 내용은 문서형태의 html이고 문자셋은 UTF-8이야 라는걸 지정
		response.setContentType("text/html; charset=UTF-8");
		
		// 2) 요청했던 사용자와의 스트림 생성(길)
		PrintWriter out = response.getWriter(); 
		
		// 3) 스트림으로 html 문서를 한줄씩 출력
		out.println("<html>");
		out.println("<head>");

		out.println("<title> 개인정보출력화면 </title>");
		out.println("<style>");
		
		out.println("h2{color:red}");
		out.println("#name{color:orange; font-weight:bold;}");
		out.println("#age{color:violet}");
		out.println("#city{color:lightgrey;}");
		out.println("#height{font-weight:bold}");
		out.println("#gender{color:yellow;}");
		
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");

		out.println("<h2>개인정보 결과(GET) 화면</h2>");

		// out.println("<span id='name'>" + name+ "</span>");
		out.printf("<span id='name'>%s</span>님은 ", name);
		out.printf("<span id='age'>%d</span>살이며 ", age);
		out.printf("<span id='city'>%s</span>사는 ", city);
		out.printf("<span id='height'>%.1f</span>cm이고 ", height);
		out.print("성별은 ");

		if (gender != null) {
			if (gender.equals("M")) {
				out.print("<span id='gender'>남자</span>입니다.<br>");
			} else { 
				out.print("<span id='gender'>여자</span>입니다.<br>");
			}
		}else {
			out.print("선택안함.<br>");

		}
		
		out.print("좋아하는 음식은 ");
		
		if(foods != null) {
			
			out.print("<ul>");
				for(int i=0; i<foods.length; i++) {
					out.printf("<li>%s</li>", foods[i]);
				}
			
			out.print("</ul>");
			
		}else {
			out.print("없습니다.");
		}
			
		out.println("</body>");
		out.println("</html>");
		
		// Servlet : JAVA 코드 내에 html 기술
		// JSP (Java Server Page) :  html 내에 JAVA 코드 기술 가능 
	
		
	}//e.get

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doPost 실행");
		doGet(request, response);
	}

}
