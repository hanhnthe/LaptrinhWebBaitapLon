/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.LoginDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/*t
 *
 * @author Administrator
 */
@WebServlet(name = "Login_Servlet", urlPatterns = {"/Login_Servlet"})
public class Login_Servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login_Servler</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login_Servler at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass1 = request.getParameter("password");
        String passSha = getSHAHash(pass1);
         boolean check = false;
        LoginDAO loginDAO = new LoginDAO();
        ArrayList<Account> list = loginDAO.getAllAccount();
        if(list!=null){
             for(int i=0; i< list.size(); i++){
            Account acc = list.get(i);
            if(acc.getUsername().equalsIgnoreCase(username)&& acc.getPassword().equalsIgnoreCase(passSha)){
                check = true;
            }
        }
        if(check==true){
            processRequest(request, response);
        }else{
            System.out.println(" loi ");
        }
        }else{
            System.out.println("loi DAO");
        }
       
        
    }
   public static String getSHAHash(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            byte[] messageDigest = md.digest(input.getBytes());
            return convertByteToHex(messageDigest);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public static String convertByteToHex(byte[] data) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < data.length; i++) {
            sb.append(Integer.toString((data[i] & 0xff) + 0x100, 16).substring(1));
        }
        return sb.toString();
    }
}
