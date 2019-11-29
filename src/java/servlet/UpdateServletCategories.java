/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.CategoriesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Categories;

/**
 *
 * @author Administrator
 */
public class UpdateServletCategories extends HttpServlet {

 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String theloai = request.getParameter("theloai");
        
      Categories ca = new Categories(id, theloai);
        CategoriesDAO cadao = new CategoriesDAO();
        try {
            if (cadao.updateCategories(ca)) {
                response.sendRedirect("QuanLyTheLoai.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
