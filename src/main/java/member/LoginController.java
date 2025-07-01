package member;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import common.MemberDAO;
import common.MemberDTO;

public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uid = request.getParameter("userid");
        String upass = request.getParameter("userpw");

        MemberDAO dao = new MemberDAO();
        MemberDTO dto = dao.getMemberDTO(uid, upass);
        dao.close();

        if (dto.getId() != null) {
            // 로그인 성공
            HttpSession session = request.getSession();
            session.setAttribute("loginUser", dto);

            response.sendRedirect(request.getContextPath() + "/Chapter9/Main.jsp");
        } else {
        
            RequestDispatcher dispatcher = request.getRequestDispatcher("/Chapter9/Login.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.sendRedirect(request.getContextPath() + "/Chapter9/Login.jsp");
    }
}
