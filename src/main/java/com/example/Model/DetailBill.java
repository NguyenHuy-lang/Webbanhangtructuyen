package com.example.Model;

public class DetailBill {
    private int gia;
    private int so_luong;
    private int Product_ma;
    private int Bill_id;

    public DetailBill() {
    }

    public DetailBill(int gia, int so_luong, int product_ma, int bill_id) {
        this.gia = gia;
        this.so_luong = so_luong;
        Product_ma = product_ma;
        Bill_id = bill_id;
    }


    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public int getSo_luong() {
        return so_luong;
    }

    public void setSo_luong(int so_luong) {
        this.so_luong = so_luong;
    }

    public int getProduct_ma() {
        return Product_ma;
    }

    public void setProduct_ma(int product_ma) {
        Product_ma = product_ma;
    }

    public int getBill_id() {
        return Bill_id;
    }

    public void setBill_id(int bill_id) {
        Bill_id = bill_id;
    }

    @Override
    public String toString() {
        return "DetailBill{" +
                ", gia=" + gia +
                ", so_luong=" + so_luong +
                ", Product_ma=" + Product_ma +
                ", Bill_id=" + Bill_id +
                '}';
    }
}
