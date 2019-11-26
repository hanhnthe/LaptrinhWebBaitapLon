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
        <title>Login Social News Admin</title>
        <link rel="stylesheet" type="text/css" href="logincss.css"/>
    </head>
    <body>
        <header>
		<div class="webname">
             <img src="bieu-tuong.png" class="anh1">
             <h1>Social News</h1>
		</div>
		<div class = "hform">
      <div class = "search">
         <form>
            <button class = "search_submit" type="submit"><img src="search.png" class="anh2"></i></button>
           <!--  <button class = "search_submit" type="submit"><i class="fa fa-search"></i></button> -->
            <input class = "search_icons" type="text" name = "Search" placeholder="Search Social News..">
         </form>
      </div>
    </div>
	</header>

	<nav>
		<div class = "top_nav">
        <ul>
        <li> <a href="#"> Trang chủ</a></li>
        <li> <a href="#"> Xã hội</a></li>
        <li> <a href="#">Thế Giới</a></li>
        <li> <a href="#"> Kinh Tế</a></li>
        <li><a href="#">Giáo Dục</a></li>
        <li> <a href="#"> Thể Thao</a></li>
        <li> <a href="#"> Giải trí</a></li>
        <li> <a href="#"> Khác</a></li>
      </ul>
    </div>
	</nav>
        <table id="tablelogin">
            <tbody>
                <tr>
                    <td>
                        <h2 align = "center|top">Chào mừng bạn đến với trang quản lý của SocialNews</h2>
                        <form action="Login_Servlet" method="POST" align ="center" >
                            <p>Username</p>
                            <input type="text" name="username" value="" /><br>
                            <p>Password</p>
                            <input type="password" name="password" value="" /><br>
                            <br>
                            <input type="submit" value="Login" name="login" width="30px"/>
                        </form>  
                    </td>
                </tr>
            </tbody>
        </table>

       
    </body>
</html>
