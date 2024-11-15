package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.SQLADataAccess;

/**
 * Servlet implementation class ConfirmAccept
 */
@WebServlet("/ConfirmAccept")
public class ConfirmAccept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmAccept() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		int IdPara = Integer.parseInt(id);
		System.out.print(IdPara);
		if(IdPara ==1 ) {
			try {
				SQLADataAccess sqlDA = new SQLADataAccess();
				String SQL1 = "Update DangKyKhaiSinh set trangThaiDuyet=2 where maDangKyKhaiSinh='DKKS001'";
				int rowsAffected = sqlDA.ExecuteSQL(SQL1);
					if(rowsAffected>=1) {
						System.out.println("Duyệt thành công!");
					}else {
						System.out.println("Duyệt thất bại!");
					}
				} catch (Exception ex) {
					ex.printStackTrace();
				}
		}
		else if(IdPara ==2) {
			try {
				SQLADataAccess sqlDA = new SQLADataAccess();
				String SQL1 = "Update DangKyKhaiSinh set trangThaiDuyet=2 where maDangKyKhaiSinh='DKKS002'";
				int rowsAffected = sqlDA.ExecuteSQL(SQL1);
					if(rowsAffected>=1) {
						System.out.println("Duyệt thành công!");
					}else {
						System.out.println("Duyệt thất bại!");
					}
				} catch (Exception ex) {
					ex.printStackTrace();
				}
		}
		
		response.sendRedirect("employ_dsbieumau");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
