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
import model.News;

/**
 *
 * @author Administrator
 */
public class NewsDAO {

    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    private ConnectDB connectdb;

    public NewsDAO() {
        connectdb = new ConnectDB();
    }

    public ArrayList<News> getAllNews() {
        ArrayList<News> list = new ArrayList();
        String sql = "SELECT * FROM laptrinhweb.news";
        try {
            rs = connectdb.getStatement().executeQuery(sql);
            while (rs.next()) {
                String id = rs.getString("new_id");
                String id_categories = rs.getString("id_categories");
                String id_user = rs.getString("id_user");
                String new_name = rs.getString("news_name");
                String desp = rs.getString("description");
                String detail = rs.getString("detail");
                String image = rs.getString("image");
                String date = rs.getString("date");
                News sp = new News(id, id_categories, id_user, new_name, desp, detail, image, date);
                list.add(sp);
            }
        } catch (Exception e) {
            System.out.println("Please check getAllProduct index.jsp in SanPhamDAO");
        }
        connectdb.closeConnect();
        return list;
    }

    public boolean insertNews(News sp) throws SQLException {
        String sql = "INSERT INTO `laptrinhweb`.`news` (`new_id`,`id_categories`,`id_user`"
                + ",`news_name`,`description`,`detail`,`image`,`date`) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, sp.getNew_id());
        stmt.setString(2, sp.getCategory_id());
        stmt.setString(3, sp.getUser_id());
        stmt.setString(4, sp.getNew_name());
        stmt.setString(5, sp.getDescription());
        stmt.setString(6, sp.getDetail());
        stmt.setString(7, sp.getImage());
        stmt.setString(8, sp.getDate());
        return stmt.executeUpdate() > 0;
    }

    public boolean updateNews(News sp) throws SQLException {
        String sql = "UPDATE `laptrinhweb`.`news` SET `id_categories`=?,`id_user`=?,`news_name`=?,"
                + "`description`=?,`detail`=?,`image`=?,`date`=? WHERE `new_id`=?;";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, sp.getCategory_id());
        stmt.setString(2, sp.getUser_id());
        stmt.setString(3, sp.getNew_name());
        stmt.setString(4, sp.getDescription());
        stmt.setString(5, sp.getDetail());
        stmt.setString(6, sp.getImage());
        stmt.setString(7, sp.getDate());
        stmt.setString(8, sp.getNew_id());
        return stmt.executeUpdate() > 0;
    }

    public boolean delete(String id) throws SQLException {
        String sql = "DELETE FROM `laptrinhweb`.`news` WHERE `new_id`=?";
        stmt = connectdb.openConnect().prepareStatement(sql);
        stmt.setString(1, id);
        return stmt.executeUpdate() > 0;
    }

}
