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
import model.NhanVien;

/**
 *
 * @author Administrator
 */
public class NhanvienDAO {

    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    private ConnectDB connectdb;

    public NhanvienDAO() {
        connectdb = new ConnectDB();
    }

    public NhanvienDAO(ConnectDB connectdb) {
        this.connectdb = connectdb;
    }
    

    public ArrayList<NhanVien> getAllNhanvien() {
        ArrayList<NhanVien> list = new ArrayList();
        String sql = "SELECT * FROM laptrinhweb.login";
        try {
            rs = connectdb.getStatement().executeQuery(sql);
            while (rs.next()) {
                String id = rs.getString("id");
                String username = rs.getString("name");
                String password = rs.getString("password");
                String hoten = rs.getString("hoten");
                String email = rs.getString("email");
                String sdt = rs.getString("sdt");
                NhanVien sp = new NhanVien(id,new Account(username, password), hoten, email, sdt);
                sp.setId(id);
                list.add(sp);
            }
        } catch (Exception e) {
            System.out.println("Please check getAllProduct index.jsp in SanPhamDAO");
        }
        connectdb.closeConnect();
        return list;
    }

    public boolean insertNhanVien(NhanVien sign) throws SQLException {
        String sql = "INSERT INTO `laptrinhweb`.`login` ( `id`,`name`, `password`, `hoten`,`email`,`sdt`) VALUES (?,?, ?, ?, ?,?);";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, sign.getId());
        stmt.setString(2, sign.getAcount().getUsername());
        stmt.setString(3, sign.getAcount().getPassword());
        stmt.setString(4, sign.getHoten());
        stmt.setString(5, sign.getEmail());
        stmt.setString(6, sign.getSdt());
        return stmt.executeUpdate() > 0;
    }

    public boolean updateNhanVien(NhanVien sp) throws SQLException {
        String sql = "UPDATE `laptrinhweb`.`login` SET `name`=?, `password`=?, `hoten`=?,`email`=?,`sdt`=? WHERE `id`=?;";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, sp.getAcount().getUsername());
        stmt.setString(2, sp.getAcount().getPassword());
        stmt.setString(3, sp.getHoten());
        stmt.setString(4, sp.getEmail());
        stmt.setString(5, sp.getSdt());
        stmt.setString(6, sp.getId());
        return stmt.executeUpdate() > 0;
    }

    public boolean delete(String id) throws SQLException {
        String sql = "DELETE FROM `laptrinhweb`.`login` WHERE `id`=?";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, id);
        return stmt.executeUpdate() > 0;
    }

    public NhanVien getNameNhanVien(String id) throws SQLException {
        String sql = "SELECT * FROM laptrinhweb.login WHERE id=?";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, id);
        rs = stmt.executeQuery();
        NhanVien sp = null;
        while (rs.next()) {
            String id1 = rs.getString("id");
            String username = rs.getString("name");
            String password = rs.getString("password");
            String hoten = rs.getString("hoten");
            String email = rs.getString("email");
            String sdt = rs.getString("sdt");
            sp = new NhanVien(id1,new Account(username, password), hoten, email, sdt);
        }
        return sp;
    }

}
