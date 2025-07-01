package member;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import common.MemberDTO;
import common.MemberDAO;


public class MemberUpdateController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");

        if (loginUser == null) {
            response.sendRedirect(request.getContextPath() + "/Chapter9/Login.jsp");
            return;
        }
        
        String id = loginUser.getId();

        MemberDAO dao = new MemberDAO();
        MemberDTO dto = dao.getMemberById(id);

        if (dto != null) {
            request.setAttribute("member", dto);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/Chapter9/Update.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/login.do");
        }
    }
}
