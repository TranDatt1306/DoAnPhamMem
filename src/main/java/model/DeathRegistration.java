package model;

import java.sql.Date;

public class DeathRegistration {
	 private String maKhaiTu;
	    private String idHo;
	    private Date ngayMat; // Ngày tử vong
	    private Date ngayBaoTu; // Ngày báo tử
	    private String noiTu; // Nơi tử vong
	    private String nguyenNhan; // Nguyên nhân tử vong
	    private String maCongDan; // Mã công dân liên quan
	    private int trangThaiDuyet; // Trạng thái duyệt (có thể là 1, 0, v.v.)
	    // Hàm dựng (constructor)
	    public DeathRegistration(String maKhaiTu, String idHo, Date ngayMat, Date ngayBaoTu, 
	                       String noiTu, String nguyenNhan, String maCongDan, int trangThaiDuyet) {
	        this.maKhaiTu = maKhaiTu;
	        this.idHo = idHo;
	        this.ngayMat = ngayMat;
	        this.ngayBaoTu = ngayBaoTu;
	        this.noiTu = noiTu;
	        this.nguyenNhan = nguyenNhan;
	        this.maCongDan = maCongDan;
	        this.trangThaiDuyet = trangThaiDuyet;
	    }

	    // Các phương thức getter và setter cho từng thuộc tính
	    public String getMaKhaiTu() {
	        return maKhaiTu;
	    }

	    public void setMaKhaiTu(String maKhaiTu) {
	        this.maKhaiTu = maKhaiTu;
	    }

	    public String getIdHo() {
	        return idHo;
	    }

	    public void setIdHo(String idHo) {
	        this.idHo = idHo;
	    }

	    public Date getNgayMat() {
	        return ngayMat;
	    }

	    public void setNgayMat(Date ngayMat) {
	        this.ngayMat = ngayMat;
	    }

	    public Date getNgayBaoTu() {
	        return ngayBaoTu;
	    }

	    public void setNgayBaoTu(Date ngayBaoTu) {
	        this.ngayBaoTu = ngayBaoTu;
	    }

	    public String getNoiTu() {
	        return noiTu;
	    }

	    public void setNoiTu(String noiTu) {
	        this.noiTu = noiTu;
	    }

	    public String getNguyenNhan() {
	        return nguyenNhan;
	    }

	    public void setNguyenNhan(String nguyenNhan) {
	        this.nguyenNhan = nguyenNhan;
	    }

	    public String getMaCongDan() {
	        return maCongDan;
	    }

	    public void setMaCongDan(String maCongDan) {
	        this.maCongDan = maCongDan;
	    }

	    public int getTrangThaiDuyet() {
	        return trangThaiDuyet;
	    }

	    public void setTrangThaiDuyet(int trangThaiDuyet) {
	        this.trangThaiDuyet = trangThaiDuyet;
	    }

	    @Override
	    public String toString() {
	        return "DeathRecord{" +
	                "maKhaiTu='" + maKhaiTu + '\'' +
	                ", idHo='" + idHo + '\'' +
	                ", ngayMat=" + ngayMat +
	                ", ngayBaoTu=" + ngayBaoTu +
	                ", noiTu='" + noiTu + '\'' +
	                ", nguyenNhan='" + nguyenNhan + '\'' +
	                ", maCongDan='" + maCongDan + '\'' +
	                ", trangThaiDuyet=" + trangThaiDuyet +
	                '}';
	    }
	}
