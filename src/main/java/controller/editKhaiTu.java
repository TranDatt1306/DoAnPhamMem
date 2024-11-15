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
import model.DeathRegistration;

/**
 * Servlet implementation class editKhaiTu
 */
@WebServlet("/editKhaiTu")
public class editKhaiTu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editKhaiTu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 SQLADataAccess sqlDA = new SQLADataAccess();
		 String maKhaiTu,idHo,noiTu, nguyenNhan, maCongDan, trangThaiDuyet;
		Date ngayMat,ngayBaoTu;
		DeathRegistration deathRegistration= null ;
		
			String sql= "select * from DangKyKhaiTu where maKhaiTu = 'DKKT001'";
			ResultSet rs = sqlDA.getResultSet(sql);
			try {
				while (rs.next()) {
					    // Khởi tạo đối tượng DeathRegistration bằng dữ liệu từ ResultSet
						deathRegistration = new DeathRegistration(
					        rs.getString("maKhaiTu"),  // Mã khai tử
					        rs.getString("idHo"),      // ID hộ gia đình
					        rs.getDate("ngayMat"), 
					        rs.getDate("ngayBaoTu"), 
					        rs.getString("noiTu"),     // Nơi mất
					        rs.getString("nguyenNhan"),// Nguyên nhân tử vong
					        rs.getString("maCongDan"), // Mã công dân
					        rs.getInt("trangThaiDuyet") // Trạng thái duyệt
					    );
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("deathRegistration", deathRegistration);
			
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/jsps/editKhaiTu.jsp");
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
