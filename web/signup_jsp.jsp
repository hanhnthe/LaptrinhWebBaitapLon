<%-- 
    Document   : signup_jsp
    Created on : Nov 15, 2019, 9:39:52 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
    </head>
    <body>
        <form action="SignUp_Servlet" method="POST" align ="center">
            <p>Ho va ten</p>
            <input type="text" name="hoten" value="" /><br>
            <p>Email</p>
            <input type="text" name="email" value="" /><br>
            <p>So dien thoai</p>
            <input type="text" name="sdt" value="" /><br>
            <p>Username</p>
            <input type="text" name="username" value="" /><br>
            <p>Password</p>
            <input type="text" name="password" value="" /><br>
            <input type="submit" value="Signup" name="signup" />
        </form>
    </body>
</html>
