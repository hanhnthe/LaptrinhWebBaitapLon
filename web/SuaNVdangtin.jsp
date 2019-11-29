<%-- 
    Document   : SuaNVdangtin
    Created on : Nov 27, 2019, 11:01:35 AM
    Author     : ThanhThu
--%>

<%@page import="controller.NhanvienDAO"%>
<%@page import="model.NhanVien"%>
<%@page import="controller.ConnectDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Nhan Vien</title> 
    </head> 
    <body> 
        <% 
            NhanVien nv = new NhanvienDAO().getNameNhanVien(request.getParameter("id")); 
        %> 
        <form action="UpdateServletNhanvien">  
            <h1>Sửa nhân viên</h1>  
            <table>  
                <tr>  
                    <td>Mã nhân viên</td>  
                    <td><input type="text" name="id" value="<%=nv.getId()%>" readonly="readonly"></td>  
                </tr>  
                <tr>  
                    <td>Tên nhân viên</td>  
                    <td><input type="text" name="hoten" value="<%=nv.getHoten()%>"></td>  
                </tr>
                
                <tr>  
                    <td>Username</td>  
                    <td><input type="text" name="username" value="<%=nv.getAcount().getUsername()%>" /></td>  
                </tr> 
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password" value="<%=nv.getAcount().getPassword()%>"></td>
                </tr>
                <tr>  
                    <td>Email</td>  
                    <td><input type="text" name="email" value="<%=nv.getEmail()%>" /></td>  
                </tr> 
                <tr>  
                    <td>Số điện thoại</td>  
                    <td><input type="text" name="sdt" value="<%=nv.getSdt()%>" /></td>  
                </tr> 
                <tr> 
                    <td colspan="2" align="right">  
                        <button type="submit" name="update">Update</button>  
                        <button type="reset" name="reset">Reset</button>  
                    </td>  
                </tr>  
            </table> 
        </form> 
    </body> 
</html> 
 
