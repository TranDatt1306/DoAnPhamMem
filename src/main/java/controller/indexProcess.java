package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.SQLADataAccess;
import model.MONHANG;
import model.SANPHAM;

/**
 * Servlet implementation class indexProcess
 */
@WebServlet("/indexProcess")
public class indexProcess extends HttpServlet {
	static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public indexProcess() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		String userName = request.getParameter("userName");
//		String password = request.getParameter("password");
//		String hinhanh = null;
//		String fulName = null;
//		String email = null;
//		String phoneNum = null;
//		Date resDate = null;
//		dieu_khien dk = new dieu_khien();
//		boolean checkUser = dk.check(userName, password);
//		HttpSession session = request.getSession(true);
		int status=0;
		SQLADataAccess sqlDA = new SQLADataAccess();
			String queryImg = "select trangThaiDuyet from DangKyKhaiSinh where maDangKyKhaiSinh='DKKS001'";
			ResultSet rs = sqlDA.getResultSet(queryImg);
			try {
				while (rs.next()) {
					status = Integer.parseInt(rs.getString("trangThaiDuyet"));
					System.out.println(status);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			session.setAttribute("hinhanh", hinhanh);
//			session.setAttribute("uname", userName);
//			session.setAttribute("upass", password);
//			session.setAttribute("fulName", fulName);
//			session.setAttribute("email", email);
//			session.setAttribute("phoneNum", phoneNum);
//			session.setAttribute("resDate", resDate);
//		}
//		String sql = "select * from tbSANPHAM";
//		ResultSet rs = sqlDA.getResultSet(sql);
//		int maSP;
//		String tenSP;
//		double dongia;
//		double dongiacu;
//		double soluong;
//		int rate;
//		int isNew;
//		int sale;
//		String hinhAnh;
//		String moTa;
//		int maDanhMuc;
//		int KM;
//		double soluongmax;
//		List<SANPHAM> list = new ArrayList<>();
//		SANPHAM sp = null;
//		try {
//			while (rs.next()) {
//				maSP = rs.getInt("MASANPHAM");
//				tenSP = rs.getString("TENSANPHAM");
//				dongia = rs.getDouble("DONGIA");
//				dongiacu = rs.getDouble("DONGIACU");
//				soluong = rs.getDouble("SOLUONG");
//				rate = rs.getInt("RATE");
//				isNew = rs.getInt("NEW");
//				sale = rs.getInt("SALE");
//				hinhAnh = rs.getString("HINHANH");
//				moTa = rs.getString("MOTA");
//				maDanhMuc = rs.getInt("MADANHMUC");
//				sp = new SANPHAM(maSP, tenSP, dongia, dongiacu, soluong, rate, isNew, sale, hinhAnh, moTa, maDanhMuc);
//				System.out.println(sp.getTenSP());
//				list.add(sp);
//			}
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		request.setAttribute("list", list);
//		sql = "select * from tbMONHANG";
//		rs = sqlDA.getResultSet(sql);
//		List<MONHANG> cartItems = new ArrayList<>();
//		MONHANG mh = null;
//		double TotalMoney = 0.0;
//		try {
//			while (rs.next()) {
//				maSP = rs.getInt("MASANPHAM");
//				tenSP = rs.getString("TENSANPHAM");
//				dongia = rs.getDouble("DONGIA");
//				soluong = rs.getDouble("SOLUONG");
//				hinhAnh = rs.getString("HINHANH");
//				moTa = rs.getString("MOTA");
//				maDanhMuc = rs.getInt("MADANHMUC");
//				KM = rs.getInt("KM");
//				soluongmax = rs.getDouble("SOLUONGMAX");
//				mh = new MONHANG(maSP, tenSP, dongia, soluong, hinhAnh, moTa, maDanhMuc, KM, soluongmax);
//				System.out.println("CAC MON HANG" + sp.getTenSP());
//				TotalMoney += soluong * dongia;
//				System.out.println("TotalMoney" + TotalMoney);
//				cartItems.add(mh);
//			}
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		int numOfItems = cartItems.size();
//
//		request.setAttribute("cartItems", cartItems);
//		request.setAttribute("numOfItems", numOfItems);
		request.setAttribute("status", status);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/jsps/afterlogin.jsp");

// Forward (Chuyển tiếp) yêu cầu, để hiển thị trên trang JSP.
		dispatcher.forward(request, response);
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
