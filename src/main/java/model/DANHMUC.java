package model;

public class DANHMUC {
	public int getMaDM() {
		return maDM;
	}
	public void setMaDM(int maDM) {
		this.maDM = maDM;
	}
	public String getTenDM() {
		return tenDM;
	}
	public void setTenDM(String tenDM) {
		this.tenDM = tenDM;
	}
	private int maDM ;
	private String tenDM;
	public DANHMUC() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DANHMUC(int maDM, String tenDM) {
		super();
		this.maDM=maDM;
		this.tenDM=tenDM;
	}
}
