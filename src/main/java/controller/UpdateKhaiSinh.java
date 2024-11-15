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
 * Servlet implementation class UpdateKhaiSinh
 */
@WebServlet("/UpdateKhaiSinh")
public class UpdateKhaiSinh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateKhaiSinh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
		  response.setContentType("text/html; charset=UTF-8");
		String name= request.getParameter("name");
		String gender= request.getParameter("gender");
		String birthday = request.getParameter("ngaysinh");
		String dantoc = request.getParameter("dantoc");
		String noisinh = request.getParameter("noisinh");
		String quoctich = request.getParameter("quoctich");
		String quequan = request.getParameter("quequan");
		String cutru = request.getParameter("cutru");
		String hotenme = request.getParameter("hotenme");
		String cmndme = request.getParameter("cmndme");
		String hotencha = request.getParameter("hotencha");
		String cmndcha = request.getParameter("cmndcha");
		
		
		
		System.out.println(name);
		System.out.println(gender);
		System.out.println(birthday);
		System.out.println(dantoc);
		System.out.println(noisinh);
		System.out.println(quoctich);
		System.out.println(hotenme);
		System.out.println(cmndme);
		System.out.println(hotencha);
		System.out.println(cmndcha);
		System.out.println(cutru);
		try {
		SQLADataAccess sqlDA = new SQLADataAccess();
		String SQL1 = "Select idHo from NhanKhau where cccd='"+cmndcha+"'";
		String idHo=null;
		ResultSet rs = sqlDA.getResultSet(SQL1);
		try {
			while (rs.next()) {
				idHo = rs.getString("idHo");
				System.out.println(idHo);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		
		String SQL = "UPDATE DangKyKhaiSinh SET "
			    + "idHo = ?, "
			    + "hoTen = ?, "
			    + "ngaySinh = ?, "
			    + "gioiTinh = ?, "
			    + "danToc = ?, "
			    + "quocTich = ?, "
			    + "noiSinh = ?, "
			    + "queQuan = ?, "
			    + "noiCuTru = ?, "
			    + "tenCha = ?, "
			    + "cccdCha = ?, "
			    + "tenMe = ?, "
			    + "cccdMe = ?, "
			    + "trangThaiDuyet = 1 "
			    + "WHERE maDangKyKhaiSinh ='DKKS001'";

	    
	    Object[] parameters = new Object[] {
	        idHo,
	        name, 
	        birthday, 
	        gender, 
	        dantoc, 
	        quoctich,
	        noisinh, 
	        quequan,
	        cutru,
	        hotencha, 
	        cmndcha, 
	        hotenme, 
	        cmndme,   
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
		 response.sendRedirect("editKhaiSinh");
	}

	 
		


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
