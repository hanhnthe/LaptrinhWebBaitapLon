<%-- 
    Document   : insertNVdangtin
    Created on : Nov 27, 2019, 10:44:04 AM
    Author     : ThanhThu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Nhan vien</title> 
    </head> 
    <body> 
        <form action="InsertServletNhanvien">  
            <h1>Thêm mới nhân viên</h1>  
            <table>  
                <tr>  
                    <td>Mã nhân viên</td>  
                    <td><input type="text" name="id"></td>  
                </tr>  
                <tr>  
                    <td>Tên nhân viên</td>  
                    <td><input type="text" name="hoten"></td>  
                </tr>  
                <tr>  <td>Username</td>  
                    <td><input type="text" name="username"></td>                    
                </tr> 
                <tr>  <td>Password</td>  
                    <td><input type="text" name="password"></td>                    
                </tr> 
                <tr>  
                    <td>Email</td>  
                    <td><input type="text" name="email"></td>  
                </tr>  
                <tr>  <td>Số điện thoại</td>  
                    <td><input type="text" name="sdt"></td>                    
                </tr> 
                <tr>    
                    <td colspan="2" align="right">  
                        <button type="submit" name="insert">Thêm</button>  
                        <button type="reset" name="reset">Reset</button>  
                    </td>  
                </tr>  
            </table> 
        </form> 
    </body> 
</html> 