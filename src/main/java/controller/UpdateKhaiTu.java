package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.SQLADataAccess;

/**
 * Servlet implementation class UpdateKhaiTu
 */
@WebServlet("/UpdateKhaiTu")
public class UpdateKhaiTu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateKhaiTu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String macongdan= request.getParameter("macongdan");
		String ngaymat = request.getParameter("ngaymat");
		String ngaybaotu = request.getParameter("ngaybaotu");
		String noimat = request.getParameter("noimat");
		String nguyennhan = request.getParameter("nguyennhan");
		
		System.out.println(macongdan);
		System.out.println(ngaymat);
		System.out.println(ngaybaotu);
		System.out.println(noimat);
		System.out.println(nguyennhan);
		try {
		SQLADataAccess sqlDA = new SQLADataAccess();
		String SQL1 = "Select idHo from NhanKhau where maCongDan='"+macongdan+"'";
		String idHo=null;
		ResultSet rs = sqlDA.getResultSet(SQL1);
		try {
			while (rs.next()) {
				idHo = rs.getString("idHo");
				System.out.println("Réult"+idHo);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		String SQL = "UPDATE DangKyKhaiTu SET "
				+ "maCongDan=? ,"
			    + "ngayMat = ?, "
			    + "ngayBaoTu = ?, "
			    + "noiTu = ?, "
			    + "nguyenNhan = ? "
			    + "WHERE maKhaiTu ='DKKT001'";
	    Object[] parameters = new Object[] {
	    		macongdan,
	        ngaymat, 
	        ngaybaotu, 
	        noimat, 
	        nguyennhan 
	    };
	    int rowsAffected = sqlDA.ExecuteSQL(SQL, parameters);
		if(rowsAffected>=1) {
			System.out.println("Insert product successfully!");
		}else {
			System.out.println("Insert product failed!");
		}
	} catch (Exception ex) {
		ex.printStackTrace();
	}
		 response.sendRedirect("editKhaiTu");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
