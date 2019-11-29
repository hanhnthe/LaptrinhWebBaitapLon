<%-- 
    Document   : qlyNVdangtin
    Created on : Nov 27, 2019, 9:32:09 AM
    Author     : ThanhThu
--%>

<%@page import="controller.NhanvienDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.ConnectDB"%>
<%@page import="model.NhanVien" %>
<%@page import="model.Account" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin nhân viên đăng tin</title>
    </head>
    <body>
        <% ArrayList<NhanVien> lst = new NhanvienDAO().getAllNhanvien(); %>
        <h1 align="center">Danh sách nhân viên</h1>  
        <table border="1" width="80%" align="center">  <tr>  
                <th>Mã NV đăng tin</th>            
                <th>Tên NV đăng tin</th>  
                <th>Username</th>  
                <th>Password</th>
                <th>Email</th>
                <th>SĐT</th>
                <th colspan="2"><a href="themNVdangtin.jsp">Thêm mới nhân viên</a></th>  
            </tr>  
            <%
                for (NhanVien nv : lst) {
                    String editURL = "SuaNVdangtin.jsp?id=" + nv.getId();
                    String deleteURL = "DeleteServletNhanvien?id=" + nv.getId();%>  
            <tr>  
                <td><%=nv.getId()%></td>  
                <td><%=nv.getHoten()%></td>  
                <td><%=nv.getAcount().getUsername()%></td>  
                <td><%=nv.getAcount().getPassword()%></td>
                <td><%=nv.getEmail()%></td>
                <td><%=nv.getSdt()%> </td>
                <td><a href="<%=editURL%>">Sửa nhân viên</a></td>  
                <td><a href="<%=deleteURL%>">Xóa nhân viên</a></td>  
            </tr>  <%  }%>  
        </table> 
    </body>
</html> 
