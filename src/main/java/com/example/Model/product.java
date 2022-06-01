package com.example.Model;

import java.io.Serializable;

public class product implements Serializable {
    private int ma;
    private String ten;
    private int gia;
    private String anh;
    private String chi_tiet;
    private String xuat_xu;

    public product() {
    }

    public product(int ma, String ten, int gia, String anh, String chi_tiet, String xuat_xu) {
        this.ma = ma;
        this.ten = ten;
        this.gia = gia;
        this.anh = anh;
        this.chi_tiet = chi_tiet;
        this.xuat_xu = xuat_xu;
    }

    public int getMa() {
        return ma;
    }

    public void setMa(int ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Integer getGia() {
        return gia;
    }

    public void setGia(Integer gia) {
        this.gia = gia;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public String chi_tiet() {
        return chi_tiet;
    }

    public void setChi_tiet(String chi_tiet) {
        this.chi_tiet = chi_tiet;
    }

    public String getXuat_xu() {
        return xuat_xu;
    }

    public void setXuat_xu(String xuat_xu) {
        this.xuat_xu = xuat_xu;
    }

    @Override
    public String toString() {
        return "product{" +
                "ma=" + ma +
                ", ten='" + ten + '\'' +
                ", gia=" + gia +
                ", anh='" + anh + '\'' +
                ", chi_tiet='" + chi_tiet + '\'' +
                ", xuat_xu='" + xuat_xu + '\'' +
                '}';
    }
}
