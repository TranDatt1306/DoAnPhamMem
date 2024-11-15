package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.SQLADataAccess;
import model.AccChuHo;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String searchkey= request.getParameter("querysearch");

		SQLADataAccess sqlDA = new SQLADataAccess();
		String SQL = "Select * from TK_NguoiDanChuHo where idHo LIKE N'%"+searchkey+"%' or HoTen LIKE N'%"+searchkey+"%' or Email LIKE N'%"+searchkey+"%'";
		ResultSet rs = sqlDA.getResultSet(SQL);
		String idHo,matKhau, idChuHo,HoTen,Email,maQuyen;
		Date NgayCap;
		int soLuongTV;
		List<AccChuHo> accounts = new ArrayList<>();
		try {
		    while (rs.next()) {
		         idHo = rs.getString("idHo");
		         matKhau = rs.getString("matKhau");
		         idChuHo = rs.getString("idChuHo");
		         HoTen = rs.getString("HoTen");
		         Email = rs.getString("Email");
		         NgayCap = rs.getDate("NgayCap");
		         maQuyen = rs.getString("Ma_quyen");
		         soLuongTV = rs.getInt("soLuongTV");
		        AccChuHo account = new AccChuHo(idHo, matKhau, idChuHo, HoTen, Email, NgayCap, maQuyen, soLuongTV);
		        accounts.add(account);
		    }
		} catch (SQLException e) {
		    e.printStackTrace(); // Log the exception for debugging
		}

		request.setAttribute("accounts", accounts);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/jsps/admin_qltk.jsp");

		// Forward (Chuyển tiếp) yêu cầu, để hiển thị trên trang JSP.
				dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
