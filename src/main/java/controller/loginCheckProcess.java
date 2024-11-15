package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginCheckProcess
 */
@WebServlet("/loginCheckProcess")
public class loginCheckProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginCheckProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName= request.getParameter("cmnd");
		String password= request.getParameter("password");
		if(password.equals("admin01")) {
			response.sendRedirect(request.getContextPath()+"/adminController");	
		}
		else if(password.equals("nvp01")) {
			response.sendRedirect(request.getContextPath()+"/civilController");	
		}
		else if(password.equals("cd101")) {
			response.sendRedirect(request.getContextPath()+"/indexProcess");	
		}
		else {
			request.setAttribute("Eror", 1	);
//			response.getWriter().append("Served at: ").append(request.getContextPath());
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/jsps/login.jsp");	
			dispatcher.forward(request, response);
		}
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
