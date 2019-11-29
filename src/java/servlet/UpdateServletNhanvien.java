/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.NhanvienDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.NhanVien;

/**
 *
 * @author Administrator
 */
public class UpdateServletNhanvien extends HttpServlet {
  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String hoten = request.getParameter("hoten");
        String email = request.getParameter("email");
        String sdt = request.getParameter("std");

        NhanVien sp = new NhanVien(id, new Account(username, password), hoten, email, sdt);
        NhanvienDAO spdao = new NhanvienDAO();
        try {
            if (spdao.updateNhanVien(sp)) {
                response.sendRedirect("qlyNVdangtin.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
