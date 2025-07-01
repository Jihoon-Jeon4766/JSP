package board;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/servlet2.do")

public class ServletTest2 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request ,
			HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("ServletTest", "Test2");
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/Chapter8/EX02.jsp");
		dispatcher.forward(request, response);
	}
	
	
}

	