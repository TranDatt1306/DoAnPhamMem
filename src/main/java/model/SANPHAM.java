package model;

public class SANPHAM {
	private int maSP;
	private String tenSP;
	private double dongia;
	private double dongiacu;
	private double soluong;
	private int rate;
	private int isNew;
	private int sale;
	private String hinhAnh;
	private String moTa;
	private int maDanhMuc;
	public SANPHAM() {
		super();
	}
	
	public SANPHAM(int maSP, String tenSP, double dongia, double dongiacu, double soluong, int rate, int isNew,
			int sale, String hinhAnh, String moTa, int maDanhMuc) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.dongia = dongia;
		this.dongiacu = dongiacu;
		this.soluong = soluong;
		this.rate = rate;
		this.isNew = isNew;
		this.sale = sale;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.maDanhMuc = maDanhMuc;
	}

	public int getMaSP() {
		return maSP;
	}
	public void setMaSP(int maSP) {
		this.maSP = maSP;
	}	
	public double getDongiacu() {
		return dongiacu;
	}
	public void setDongiacu(double dongiacu) {
		this.dongiacu = dongiacu;
	}
	public double getSoluong() {
		return soluong;
	}
	public void setSoluong(double soluong) {
		this.soluong = soluong;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getIsNew() {
		return isNew;
	}
	public void setIsNew(int isNew) {
		this.isNew = isNew;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
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

