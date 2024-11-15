package db;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.microsoft.sqlserver.jdbc.SQLServerDriver;

//import com.mysql.cj.jdbc.Driver;

public class DBUtils {
	public static Connection getConnection() {
		Connection c = null;
		
		try {
			// Đăng ký MySQL Driver với DriverManager
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			DriverManager.registerDriver(new SQLServerDriver());
			// Các thông số
			String url = "jdbc:sqlserver://localhost:1433;databaseName=QuanLyNhanKhau;encrypt=true;trustServerCertificate=true;";
			String username = "sa";
			String password = "sa";
			
			// Tạo kết nối
			c = DriverManager.getConnection(url, username, password);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return c;
	}
	
	public static void closeConnection(Connection c) {
		try {
			if(c!=null) {
				c.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void printInfo(Connection c) {
		try {
			if(c!=null) {
				DatabaseMetaData mtdt = c.getMetaData();
				System.out.println(mtdt.getDatabaseProductName());
				System.out.println(mtdt.getDatabaseProductVersion());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}

