package board;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class DeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		
		BoardDAO dao = new BoardDAO();
		boolean isDelete = dao.deleteBoard(id);
		
		if(isDelete) {
			response.sendRedirect(request.getContextPath() + "/list.do");
		}else {
			response.getWriter().print("Failed to delete the board");
		}

	}
}
