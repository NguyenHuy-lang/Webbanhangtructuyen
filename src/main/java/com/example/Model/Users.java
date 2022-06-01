package com.example.Model;

import java.io.Serializable;

public class Users implements Serializable {
    private int id;
    private String ten_day_du;
    private String ten_tai_khoan;
    private String email;
    private String sdt;
    private String mat_khau;
    private String gioi_tinh;
    private String vai_tro;
    public Users() {
    }

    public Users(int id, String ten_day_du, String ten_tai_khoan, String email, String sdt, String mat_khau, String gioi_tinh, String vai_tro) {
        this.id = id;
        this.ten_day_du = ten_day_du;
        this.ten_tai_khoan = ten_tai_khoan;
        this.email = email;
        this.sdt = sdt;
        this.mat_khau = mat_khau;
        this.gioi_tinh = gioi_tinh;
        this.vai_tro = vai_tro;
    }

    public String getVai_tro() {
        return vai_tro;
    }

    public void setVai_tro(String vai_tro) {
        this.vai_tro = vai_tro;
    }

    public void setGioi_tinh(String gioi_tinh) {
        this.gioi_tinh = gioi_tinh;
    }

    public String getGioi_tinh() {
        return gioi_tinh;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen_day_du() {
        return ten_day_du;
    }

    public void setTen_day_du(String ten_day_du) {
        this.ten_day_du = ten_day_du;
    }

    public String getTen_tai_khoan() {
        return ten_tai_khoan;
    }

    public void setTen_tai_khoan(String ten_tai_khoan) {
        this.ten_tai_khoan = ten_tai_khoan;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getMat_khau() {
        return mat_khau;
    }

    public void setMat_khau(String mat_khau) {
        this.mat_khau = mat_khau;
    }

}
