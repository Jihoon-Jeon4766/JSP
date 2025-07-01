package member;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import common.MemberDAO;
import common.MemberDTO;

public class MemberDeleteController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session.getAttribute("loginUser") == null) {
            response.sendRedirect(request.getContextPath() + "/Chapter9/Login.jsp");
            return;
        }

        String id = ((common.MemberDTO) session.getAttribute("loginUser")).getId();

        MemberDAO dao = new MemberDAO();
        int result = dao.deleteMember(id);
        dao.close();

        if (result > 0) {
            session.invalidate(); 
            response.sendRedirect(request.getContextPath() + "/Chapter9/Login.jsp");
        } else {
            
        }
    }
}
