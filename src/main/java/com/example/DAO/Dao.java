package com.example.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
    public static Connection getKetNoi;

    public Dao(){
        if(getKetNoi == null){
            String dbUrl = "jdbc:mysql://localhost:3306/mydb?autoReconnect=true&useSSL=false";
            String dbClass = "com.mysql.jdbc.Driver";

            try {
                Class.forName(dbClass);
                getKetNoi = DriverManager.getConnection (dbUrl, "root", "123456789");
            }catch(Exception e) {
                e.printStackTrace();
            }
        }
    }
}