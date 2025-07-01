package board;

//1. 패키지 호출
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

//2.public 으로 선언. / HttpServlet을 상속 받아야함
public class ServletTest1 extends HttpServlet {
	
	//3. doGet() 또는 doPost() 메서드를 오버라이딩해야함.
	@Override
	protected void doGet(HttpServletRequest request,//4. HttpServletRequest 와 HttpServletResponse를 사용해야함. and 예외처리
						HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("ServletTest", "Test1"); 
		RequestDispatcher dispatcher = 
						request.getRequestDispatcher("/Chapter8/EX01.jsp");
		dispatcher.forward(request, response);
	
	}

}
