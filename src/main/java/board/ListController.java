	package board;
	
	import jakarta.servlet.RequestDispatcher;
	import jakarta.servlet.ServletException;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	
	import java.io.IOException;
	import java.util.List;
	
	public class ListController extends HttpServlet{
		protected void doGet(HttpServletRequest request, HttpServletResponse response) 
							throws ServletException, IOException {
				BoardDAO dao = new BoardDAO();
				
				List<BoardDTO> boardList =  dao.getBoardList();
				
				request.setAttribute("boardList", boardList);
				
				RequestDispatcher dispatcher = 
						request.getRequestDispatcher("/Chapter8/list.jsp");
				dispatcher.forward(request, response);
		}
	}
