/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library;

import java.sql.*;
public class Connect {
    private static final String DATABASE_DRIVER = "com.mysql.jdbc.Driver";
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/library?zeroDateTimeBehavior=convertToNull";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
    Connection conn=null;
    public Connection connectdb(){
        try{
            Class.forName(DATABASE_DRIVER);
            conn=DriverManager.getConnection(DATABASE_URL,USERNAME,PASSWORD);
        }catch(Exception e){
            System.out.println("baglanamadi...");
            e.printStackTrace();
        }
        return conn;
    }
    public Connection disconnectdb(Connection c){
        if(c!=null){
            try{
                c.close();
                c=null;
                System.out.println("connection has closed.= "+c);
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        return c;
    }
}

