package com.example.Model;

public class detailProductOfBill extends productCart{
    public int product_ma;
    public int bill_id;

    public detailProductOfBill(){

    }

    public int getProduct_ma() {
        return product_ma;
    }

    public void setProduct_ma(int product_ma) {
        this.product_ma = product_ma;
    }

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }
}
