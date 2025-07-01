package board;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class WriteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/Chapter8/Write.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String writer = request.getParameter("writer");

        BoardDTO dto = new BoardDTO();
        dto.setTitle(title);
        dto.setContent(content);
        dto.setWriter(writer);

        BoardDAO dao = new BoardDAO();
        
        int result = dao.insertBoard(dto);

        if (result > 0) {
            response.sendRedirect(request.getContextPath() + "/list.do");
        } else {
            request.setAttribute("message", "게시글 작성 실패");
            request.getRequestDispatcher("Chapter8/Write.jsp").forward(request, response);

        }
    }
}