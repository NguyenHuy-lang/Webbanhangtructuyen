package com.example.Model;

public class productCart extends product{
    public int so_luong = 0;
    public String label;
    public productCart() {

    }

    public productCart(int ma, String ten, int gia, String anh, String chi_tiet, String xuat_xu, int so_luong, String label) {
        super(ma, ten, gia, anh, chi_tiet, xuat_xu);
        this.so_luong = so_luong;
        this.label = label;
    }

    public int getSo_luong() {
        return so_luong;
    }

    public void setSo_luong(int so_luong) {
        this.so_luong = so_luong;
    }

    public String getLabel() {
        return label;
    }
    public void setLabel(String label) {
        this.label = label;
    }
    @Override
    public String toString() {
        return "product{" +
                "ma=" + this.getMa() +
                ", ten='" + this.getTen() + '\'' +
                ", gia=" + this.getGia() +
                ", anh='" + this.getAnh() + '\'' +
                ", chi_tiet='" + this.chi_tiet() + '\'' +
                ", xuat_xu='" + this.getXuat_xu() + '\'' +
                '}';
    }
}
