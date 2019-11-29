<%-- 
    Document   : Themtheloai
    Created on : Nov 25, 2019, 5:35:59 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="InsertServletTin" method="POST">
            <h1>Them Tin</h1>
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>The loai</td>
                    <td><input type="text" name="the loai"></td>
                </tr>
                <tr>
                    <td>Ten tac gia</td>
                    <td><input type="text" name="tac gia"></td>
                </tr>
                <tr>
                    <td>Tieu de</td>
                    <td><input type="text" name="tieu de"></td>
                </tr>
                <tr>
                    <td>Mo ta</td>
                    <td><input type="text" name="mo ta"></td>
                </tr>
                <tr>
                    <td>Chi tiet</td>
                    <td><input type="text" name="chi tiet"></td>
                </tr>
                <tr>
                    <td>Anh</td>
                    <td><input type="text" name="anh"></td>
                </tr>
                <tr>
                    <td>Ngay dang</td>
                    <td><input type="text" name="ngay dang"></td>
                </tr>
                <tr>
                    <td colspan="2" align="right">
                        <button type="submit" name="insert">Insert</button>
                        <button type="reset" name="reset">Reset</button>
                    </td>
                </tr>
            </table>  
        </form>
    </body>
</html>
