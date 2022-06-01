package com.example.Model;

import java.util.ArrayList;


public class Bill {
    private int id;
    private int user_id;
    private String firstName;
    private String lastName;
    private String sdt;
    private String email;
    private String dia_chi;
    private String city;
    private String ngay_dat;
    private String ngay_nhan;
    private ArrayList<DetailBill> detailBill;

    public String getNgay_nhan() {
        return ngay_nhan;
    }

    public void setNgay_nhan(String ngay_nhan) {
        this.ngay_nhan = ngay_nhan;
    }

    public Bill(int id, String firstName, String lastName, String sdt, String email, String dia_chi, String ngay_dat, int user_id) {
        this.user_id = user_id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.sdt = sdt;
        this.email = email;
        this.dia_chi = dia_chi;
        this.ngay_dat = ngay_dat;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDia_chi() {
        return dia_chi;
    }

    public void setDia_chi(String dia_chi) {
        this.dia_chi = dia_chi;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }


    public String getNgay_dat() {
        return ngay_dat;
    }

    public void setNgay_dat(String ngay_dat) {
        this.ngay_dat = ngay_dat;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public ArrayList<DetailBill> getDetailBill() {
        return detailBill;
    }

    public void setDetailBill(ArrayList<DetailBill> detailBill) {
        this.detailBill = detailBill;
    }
}
