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
import model.Categories;

/**
 *
 * @author Administrator
 */
public class CategoriesDAO {

    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    private ConnectDB connectdb;

    public CategoriesDAO() {
        connectdb = new ConnectDB();
    }

    public ArrayList<Categories> getAllCategoris() {
        ArrayList<Categories> list = new ArrayList();
        String sql = "SELECT * FROM laptrinhweb.categories";
        try {
            rs = connectdb.getStatement().executeQuery(sql);
            while (rs.next()) {
                String id = rs.getString("id_categories");
                String name = rs.getString("name_categories");
                Categories ac = new Categories(id, name);
                list.add(ac);
            }
        } catch (Exception e) {
            System.out.println("Please check getAllProduct index.jsp in SanPhamDAO");
        }
        connectdb.closeConnect();
        return list;
    }

    public boolean insertCategories(Categories sp) throws SQLException {
        String sql = "INSERT INTO `laptrinhweb`.`categories` (`id_categories`, `name_categories`) VALUES (?, ?);";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, sp.getCategory_id());
        stmt.setString(2, sp.getCategory_name());
        return stmt.executeUpdate() > 0;
    }

    public boolean updateCategories(Categories sp) throws SQLException {
        String sql = "UPDATE `laptrinhweb`.`categories` SET `id_categories`=?, `name_categories`=?;";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, sp.getCategory_id());
        stmt.setString(2, sp.getCategory_name());
        return stmt.executeUpdate() > 0;
    }

    public boolean delete(String id) throws SQLException {
        String sql = "DELETE FROM `laptrinhweb`.`categories` WHERE `id_categories`=?";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, id);
        return stmt.executeUpdate() > 0;
    }
}
