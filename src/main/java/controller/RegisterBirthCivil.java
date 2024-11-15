package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.SQLADataAccess;
import model.BirthRegistration;

/**
 * Servlet implementation class RegisterBirthCivil
 */
@WebServlet("/RegisterBirthCivil")
public class RegisterBirthCivil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterBirthCivil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ma= request.getParameter("ma");
		System.out.println(ma);
		 int Id = Integer.parseInt(ma);
		 System.out.println(Id);
		// TODO Auto-generated method stub
		 SQLADataAccess sqlDA = new SQLADataAccess();
		 String maDangKyKhaiSinh,idHo,hoTen,gioiTinh, danToc, quocTich, noiSinh, queQuan, noiCuTru, tenCha, cccdCha, tenMe, cccdMe;
		Date ngaySinh;
		BirthRegistration birthRegistration= null ;
		if(Id==1) {
			String sql= "select * from DangKyKhaiSinh where maDangKyKhaiSinh = 'DKKS001'";
			ResultSet rs = sqlDA.getResultSet(sql);
			try {
				while (rs.next()) {
					birthRegistration= new BirthRegistration(
						    rs.getString("maDangKyKhaiSinh"),
						    rs.getString("idHo"),
						    rs.getString("hoTen"),
						    rs.getDate("ngaySinh"),
						    rs.getString("gioiTinh"),
						    rs.getString("danToc"),
						    rs.getString("quocTich"),
						    rs.getString("noiSinh"),
						    rs.getString("queQuan"),
						    rs.getString("noiCuTru"),
						    rs.getString("tenCha"),
						    rs.getString("cccdCha"),
						    rs.getString("tenMe"),
						    rs.getString("cccdMe"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("birthRegistration", birthRegistration);
			request.setAttribute("IdUser", 1);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/jsps/employ_dsbieumau.jsp");

	// Forward (Chuyển tiếp) yêu cầu, để hiển thị trên trang JSP.
			dispatcher.forward(request, response);
//			response.getWriter().append("Served at: ").append(request.getContextPath());
		}
		else if(Id==2){
			String sql= "select * from DangKyKhaiSinh where maDangKyKhaiSinh = 'DKKS002'";
			ResultSet rs = sqlDA.getResultSet(sql);
			try {
				while (rs.next()) {
					birthRegistration= new BirthRegistration(
						    rs.getString("maDangKyKhaiSinh"),
						    rs.getString("idHo"),
						    rs.getString("hoTen"),
						    rs.getDate("ngaySinh"),
						    rs.getString("gioiTinh"),
						    rs.getString("danToc"),
						    rs.getString("quocTich"),
						    rs.getString("noiSinh"),
						    rs.getString("queQuan"),
						    rs.getString("noiCuTru"),
						    rs.getString("tenCha"),
						    rs.getString("cccdCha"),
						    rs.getString("tenMe"),
						    rs.getString("cccdMe"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("IdUser", 2);
			request.setAttribute("birthRegistration", birthRegistration);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/jsps/employ_dsbieumau.jsp");
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
