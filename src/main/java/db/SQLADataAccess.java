package db;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.SANPHAM;
public class SQLADataAccess {
	
	
	Connection cnn=null;
	Statement stm;
	PreparedStatement ps;
	public SQLADataAccess() {
		
	}
	public ResultSet getResultSet(String SQL) {
		ResultSet rs=null;
		try {
			cnn=DBUtils.getConnection();
			stm=cnn.createStatement();
			rs = this.stm.executeQuery(SQL);
		} 
		catch (SQLException ex) {
			ex.printStackTrace();
		}
		return  rs;
	}
	public ResultSet getResultSet(String SQL, Object[] param) {
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			cnn=DBUtils.getConnection();
			 ps = cnn.prepareStatement(SQL);
			 int i = 1;
			 for (Object value : param) {
				 ps.setObject(i, value);
				 i++;
			 }
			 rs = ps.executeQuery();
			 
		} catch (SQLException ex) {
			 ex.printStackTrace();
		}
		return rs;
	}
	//SQL (DELETE, UPDATE, INSERT)
	public int ExecuteSQL(String SQL) {
		int k = 0;
		try {
			cnn= DBUtils.getConnection();
			stm=cnn.createStatement();
			k = this.stm.executeUpdate(SQL);
		} catch (SQLException e) {
			
		}
		return k;
	}
	public int ExecuteSQL(String SQL, Object[] param) {
		int k = 0;
		try {
			cnn=DBUtils.getConnection();
			ps = this.cnn.prepareStatement(SQL);
			int i = 1;
			for (Object value : param) {
				ps.setObject(i, value);
				i++;
			}
			k = ps.executeUpdate();
		} catch (SQLException e) {
		}
		return k;
	}
	public int Execute_StoredProcedures(String NameStoredProcedures, Object[] param) {
		int k = 0;
		try {
			
			cnn= DBUtils.getConnection();
			CallableStatement ps = this.cnn.prepareCall(NameStoredProcedures);
			int i = 1;
			for (Object value : param) {
				ps.setObject(i, value);
				i++;
			}
			
			k = ps.executeUpdate();
		} catch (SQLException e) {
		}
		return k;
	}
	public ResultSet getResultSet_StoredProcedures(String NameStoredProcedures, Object[] param) {
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			cnn= DBUtils.getConnection();
			ps = cnn.prepareCall(NameStoredProcedures);
			if (param != null) {
				int i = 1;
				for (Object value : param) {
					ps.setObject(i, value);
					i++;
				}
			}
			rs = ps.executeQuery();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return rs;
	}
	 public SANPHAM getSanPham(String ms){
	        SANPHAM sp=null;
	        try {
	        	cnn= DBUtils.getConnection();
	            Statement stmt=cnn.createStatement();
	            String sql="select * from tbSANPHAM where MASANPHAM="+ms+"";
	            ResultSet rs=stmt.executeQuery(sql);
	            if(rs.next()){
	                int maSanPham=rs.getInt("MASANPHAM");
	                String tenSanPham=rs.getString("TENSANPHAM");
	                double donGia=rs.getDouble("DONGIA");
	                double donGiaCu=rs.getDouble("DONGIACU");
	                double soLuong= rs.getDouble("SOLUONG");
	                int rate= rs.getInt("RATE");
	                int isNew= rs.getInt("NEW");
	                int sale= rs.getInt("SALE");
	                String hinhAnh= rs.getString("HINHANH");
	                String moTa=rs.getString("MOTA");
	                int maDanhMuc= rs.getInt("MADANHMUC");
	                sp=new SANPHAM(maSanPham,tenSanPham,donGia,donGiaCu,soLuong,rate,isNew,sale,hinhAnh,moTa,maDanhMuc);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return sp;
	    }
//	 public static void main(String[] args) {
//		 SQLADataAccess sqlDA= new SQLADataAccess();
//		 ResultSet rs= sqlDA.getResultSet("select * from tbSANPHAM");
//		 while()
//	}
}

