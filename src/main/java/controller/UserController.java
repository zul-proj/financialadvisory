package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import dao.UserDAO;
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
	
	
}
