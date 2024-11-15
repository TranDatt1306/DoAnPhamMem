package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.SQLADataAccess;
import model.MONHANG;
import model.SANPHAM;

/**
 * Servlet implementation class productProcess
 */
@WebServlet("/productProcess")
public class productProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public productProcess() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String maSanPham= request.getParameter("MASANPHAM");
		int maSP;
		String tenSP;
		double dongia;
		double dongiacu;
		double soluong;
		int rate;
		int isNew;
		int sale;
		String hinhAnh;
		String moTa;
		int maDanhMuc;
		int KM;
		double soluongmax;
		String sql = "select * from tbMONHANG";
		List<MONHANG> cartItems = new ArrayList<>();
		MONHANG mh = null;
		double TotalMoney = 0.0;
		SQLADataAccess sqlDA = new SQLADataAccess();
		ResultSet rs = sqlDA.getResultSet(sql);
		try {
			while (rs.next()) {
				maSP = rs.getInt("MASANPHAM");
				tenSP = rs.getString("TENSANPHAM");
				dongia = rs.getDouble("DONGIA");
				soluong = rs.getDouble("SOLUONG");
				hinhAnh = rs.getString("HINHANH");
				moTa = rs.getString("MOTA");
				maDanhMuc = rs.getInt("MADANHMUC");
				KM=rs.getInt("KM");
				soluongmax= rs.getDouble("SOLUONGMAX");
				mh = new MONHANG(maSP, tenSP, dongia, soluong, hinhAnh, moTa, maDanhMuc,KM,soluongmax);
				System.out.println("CAC MON HANG" + mh.getTenSP());
				TotalMoney += soluong * dongia;
				System.out.println("TotalMoney" + TotalMoney);
				cartItems.add(mh);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int numOfItems = cartItems.size();
		request.setAttribute("cartItems", cartItems);
		request.setAttribute("numOfItems", numOfItems);
		request.setAttribute("TotalMoney", TotalMoney);
		
		List<SANPHAM> listSP = new ArrayList<>();
		SANPHAM sp = null;
		sql = "select * from tbSANPHAM Where MASANPHAM=" +maSanPham;
		rs = sqlDA.getResultSet(sql);
		try {
			while (rs.next()) {
				maSP = rs.getInt("MASANPHAM");
				System.out.println(maSP);
				tenSP = rs.getString("TENSANPHAM");
				dongia = rs.getDouble("DONGIA");
				dongiacu = rs.getDouble("DONGIACU");
				soluong = rs.getDouble("SOLUONG");
				rate = rs.getInt("RATE");
				isNew = rs.getInt("NEW");
				sale = rs.getInt("SALE");
				hinhAnh = rs.getString("HINHANH");
				moTa = rs.getString("MOTA");
				maDanhMuc = rs.getInt("MADANHMUC");
				sp = new SANPHAM(maSP, tenSP, dongia, dongiacu, soluong, rate, isNew, sale, hinhAnh, moTa, maDanhMuc);
				listSP.add(sp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("sp", sp);
		List<Integer> numbers =new ArrayList<>();
		sql = "select MASANPHAM from tbSANPHAM";
		rs = sqlDA.getResultSet(sql);
		try {
			while (rs.next()) {
				maSP = rs.getInt("MASANPHAM");
				System.out.println(maSP);
				numbers.add(maSP);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		numbers.remove(numbers.remove(Integer.valueOf(maSanPham)));
		int num1 = 0;
        int num2 = 0;
        int num3 = 0;
        int num4 = 0;
		for(int i=1;i<10;i++) {
			Collections.shuffle(numbers, new Random());
	        num1 = numbers.get(0);
	        num2 = numbers.get(1);
	        num3 = numbers.get(2);
	        num4 = numbers.get(3);
	        System.out.println(num1 + " " + num2 + " " + num3);
		}
       
		sql = "select * from tbSANPHAM Where MASANPHAM= "+num1+" or MASANPHAM="+num2+" or MASANPHAM="+num3+" or MASANPHAM ="+num4;
		rs = sqlDA.getResultSet(sql);
		try {
			while (rs.next()) {
				maSP = rs.getInt("MASANPHAM");
				System.out.println(maSP);
				tenSP = rs.getString("TENSANPHAM");
				dongia = rs.getDouble("DONGIA");
				dongiacu = rs.getDouble("DONGIACU");
				soluong = rs.getDouble("SOLUONG");
				rate = rs.getInt("RATE");
				isNew = rs.getInt("NEW");
				sale = rs.getInt("SALE");
				hinhAnh = rs.getString("HINHANH");
				moTa = rs.getString("MOTA");
				maDanhMuc = rs.getInt("MADANHMUC");
				sp = new SANPHAM(maSP, tenSP, dongia, dongiacu, soluong, rate, isNew, sale, hinhAnh, moTa, maDanhMuc);
				listSP.add(sp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.setAttribute("listSP", listSP);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/jsps/product.jsp");
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
