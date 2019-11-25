/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author Administrator
 */
public class LoginDAO {
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    private ConnectDB connectdb;
    
    public LoginDAO(){
        connectdb = new ConnectDB();
    }
     public ArrayList<Account> getAllAccount() {
        ArrayList<Account> list = new ArrayList();
        String sql = "SELECT login.name,login.password FROM laptrinhweb.login";
        try {
            rs = connectdb.getStatement().executeQuery(sql);
            while (rs.next()) {
                String name = rs.getString("name");
                String password = rs.getString("password");
                Account ac = new Account( name, password);
                list.add(ac);
            }
        } catch (Exception e) {
            System.out.println("Please check getAllProduct index.jsp in SanPhamDAO");
        }
        connectdb.closeConnect();
        return list;
    }
    
}
