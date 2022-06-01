package com.example.DAO;

import com.example.Model.*;

import java.sql.*;
import java.util.ArrayList;

public class implDAO extends Dao{

    private static final String URL ="jdbc:mysql://localhost:3306/mydb";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456789";
    private static final String AttributeUsers = "ten_day_du, ten_tai_khoan, email, sdt, mat_khau, gioi_tinh,vai_tro";
    private static final String AttributeBill = "user_id, firstName, lastName, sdt, email, dia_chi, city, ngay_dat_hang, ngay_nhan_hang";
    private static final String AttributeDetailBill = "gia, so_luong,product_ma,bill_id";

//    public Connection getKetNoi() {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
//            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
//        } catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException e) {
//            e.printStackTrace();
//        }
//        return null;
//    }


    public implDAO() {
        super();
    }

    public ArrayList<productCart> getProduct() throws SQLException {
        try{
            String sql = "SELECT * FROM product";
            Connection ketnoi = getKetNoi;
            PreparedStatement ps = ketnoi.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            ArrayList<productCart> List_product = new ArrayList<>();
            while(rs.next()){
                productCart p = new productCart();
                p.setMa(rs.getInt("ma"));
                p.setTen(rs.getString("ten"));
                p.setGia(rs.getInt("gia"));
                p.setAnh(rs.getString("anh"));
                p.setChi_tiet(rs.getString("mo_ta_chi_tiet"));
                p.setXuat_xu(rs.getString("xuat_xu"));
                p.setSo_luong(0);
                p.setLabel(rs.getString("nhan"));
                List_product.add(p);
            }

            return List_product;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public Users getUsers(String EMAIL, String PASSWORD) throws SQLException {
        try{
            String sql = "SELECT * FROM user where email = ? and mat_khau = ?";
            Connection ketnoi = getKetNoi;
            PreparedStatement ps = ketnoi.prepareStatement(sql);
            ps.setString(1, EMAIL);
            ps.setString(2, PASSWORD);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                Users user = new Users(
                        rs.getInt("id"),
                        rs.getString("ten_day_du"),
                        rs.getString("ten_tai_khoan"),
                        rs.getString("email"),
                        rs.getString("sdt"),
                        rs.getString("mat_khau"),
                        rs.getString("gioi_tinh"),
                        rs.getString("vai_tro")
                );
                return user;
            }
            return null;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }

    }
    public productCart getProduct(String id) throws SQLException {
        try{
            String sql = "SELECT * FROM product where ma = ?";
            Connection ketnoi = getKetNoi;
            PreparedStatement ps = ketnoi.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(id));
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                productCart p = new productCart();
                p.setMa(rs.getInt("ma"));
                p.setTen(rs.getString("ten"));
                p.setGia(rs.getInt("gia"));
                p.setAnh(rs.getString("anh"));
                p.setChi_tiet(rs.getString("mo_ta_chi_tiet"));
                p.setXuat_xu(rs.getString("xuat_xu"));
                p.setLabel(rs.getString("nhan"));
                p.setSo_luong(rs.getInt("so_luong"));
                return p;

            }
            return null;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }


    }
    public ArrayList<productCart> getProductByName(String name) throws SQLException {
        try{
            String sql = "SELECT * FROM product where ten like ?;";
            Connection ketnoi = getKetNoi;
            PreparedStatement ps = ketnoi.prepareStatement(sql);
            ps.setString(1, "%" + name + "%");

            ResultSet rs = ps.executeQuery();
            ArrayList<productCart> li = new ArrayList<>();
            while(rs.next()){
                productCart p = new productCart();
                p.setMa(rs.getInt("ma"));
                p.setTen(rs.getString("ten"));
                p.setGia(rs.getInt("gia"));
                p.setAnh(rs.getString("anh"));
                p.setChi_tiet(rs.getString("mo_ta_chi_tiet"));
                p.setXuat_xu(rs.getString("xuat_xu"));
                p.setLabel(rs.getString("nhan"));
                p.setSo_luong(rs.getInt("so_luong"));
                li.add(p);


            }
            return li;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }


    }
    public void insertUser(String ten_day_du, String ten_tai_khoan,
                           String email, String sdt, String mat_khau, String gioi_tinh) throws SQLException {
        String sql = "insert into user("+  AttributeUsers+ ")" + "values(?, ?, ?, ?, ?, ?,?);";
        Connection ketnoi =getKetNoi;
        PreparedStatement ps = ketnoi.prepareStatement(sql);
        ps.setString(1, ten_day_du);
        ps.setString(2, ten_tai_khoan);
        ps.setString(3, email);
        ps.setString(4, sdt);
        ps.setString(5, mat_khau);
        ps.setString(6, gioi_tinh);
        ps.setString(7, "user");
        ps.executeUpdate();

    }

    public ArrayList<productCart> classificationProduct(String label){
        try{
            String sql = "SELECT * FROM product where nhan = ?";
            Connection ketnoi = getKetNoi;
            PreparedStatement ps = ketnoi.prepareStatement(sql);
            ps.setString(1, label);
            ResultSet rs = ps.executeQuery();
            ArrayList<productCart> answer = new ArrayList<productCart>();
            while(rs.next()){
                productCart p = new productCart();
                p.setMa(rs.getInt("ma"));
                p.setTen(rs.getString("ten"));
                p.setGia(rs.getInt("gia"));
                p.setAnh(rs.getString("anh"));
                p.setChi_tiet(rs.getString("mo_ta_chi_tiet"));
                p.setXuat_xu(rs.getString("xuat_xu"));
                p.setLabel(label);
                answer.add(p);

            }
            return answer;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public void insertBill(Bill bill) throws SQLException {
        String sql = "insert into bill("+  AttributeBill+ ")" + "values(?, ?, ?, ?, ?, ?, ?, ?,?);";
        Connection ketnoi = getKetNoi;
        PreparedStatement ps = ketnoi.prepareStatement(sql);
        ps.setInt(1, bill.getUser_id());
        ps.setString(2, bill.getFirstName());
        ps.setString(3, bill.getLastName());
        ps.setString(4, bill.getSdt());
        ps.setString(5, bill.getEmail());
        ps.setString(6, bill.getDia_chi());
        ps.setString(7, bill.getCity());
        ps.setString(8, bill.getNgay_dat());
        ps.setString(9, bill.getNgay_nhan());
        ps.executeUpdate();
    }

    public int getIdBill(String ngay_dat) throws SQLException {
        String sql = "SELECT * from bill where ngay_dat_hang = ?";
        Connection ketnoi = getKetNoi;
        PreparedStatement ps = ketnoi.prepareStatement(sql);
        ps.setString(1, ngay_dat);
        ResultSet rs = ps.executeQuery();
        if(rs.next()) return rs.getInt("id");
        return -1;
    }

    public void insertDetailBill(DetailBill dt) throws SQLException {
        String sql = "insert into detailbill(gia,so_luong,product_ma,bill_id) values(?,?,?,?);";
        Connection ketnoi = getKetNoi;
        Statement s = ketnoi.createStatement();
        s.execute("SET FOREIGN_KEY_CHECKS=0");
        PreparedStatement ps = ketnoi.prepareStatement(sql);
        ps.setInt(1, dt.getGia());
        ps.setInt(2, dt.getSo_luong());
        ps.setInt(3, dt.getProduct_ma());
        ps.setInt(4, dt.getBill_id());
        ps.executeUpdate();
    }

    public void insertProduct(productCart p) throws SQLException {
        String sql = "insert into product(ten,gia,anh,mo_ta_chi_tiet,xuat_xu,nhan,so_luong,trang_thai)" +
                " value(?,?,?,?,?,?,?,?);";
        Connection ketnoi = getKetNoi;
        PreparedStatement ps = ketnoi.prepareStatement(sql);


        ps.setString(1,p.getTen());
        ps.setInt(2,p.getGia());
        ps.setString(3,p.getAnh());
        ps.setString(4,p.chi_tiet());
        ps.setString(5,p.getXuat_xu());
        ps.setString(6,p.getLabel());
        ps.setInt(7,p.getSo_luong());
        ps.setString(8,"1");
        ps.executeUpdate();
    }


    public void EditProduct(productCart p) throws SQLException {
        String sql = "UPDATE product SET ten = ? ,gia = ? ,anh = ?,mo_ta_chi_tiet = ? ,xuat_xu = ? ,nhan = ? " +
                ",so_luong = ? where ma = ?";

        Connection ketnoi = getKetNoi;
        PreparedStatement ps = ketnoi.prepareStatement(sql);

        ps.setString(1,p.getTen());
        ps.setInt(2,p.getGia());
        ps.setString(3,p.getAnh());
        ps.setString(4,p.chi_tiet());
        ps.setString(5,p.getXuat_xu());
        ps.setString(6,p.getLabel());
        ps.setInt(7,p.getSo_luong());
        ps.setString(8,Integer.toString(p.getMa()));

        ps.executeUpdate();

    }

    public ArrayList<Users> getAllUsers() throws SQLException {
        try{
            String sql = "SELECT * FROM user ;";
            Connection ketnoi = getKetNoi;
            PreparedStatement ps = ketnoi.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Users> listUser = new ArrayList<>();
            while(rs.next()){
                Users user = new Users(
                        rs.getInt("id"),
                        rs.getString("ten_day_du"),
                        rs.getString("ten_tai_khoan"),
                        rs.getString("email"),
                        rs.getString("sdt"),
                        rs.getString("mat_khau"),
                        rs.getString("gioi_tinh"),
                        rs.getString("vai_tro")
                );
                listUser.add(user);
            }
            return listUser;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }

    }

    public ArrayList<Bill> getBillWithId(String id) throws SQLException {
        try{
            String sql = "SELECT * FROM bill where user_id = ? ;";
            Connection ketnoi = getKetNoi;
            PreparedStatement ps = ketnoi.prepareStatement(sql);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            ArrayList<Bill> listBill = new ArrayList<>();
            while(rs.next()){
                Bill bill = new Bill(
                        rs.getInt("id"),
                        rs.getString("firstName"),
                        rs.getString("lastName"),
                        rs.getString("sdt"),
                        rs.getString("email"),
                        rs.getString("dia_chi"),
                        rs.getString("ngay_dat_hang"),
                        rs.getInt("user_id")

                );
                bill.setNgay_nhan(rs.getString("ngay_nhan_hang"));
                listBill.add(bill);
            }
            return listBill;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }

    }

    public ArrayList<detailProductOfBill> getProductOfBill(String bill_id) throws SQLException {
        String sql = "select * from detailbill where bill_id = ? ";
        Connection ketnoi = getKetNoi;
        PreparedStatement ps = ketnoi.prepareStatement(sql);
        ps.setString(1,bill_id);
        ResultSet rs = ps.executeQuery();
        ArrayList<detailProductOfBill> listProductCart = new ArrayList<>();
        while(rs.next()){
            DetailBill dt = new DetailBill(
                    rs.getInt("gia"),
                    rs.getInt("so_luong"),
                    rs.getInt("product_ma"),
                    rs.getInt("bill_id")
            );
            detailProductOfBill p = new detailProductOfBill();
            productCart pc = getProduct(Integer.toString(dt.getProduct_ma()));
            p.setTen(pc.getTen());
            p.setGia(dt.getGia());
            p.setSo_luong(dt.getSo_luong());
            p.setProduct_ma(dt.getProduct_ma());
            p.setBill_id(dt.getBill_id());
            listProductCart.add(p);

        }
        return  listProductCart;
    }

    public void ModifedUser(Users p) throws SQLException {
        String sql = "UPDATE user SET ten_day_du = ? ,ten_tai_khoan = ? ,email = ?,sdt = ? ,mat_khau = ? ,gioi_tinh = ?"+
                "where id = ?";

        Connection ketnoi = getKetNoi;
        PreparedStatement ps = ketnoi.prepareStatement(sql);

        ps.setString(1,p.getTen_day_du());
        ps.setString(2,p.getTen_tai_khoan());
        ps.setString(3,p.getEmail());
        ps.setString(4,p.getSdt());
        ps.setString(5,p.getMat_khau());
        ps.setString(6,p.getGioi_tinh());
        ps.setInt(7, p.getId());
        ps.executeUpdate();

    }

    public void deleteAccount(int id) throws SQLException {
        String sqldeletebill = "delete from bill where user_id = ?;";
        String sqldeleteUser = "delete from user where id = ?;";
        String sqlSelectbill = "select * from bill where user_id = ?;";
        String sqldeleteDetailBill = "delete from detailBill where bill_id = ?;";
        boolean result = true;
        System.out.println(id);
        try{
            getKetNoi.setAutoCommit(false);

            PreparedStatement ps = getKetNoi.prepareStatement(sqlSelectbill);
            Statement s = getKetNoi.createStatement();

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int idBill = rs.getInt("id");
                System.out.println(idBill);
                ps = getKetNoi.prepareStatement(sqldeleteDetailBill);
                ps.setInt(1, idBill);
                ps.executeUpdate();
            }
            s.execute("SET FOREIGN_KEY_CHECKS=0");
            ps = getKetNoi.prepareStatement(sqldeletebill);
            ps.setInt(1, id);
            ps.executeUpdate();
            s.execute("SET FOREIGN_KEY_CHECKS=0");
            ps = getKetNoi.prepareStatement(sqldeleteUser);
            ps.setInt(1, id);
            ps.executeUpdate();
            System.out.println("Transaction thành công");
            getKetNoi.commit();

        } catch (SQLException e) {
            result = false;
            getKetNoi.rollback();
            getKetNoi.setAutoCommit(true);
            System.out.println("Hủy bỏ transaction");
            e.printStackTrace();
        }
    }

    public void deleteBill(int bill_id) throws SQLException {
        String sqldeletebill = "delete from bill where id = ?";
        String sqldeletedetailbill = "delete from detailbill where bill_id = ?";
        Statement s = getKetNoi.createStatement();

        try{
            getKetNoi.setAutoCommit(false);
            PreparedStatement ps = getKetNoi.prepareStatement(sqldeletedetailbill);
            ps.setInt(1, bill_id);
            ps.executeUpdate();
            ps = getKetNoi.prepareStatement(sqldeletebill);
            ps.setInt(1, bill_id);
            ps.executeUpdate();
            System.out.println("transaction thanh cong");
            getKetNoi.commit();

        }catch (SQLException e){
            System.out.println("huy bo transaction");
            getKetNoi.rollback();
            getKetNoi.setAutoCommit(true);
        }
    }

    public void deleteDetailBill(int bill_id, int id_product) throws SQLException {
        String sql = "delete from detailBill where bill_id = ? and product_ma = ?";
        PreparedStatement ps = getKetNoi.prepareStatement(sql);
        ps.setInt(1, bill_id);
        ps.setInt(2, id_product);
        ps.executeUpdate();


    }
    public void deleteProduct(int id) throws SQLException {
        String sql = "delete from product where ma = ?";

        Connection ketnoi = getKetNoi;
        PreparedStatement ps = ketnoi.prepareStatement(sql);

        ps.setInt(1, id);

        ps.executeUpdate();

    }


}
