package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import dao.DepartmentDAO;
import dao.RoleDAO;
import dao.UserDAO;
import model.DepartmentModel;
import model.RoleModel;
import model.UserModel;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	String action = request.getParameter("action");
    	
    	try {
        	if("list".equals(action)) {
        		listUser(request, response);
        	}else if("view".equals(action)) {
        		viewUser(request, response);
        	}else if("create".equals(action)) {
        		showCreateForm(request, response);
        	}
    	}catch(SQLException ex) {
			throw new ServletException(ex);
		}
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		try {
//        	
//    	}catch(SQLException ex) {
//			throw new ServletException(ex);
//		}
	}
	
	
	
	
	//This is a method to show all list of user
	 private void listUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {

	        List<UserModel> Userlist = UserDAO.getAllUsers();
	        request.setAttribute("users", Userlist);
	        request.getRequestDispatcher("admin/admin-user-list.jsp").forward(request, response);
	}
	
	 // this is a method to display details of a user (id)
	private void viewUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		int idUser = Integer.parseInt(request.getParameter("id"));
		//System.out.println("RAW ID PARAM = " + idUser);
		
		UserModel existingUser = UserDAO.getUserById(idUser);
		List <DepartmentModel> existingDept = DepartmentDAO.getAllDept();
		List <RoleModel> allRole = RoleDAO.getAllRoles();
		
		request.setAttribute("roles", allRole);
		request.setAttribute("depts", existingDept);
		request.setAttribute("user", existingUser); 
		
		request.setAttribute("mode", "edit"); // to trigger the edit form
        request.getRequestDispatcher("admin/admin-user-details.jsp").forward(request, response);
	}
	
	private void showCreateForm (HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		request.setAttribute("mode", "create");
		request.setAttribute("user", new UserModel());
		request.getRequestDispatcher("admin/admin-user-details.jsp").forward(request, response);
	}
}
