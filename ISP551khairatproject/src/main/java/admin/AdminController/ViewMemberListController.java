package admin.AdminController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.AdminDAO.AdminDAO;

@WebServlet("/ViewMemberListController")
public class ViewMemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private AdminDAO dao; 
    public ViewMemberListController() {
        super();
        dao = new AdminDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("Admin", AdminDAO.getListMember());
		RequestDispatcher view = request.getRequestDispatcher("memberlist.jsp");
		view.forward(request, response);
	}

}
