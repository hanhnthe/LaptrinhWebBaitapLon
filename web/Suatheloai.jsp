<%--
    Document   : Suatheloai
    Created on : Nov 25, 2019, 5:38:53 PM
    Author     : Administrator
--%>

<%@page import="controller.CategoriesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Categories" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sua The Loai</title>
    </head>
    <body>
        <%
            String id = request.getParameter("category_id");
            Categories ca = new CategoriesDAO().getNameCategories(id);
        %>
        <form action="UpdateServletCategories" method="POST">
            <h1>Sua the loai</h1>
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id"
                               value="<%= ca.getCategory_id()%>"></td>
                </tr>
                <tr>
                    <td>Ten the loai</td>
                    <td><input type="text" name="theloai"
                               value="<%= ca.getCategory_name()%>"></td>
                </tr>
                <tr>
                    <td colspan="2" align="right">
                        <button type="submit" name="Update">Update</button>
                        <button type="reset" name="reset">Reset</button>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
