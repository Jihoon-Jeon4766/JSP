package member;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import common.MemberDTO;
import common.MemberDAO;

public class MemberUpdateSubmitController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	

        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String name = request.getParameter("name");


        MemberDAO dao = new MemberDAO();
        int result = dao.updateMember(id, password, name);
        
        dao.close();

        if (result > 0) {
            response.sendRedirect(request.getContextPath() + "/Chapter9/UpdateSubmit.jsp");
        } else {
        }
    }
}
