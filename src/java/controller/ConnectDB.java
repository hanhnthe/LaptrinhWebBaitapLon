/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 *
 * @author Administrator
 */
public class ConnectDB {
    private Connection conn = null;
    private Statement stmt = null;
    private ResultSet rs = null;

    protected void hasDriver() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {
            System.out.println("Invalid Driver!! Please check this driver...");
        }

    }

    protected Connection openConnect() {
        try {
            if (conn == null) {
                hasDriver();
                String url = "jdbc:mysql://localhost/laptrinhweb";
                conn = DriverManager.getConnection(url, "root", "261098");
            }
        } catch (Exception e) {
            System.out.println("Error Connecton! Please check url or username and password of mysql!");
        }
        return conn;
    }

    protected Statement getStatement() {
        try {
            if (stmt == null) {
                stmt = (Statement) openConnect().createStatement();
            }
        } catch (Exception e) {
            System.out.println("Please check statement");
        }
        return stmt;
    }

    protected void closeConnect() {
        try {
            if (conn != null) {
                conn.close();
            }
            if (rs != null & !rs.isClosed()) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        } catch (Exception e) {
            System.out.println("Please check close connect, stmt, resutlset");
        }

    }

}
