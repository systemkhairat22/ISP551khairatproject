package admin.AdminController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.AdminDAO.AdminDAO;
import user.model.Member;


/**
 * Servlet implementation class CreateMemberController
 */
@WebServlet("/CreateMemberController")
public class CreateMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminDAO dao;
    /**
     * Default constructor. 
     */
    public CreateMemberController() {
    	super();
    	dao = new AdminDAO();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("UIadmin/createmember.jsp");
		view.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member member = new Member();
		
		member.setMem_name(request.getParameter("mem_name"));
		member.setMem_icnum(request.getParameter("mem_icnum"));
		member.setMem_age(Integer.parseInt(request.getParameter("mem_age")));
		member.setMem_address(request.getParameter("mem_address"));
		member.setMem_phonenum(request.getParameter("mem_phonenum"));
		member.setRepresentative_name(request.getParameter("rep_name"));
		member.setRepresentative_icnum(request.getParameter("rep_icnum"));
		member.setMem_email(request.getParameter("mem_Email"));
		member.setMem_password(request.getParameter("mem_password"));
		
		dao.addMember(member);
		
		request.setAttribute("member", AdminDAO.getListMember());
		RequestDispatcher view = request.getRequestDispatcher("UIadmin/memberlist.jsp");
		view.forward(request, response);
	}

}
