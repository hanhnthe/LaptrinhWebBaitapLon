<%-- 
    Document   : Theloai
    Created on : Nov 26, 2019, 8:35:03 PM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="controller.CategoriesDAO"%>
<%@page import="model.Categories"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Loai</title>
    </head>
    <body>
        <% ArrayList<Categories> lst = new CategoriesDAO().getAllCategoris(); %>

        <h1 align="center">List Categories</h1>
        <table border="1" width="80%" align="center">
            <tr>
                <th>ID</th>
                <th>The loai</th>
                <th colspan="3">Menu</th>
            </tr>
            <%
                for (Categories ca : lst) {
                    String editURL = "Suatheloai.jsp?category_id=" + ca.getCategory_id();
                    String deleteURL = "DeleteServletCategories?category_id=" + ca.getCategory_id();
            %>
            <tr>
                <td><%=ca.getCategory_id()%></td>
                <td><%=ca.getCategory_name()%></td>
                <td><a href="Themtheloai.jsp">Insert</a></td>
                <td><a href="<%=editURL%>">Update</a></td>
                <td><a href="<%=deleteURL%>">Delete</a></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
