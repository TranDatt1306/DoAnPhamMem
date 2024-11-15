package model;

import java.util.Date;

public class BirthRegistration {
    // Các thuộc tính của class
    private String maDangKyKhaiSinh;
    private String idHo;
    private String hoTen;
    private Date ngaySinh;
    private String gioiTinh;
    private String danToc;
    private String quocTich;
    private String noiSinh;
    private String queQuan;
    private String noiCuTru;
    private String tenCha;
    private String cccdCha;
    private String tenMe;
    private String cccdMe;

    // Hàm dựng (constructor) để khởi tạo các thuộc tính
    public BirthRegistration(String maDangKyKhaiSinh, String idHo, String hoTen, Date ngaySinh, 
                             String gioiTinh, String danToc, String quocTich, String noiSinh, 
                             String queQuan, String noiCuTru, String tenCha, String cccdCha, 
                             String tenMe, String cccdMe) {
        this.maDangKyKhaiSinh = maDangKyKhaiSinh;
        this.idHo = idHo;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.danToc = danToc;
        this.quocTich = quocTich;
        this.noiSinh = noiSinh;
        this.queQuan = queQuan;
        this.noiCuTru = noiCuTru;
        this.tenCha = tenCha;
        this.cccdCha = cccdCha;
        this.tenMe = tenMe;
        this.cccdMe = cccdMe;
    }

    // Các phương thức getter và setter để truy cập và thay đổi thuộc tính
    public String getMaDangKyKhaiSinh() {
        return maDangKyKhaiSinh;
    }

    public void setMaDangKyKhaiSinh(String maDangKyKhaiSinh) {
        this.maDangKyKhaiSinh = maDangKyKhaiSinh;
    }

    public String getIdHo() {
        return idHo;
    }

    public void setIdHo(String idHo) {
        this.idHo = idHo;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDanToc() {
        return danToc;
    }

    public void setDanToc(String danToc) {
        this.danToc = danToc;
    }

    public String getQuocTich() {
        return quocTich;
    }

    public void setQuocTich(String quocTich) {
        this.quocTich = quocTich;
    }

    public String getNoiSinh() {
        return noiSinh;
    }

    public void setNoiSinh(String noiSinh) {
        this.noiSinh = noiSinh;
    }

    public String getQueQuan() {
        return queQuan;
    }

    public void setQueQuan(String queQuan) {
        this.queQuan = queQuan;
    }

    public String getNoiCuTru() {
        return noiCuTru;
    }

    public void setNoiCuTru(String noiCuTru) {
        this.noiCuTru = noiCuTru;
    }

    public String getTenCha() {
        return tenCha;
    }

    public void setTenCha(String tenCha) {
        this.tenCha = tenCha;
    }

    public String getCccdCha() {
        return cccdCha;
    }

    public void setCccdCha(String cccdCha) {
        this.cccdCha = cccdCha;
    }

    public String getTenMe() {
        return tenMe;
    }

    public void setTenMe(String tenMe) {
        this.tenMe = tenMe;
    }

    public String getCccdMe() {
        return cccdMe;
    }

    public void setCccdMe(String cccdMe) {
        this.cccdMe = cccdMe;
    }
}

