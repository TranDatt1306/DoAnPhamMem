package model;

public class MONHANG {
	private int maSP;
	private String tenSP;
	private double dongia;
	private double soluong;
	private String hinhAnh;
	private String moTa;
	private int maDanhMuc;
	private int KM;
	private double soluongmax;
	public MONHANG() {
		super();
	}
	
	

	public MONHANG(int maSP, String tenSP, double dongia,double soluong, 
			String hinhAnh, String moTa, int maDanhMuc,int KM,double soluongmax) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.dongia = dongia;
		this.soluong = soluong;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.maDanhMuc = maDanhMuc;
		this.KM=KM;
		this.soluongmax= soluongmax;
	}

	public double getSoluongmax() {
		return soluongmax;
	}



	public void setSoluongmax(double soluongmax) {
		this.soluongmax = soluongmax;
	}



	public int getKM() {
		return KM;
	}

	public void setKM(int kM) {
		KM = kM;
	}
	public int getMaSP() {
		return maSP;
	}
	public void setMaSP(int maSP) {
		this.maSP = maSP;
	}	

	public double getSoluong() {
		return soluong;
	}
	public void setSoluong(double soluong) {
		this.soluong = soluong;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public int getMaDanhMuc() {
		return maDanhMuc;
	}
	public void setMaDanhMuc(int maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public double getDongia() {
		return dongia;
	}
	public void setDongia(double dongia) {
		this.dongia = dongia;
	}
	 @Override
	    public String toString() {
	        return tenSP;
	    }
}

