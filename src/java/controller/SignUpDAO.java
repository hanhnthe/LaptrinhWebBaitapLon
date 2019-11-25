/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;
import model.SignUp;

/**
 *
 * @author Administrator
 */
public class SignUpDAO {
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    private ConnectDB connectdb;

    public SignUpDAO() {
        connectdb = new ConnectDB();
    }
    public ArrayList<Account> getAllAccount() {
        ArrayList<Account> list = new ArrayList();
        String sql = "SELECT `login`.`name`,`login`.`password` FROM laptrinhweb.login";
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
    
    public boolean insert(SignUp sign) throws SQLException{
       String sql = "INSERT INTO `laptrinhweb`.`login` ( `name`, `password`, `hoten`,`email`,`sdt`) VALUES (?, ?, ?, ?,?);";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1,sign.getAcount().getUsername());
        stmt.setString(2,sign.getAcount().getPassword() );
        stmt.setString(3,sign.getHoten() );
        stmt.setString(4,sign.getEmail());
        stmt.setString(5,sign.getSdt());
        return stmt.executeUpdate() > 0; 
    }
    
    

}