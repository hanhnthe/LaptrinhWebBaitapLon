<%@page import="controller.NewsDAO"%>
<%@page import="model.News"%>
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
    </head>
    <body>
        <% ArrayList<News> lst = new NewsDAO().getAllNews(); %>
        <table width="700px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=7 align="center"
                    style="background-color:teal">
                    <b>User Record</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>ID</b></td>
                <td><b>The loai</b></td>
                <td><b>Tac gia</b></td>
                <td><b>Tieu de</b></td>
                <td><b>Mo ta</b></td>
                <td><b>Ngay dang</b></td>
                <th colspan="3">Menu</th>
            </tr>
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
                <td><%=pList.get(4)%></td>
                <td><%=pList.get(5)%></td>
                
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=7 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%
                for (News ne : lst) {
                    String editURL = "Suatin.jsp?new_id=" + ne.getNew_id();
                    String deleteURL = "DeleteServletTin?new_id=" + ne.getNew_id();
            %>
            <tr>
                <td><%=ne.getNew_id()%><</td>
                <td><%=ne.getName_categories()%></td>
                <td><%=ne.getName_user()%></td>
                <td><%=ne.getNew_name()%></td>
                <td><%=ne.getDescription()%></td>
                <td><%=ne.getDate()%></td>
                <td><a href="Themtin.jsp">Insert</a></td>
                <td><a href="<%=editURL%>">Update</a></td>
                <td><a href="<%=deleteURL%>">Delete</a></td> 
            </tr>
            <% }
            %>
            <% }
            %>
        </table>
    </body>
</html>

}