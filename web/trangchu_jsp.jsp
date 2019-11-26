<%-- 
    Document   : trangchu_jsp
    Created on : Nov 25, 2019, 4:24:01 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"></meta>  
	<title>Social News-Tin tức xã hội</title>
	<link rel="stylesheet" type="text/css" href="trangchuCss.css">
	<script type="https://kit.fontawesome.com/a076d05399.js"></script>
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
      <div class = "login">
        <a href="login_jsp.jsp"><strong>LogIn</strong></a>
        <img src="login.png" class="anhlogin">
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

	<section>
		<div class="left"></div>
		<div class="big_center">
			<div class = "left_center">
				<img src="bigcenter.png" class="big_image">
				<a href="#">3 người chết trong ô tô mercedes lao xuống rạch ở tiền giang: không có dấu hiệu va chạm</a>
			</div>
			<div class = "right_center">
				<div class = "news_small">
         <div class = "image_des"><img src="phutrong.png" ></div> 
          <div class = "des"><a href="#">Tổng Bí thư, Chủ tịch nước Nguyễn Phú Trọng</a> </div>  
        </div>
        <div class = "news_small">
          <div class = "image_des"><img src="tin2.png" ></div>
          <div class = "des"><a href="#">Tiếp tục có người trúng Jackpot1 trị giá gần 81 tỷ đồng từ Vietlott</a> </div>  
        </div>
        <div class = "news_small">
          <div class = "image_des"><img src="tin3.png" ></div>
          <div class = "des"><a href="#">Nhân viên cảnh sát Paris dùng dao dâm chết 4 đồng nghiệp</a> </div>  
        </div>
        <div class = "news_small">
          <div class = "image_des"><img src="tin4.png" ></div>
          <div class = "des"><a href="#">Venezuela dự định tăng gấp đôi khai thác dầu mỏ vòa năm 2020</a> </div>  
        </div>
        <div class = "news_small">
         <div class = "image_des"> <img src="tin5.png" > </div>
          <div class = "des"><a href="#">Thổ Nhĩ Kỳ bi quan vê thiết lập 'vùng an toàn' với Mỹ ở Syria</a> </div>  
        </div>
        <div class = "news_small">
          <div class = "image_des"> <img src="tin6.png" > </div>
          <div class = "des"><a href="#">60 phút học trên điện thoại, xóa e ngại tiếng anh mỗi ngày</a> </div>  
        </div>
			</div>
      <hr size="5px" color = "gray">
      <div class = "bottom_center">
        <div class = "news_big">
         <div class = "image_des_big"><img src="hochiminh.png" ></div> 
          <div class = "des_big">
            <a href="#">Học tập và làm theo tấm gương đạo đức Hồ Chí Minh</a>
            <p>(Chi tiết bài viết)</p>
         </div>  
         </div> 
         <div class = "news_big">
         <div class = "image_des_big"><img src="hochiminh.png" ></div> 
          <div class = "des_big">
            <a href="#">Học tập và làm theo tấm gương đạo đức Hồ Chí Minh</a>
            <p>(Chi tiết bài viết)</p>
         </div>  
         </div> 
         <div class = "news_big">
         <div class = "image_des_big"><img src="hochiminh.png" ></div> 
          <div class = "des_big">
            <a href="#">Học tập và làm theo tấm gương đạo đức Hồ Chí Minh</a>
            <p>(Chi tiết bài viết)</p>
         </div>  
         </div> 
         <div class = "news_big">
         <div class = "image_des_big"><img src="hochiminh.png" ></div> 
          <div class = "des_big">
            <a href="#">Học tập và làm theo tấm gương đạo đức Hồ Chí Minh</a>
            <p>(Chi tiết bài viết)</p>
         </div>  
         </div>
       <div class="title"> <h2>Video</h2></div>
      <div class = "video">Video</div>
      </div> 
      </div>
		<div class="right"></div>
		
		
	</section>

	<footer>
		 <div class="shear">
            <a href="https://www.google.com/search?q=fb&oq=fb&aqs=chrome.0.69i59l2j69i60l2.2021j0j7&sourceid=chrome&ie=UTF-8">Facebook</a>
            <a href="#">Instagram</a>
            <a href="#">READ</a>
          </div>
         
          <div class="intro"> 
          	<h2>Contact us</h2>
           <p>Facebook: https://www.facebook.com/social_news.com</p>
           <P>Email: SocialNews@gmail.com</P>
           <p>HotLine: 1909303902039</p>
           <P>Adress: Học viện công nghệ Bưu Chính Viễn Thông - Trần Phú -Hà Đông - Hà Nội</P>
         </div>
          <h3>Thank you for watching!</h3>
		
	</footer>

</body>
</html>
