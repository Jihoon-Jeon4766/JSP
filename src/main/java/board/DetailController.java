package board;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class DetailController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		
				int id = Integer.parseInt(request.getParameter("id"));
				
				BoardDAO dao = new BoardDAO();
				BoardDTO board = dao.getBoardById(id);
				
				if(board != null) {
					request.setAttribute("board", board);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/Chapter8/Detail.jsp");
					dispatcher.forward(request, response);
					
				}else {
					response.sendRedirect(request.getContextPath()+"/list.do");
				}
				
			}
}
