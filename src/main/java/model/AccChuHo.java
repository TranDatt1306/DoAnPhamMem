package model;

import java.sql.Date;

public class AccChuHo {

	private String idHo;           // Unique identifier for the household
	private String matKhau;        // Password
	private String idChuHo;        // ID of the head of the household
	private String hoTen;          // Name of the head of the household
	private String email;          // Email address
	private Date ngayCap;          // Date of issue
	private String maQuyen;        // Permission code or role
	private int soLuongTV;         // Number of household members
	
	// Constructor to initialize all attributes
	public AccChuHo(String idHo, String matKhau, String idChuHo, String hoTen, String email, Date ngayCap, String maQuyen, int soLuongTV) {
	    this.idHo = idHo;
	    this.matKhau = matKhau;
	    this.idChuHo = idChuHo;
	    this.hoTen = hoTen;
	    this.email = email;
	    this.ngayCap = ngayCap;
	    this.maQuyen = maQuyen;
	    this.soLuongTV = soLuongTV;
	}
	
	// Getters and setters for all attributes
	public String getIdHo() {
	    return idHo;
	}
	
	public void setIdHo(String idHo) {
	    this.idHo = idHo;
	}

public String getMatKhau() {
    return matKhau;
}

public void setMatKhau(String matKhau) {
    this.matKhau = matKhau;
}

public String getIdChuHo() {
    return idChuHo;
}

public void setIdChuHo(String idChuHo) {
    this.idChuHo = idChuHo;
}

public String getHoTen() {
    return hoTen;
}

public void setHoTen(String hoTen) {
    this.hoTen = hoTen;
}

public String getEmail() {
    return email;
}

public void setEmail(String email) {
    this.email = email;
}

public Date getNgayCap() {
    return ngayCap;
}

public void setNgayCap(Date ngayCap) {
    this.ngayCap = ngayCap;
}

public String getMaQuyen() {
    return maQuyen;
}

public void setMaQuyen(String maQuyen) {
    this.maQuyen = maQuyen;
}

public int getSoLuongTV() {
    return soLuongTV;
}

public void setSoLuongTV(int soLuongTV) {
    this.soLuongTV = soLuongTV;
}

// Override toString for easy representation of the class
@Override
public String toString() {
    return "Household{" +
            "idHo='" + idHo + '\'' +
            ", matKhau='" + matKhau + '\'' +
            ", idChuHo='" + idChuHo + '\'' +
            ", hoTen='" + hoTen + '\'' +
            ", email='" + email + '\'' +
            ", ngayCap=" + ngayCap +
            ", maQuyen='" + maQuyen + '\'' +
            ", soLuongTV=" + soLuongTV +
            '}';
}
}
