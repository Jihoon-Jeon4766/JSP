package board;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateSubmitController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		
		BoardDAO dao = new BoardDAO();
		boolean isUpdate = dao.updateBoard(id, title, content, writer);
		
		if(isUpdate) {
			response.sendRedirect(request.getContextPath() + "/detail.do?id=" + id);
			
		}else {
			response.getWriter().println("Failed to update the board");
		}
		
       
    }
}
