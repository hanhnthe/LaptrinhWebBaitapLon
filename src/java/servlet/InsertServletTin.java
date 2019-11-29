/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.NewsDAO;
import controller.NhanvienDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.News;

/**
 *
 * @author Administrator
 */
public class InsertServletTin extends HttpServlet {

  
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String id_the_loai = request.getParameter("the loai");
        String id_tacgia = request.getParameter("tac gia");
        String tieude = request.getParameter("tieu de");
        String mota = request.getParameter("mo ta");
        String chitiet = request.getParameter("chi tiet");
        String anh  = request.getParameter("anh");
        String ngay_dang = request.getParameter("ngay dang");

        News nv = new News(id, id_the_loai, id_tacgia, tieude, mota, chitiet, anh, ngay_dang);
        NewsDAO nvdao = new NewsDAO();
        try {
            if (nvdao.insertNews(nv)) {
                response.sendRedirect("QuanLyTin.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
