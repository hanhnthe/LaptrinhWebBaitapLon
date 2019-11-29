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
        <form action="InsertServletCategories" method="POST">
            <h1>Them The Loai</h1>
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>The loai</td>
                    <td><input type="text" name="theloai"></td>
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
