<%-- 
    Document   : login_jsp
    Created on : Nov 15, 2019, 9:40:10 AM
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
        <form action="Login_Servlet" method="POST">
            <p>Username</p>
            <input type="text" name="username" value="" /><br>
            <p>Password</p>
            <input type="text" name="password" value="" /><br>
            <br>
            <input type="submit" value="Submit" name="login" />
        </form>
    </body>
</html>
