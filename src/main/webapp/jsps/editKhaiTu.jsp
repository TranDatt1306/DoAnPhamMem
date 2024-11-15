<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Import thư viện JSTL -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phường Thanh Khê Tây</title>
    <link rel="stylesheet" href="./css/grid.css">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/.css">
    <link rel="stylesheet" href="./css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
</head>
<style>
.hs{
display:block;}
</style>
<body>
    <script src="./js/index2.js"></script>
    <div class="app">
        <!-- header-->
        <div class="grid wide">
            <div class="header">
                <div class="header_name"></div>
                <div class="header_content">
                    <div class="header_content_left">
                        <div class="logo"></div>
                        <div class="name_logo">
                            <h1 class="name_logo_phuong">PHƯỜNG THANH KHÊ TÂY</h1>
                            <h4 class="name_logo_mota">QUẬN THANH KHÊ - THÀNH PHỐ ĐÀ NẴNG</h4>
                        </div>
                    </div>
                    <div class="header_content_rignt">
                        <div class="header_search">
                            <h3 class="name_page">TRANG QUẢN LÝ NHÂN KHẨU ĐIỆN TỬ</h3>
                            <div class="search">
                                <i class="fa-solid fa-magnifying-glass"></i>
                                <input id="searching" type="search" placeholder="    Search...">
                                <h4>ĐIỆN THOẠI: 0236.3760.174</h4>
                            </div>

                        </div>
                        <!--
                        <div class="header_login">
                            <a href="#" id="account2">ĐĂNG XUẤT</a>
                            <a href="#" id="account"></a>
                        </div>
                        -->
                    </div>
                </div>


                <div class="nav">
                    <div class="nav_item"><a id="first_navi" href="afterlogin.html">Trang Chủ</a></div>
                    <div class="nav_item"><a href="">Giới Thiệu</a></div>
                    <div class="nav_item"><a href="">Văn Bản</a></div>
                    <div class="nav_item"><a href="">Thông tư</a></div>
                    <div class="nav_item"><a id="last_navi" href="">Hỏi Đáp</a></div>
                </div>
            </div>
        </div>
        <!--end header-->
        <!--begin container-->
        <div class="grid wide">
            <div class="container">
                <div class="row">
                    <div class="col l-10 l-o-1 m-12">
                        <div class="user_afterlogin_content">
                            <div class="user_afterlogin">
                                <div class="hello_user"><i class="fa-solid fa-user" id="hello_user_icon"></i><i
                                        class="fa-solid fa-caret-down" id="hello_user_icondrop"></i>
                                    <h3>Xin chào <span id="hello_user_name">Nguyễn Mạnh Dũng</span></h3>
                                </div>
                                <ul class="user_afterlogin_listinfo">
                                    <li><a href="#">thông tin cá nhân</a></li>
                                    <li><a href="#">đăng ký biểu mẫu</a></li>
                                    <li><a href="#">thông báo</a></li>
                                    <li><a href="Logout">đăng xuất</a></li>
                                </ul>
                            </div>
                            <div class="user_announce">
                                <i class="fa-solid fa-bell" id="user_announce_icon"></i>
                                <p id="number_announce">2</p>
                            </div>
                        </div>
                        <div class="app_announce close">
                            <div class="app_announce_content">
                                <div class="app_anounce_title">
                                    <div class="app_announce_logo"></div>
                                    <h2 class="title_app_anounce">thông báo</h2>
                                </div>
                                <i class="fa-regular fa-circle-xmark" id="app_announce_close"></i>
                                <ul class="app_list_announce">
                                    <li>
                                        <a href="#" class="app_list_announce_item">
                                            <div class="anounce_item_head">
                                                <div class="app_announce_logo_2"></div>
                                                <div class="anounce_item_title">
                                                    <h2>Đăng ký tạm trú thành công</h2>
                                                    <p>12/12/2022 <span>10:39</span></p>
                                                </div>
                                            </div>
                                            <div class="anounce_item_content">
                                                <p>Biểu mẫu của bạn đã được ban quản trị phê duyệt ,
                                                    để biết thêm chi tiết xin vui lòng liên ...</p>
                                                <i class="fa-solid fa-circle announce_chua_doc"></i>

                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="app_list_announce_item">
                                            <div class="anounce_item_head">
                                                <div class="app_announce_logo_2"></div>
                                                <div class="anounce_item_title">
                                                    <h2>Đăng ký tạm trú thành công</h2>
                                                    <p>12/12/2022 <span>10:39</span></p>
                                                </div>
                                            </div>
                                            <div class="anounce_item_content">
                                                <p>Biểu mẫu của bạn đã được ban quản trị phê duyệt ,
                                                    để biết thêm chi tiết xin vui lòng liên ...</p>
                                                <i class="fa-solid fa-circle announce_chua_doc"></i>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="app_list_announce_item">
                                            <div class="anounce_item_head">
                                                <div class="app_announce_logo_2"></div>
                                                <div class="anounce_item_title">
                                                    <h2>Đăng ký tạm trú thành công</h2>
                                                    <p>12/12/2022 <span>10:39</span></p>
                                                </div>
                                            </div>
                                            <div class="anounce_item_content">
                                                <p>Biểu mẫu của bạn đã được ban quản trị phê duyệt ,
                                                    để biết thêm chi tiết xin vui lòng liên ...</p>
                                                <i class="fa-solid fa-circle announce_chua_doc"></i>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="app_list_announce_item">
                                            <div class="anounce_item_head">
                                                <div class="app_announce_logo_2"></div>
                                                <div class="anounce_item_title">
                                                    <h2>Đăng ký tạm trú thành công</h2>
                                                    <p>12/12/2022 <span>10:39</span></p>
                                                </div>
                                            </div>
                                            <div class="anounce_item_content">
                                                <p>Biểu mẫu của bạn đã được ban quản trị phê duyệt ,
                                                    để biết thêm chi tiết xin vui lòng liên ...</p>
                                                <i class="fa-solid fa-circle announce_chua_doc"></i>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="app_list_announce_item">
                                            <div class="anounce_item_head">
                                                <div class="app_announce_logo_2"></div>
                                                <div class="anounce_item_title">
                                                    <h2>Đăng ký tạm trú thành công</h2>
                                                    <p>12/12/2022 <span>10:39</span></p>
                                                </div>
                                            </div>
                                            <div class="anounce_item_content">
                                                <p>Biểu mẫu của bạn đã được ban quản trị phê duyệt ,
                                                    để biết thêm chi tiết xin vui lòng liên ...</p>
                                                <i class="fa-solid fa-circle announce_chua_doc"></i>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="app_list_announce_item">
                                            <div class="anounce_item_head">
                                                <div class="app_announce_logo_2"></div>
                                                <div class="anounce_item_title">
                                                    <h2>Đăng ký tạm trú thành công</h2>
                                                    <p>12/12/2022 <span>10:39</span></p>
                                                </div>
                                            </div>
                                            <div class="anounce_item_content">
                                                <p>Biểu mẫu của bạn đã được ban quản trị phê duyệt ,
                                                    để biết thêm chi tiết xin vui lòng liên ...</p>
                                                <i class="fa-solid fa-circle announce_chua_doc"></i>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="app_list_announce_item">
                                            <div class="anounce_item_head">
                                                <div class="app_announce_logo_2"></div>
                                                <div class="anounce_item_title">
                                                    <h2>Đăng ký tạm trú thành công</h2>
                                                    <p>12/12/2022 <span>10:39</span></p>
                                                </div>
                                            </div>
                                            <div class="anounce_item_content">
                                                <p>Biểu mẫu của bạn đã được ban quản trị phê duyệt ,
                                                    để biết thêm chi tiết xin vui lòng liên ...</p>
                                                <i class="fa-solid fa-circle announce_chua_doc"></i>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                        </div>

                    </div>
                    <div class="col l-3 l-o-1 m-4">
                        <div class="category_form">
                            <h2>đăng ký biểu mẫu</h2>
                            <ul class="list_category_form">
                                <li id="tamtru"><a href="/html/tamtru.html">đăng ký tạm trú</a></li>
                                <li id="tamvang"><a href="/html/tamvang_form.html">đăng ký tạm vắng</a></li>
                                <li id="khaisinh"><a href="registerBirth">đăng ký khai sinh</a></li>
                                <li id="khaitu"><a href="registerDeath">đăng ký khai tử</a></li>
                                <li id="khaitu"><a href="BMDK">biểu mẫu đã đăng ký</a></li>
                                

                            </ul>
                        </div>
                    </div>
                    <div class="col l-7 m-8">
 				 		<div class="form_khaisinh " id="dkkhaisinh">
                            <h2>Cập nhật khai Tử</h2>

						<!-- Div để hiển thị kết quả -->
						<div id="output"></div>
                           <!-- Biểu mẫu khai sinh -->
							<form action="UpdateKhaiTu" id="form_mau_khaitu">
                                <!-- update khai tu -->
                                  <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Họ tên người khai:</label>
                                         <input type="text" name="name" value="Nguyễn Mạnh Dũng">
                                    </div>
                                </div> 
                                <div class="list_form_info">
                                    
                                    <div class="form_info_cmndme">
                                        <label for="cmndme">CMND/CCCD:</label>
                                        <input type="text" name="cmnd" value="03132132">
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Quan hệ với người mất:</label>
                                        <input type="text" name="quanhe" value="cha-con">
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <label for="" id="chuho">*Khai tử cho người dưới đây:</label>
                                </div>

                                 <div class="list_form_info">
                                    <div class="form_info_name">
                                        <label for="name">Mã công dân:</label>
                                               <input type="text" name="macongdan" value="${deathRegistration.getMaCongDan()}">
                                    </div>
                                  
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_date">
                                        <label for="info_date">Ngày/Tháng/Năm mất:</label>
                                        <input type="date" name="ngaymat" id="txtngaymat" value="${deathRegistration.getNgayMat()}">

                                        
                                    </div>
                                    
                                </div>
                                
                                
								<p id="thongbao" style="display:none; color:red; font-size:1.3rem;">Ngày báo tử phải sau ngày mất</p>
                               
                               
                                <div class="list_form_info" id="info_chame">
                                    <div class="form_info_datecha">
                                        <label for="info_date">Ngày báo tử:</label>
                                        <!-- <select name="info_date" id="info_daycha" class="info_day">

                                        </select>
                                        <select name="info_date" id="info_monthcha" class="info_month">

                                        </select>
                                        <select name="info_date" id="info_yearcha" class="info_year">

                                        </select> -->
                                        <input type="date" name="ngaybaotu" id="txtngaybaotu"  value="${deathRegistration.getNgayBaoTu()}">

                                    </div>
                                    
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_cutrucha">
                                        <label for="cutrucha">Nơi mất:</label>
                                        <input type="text" name="noimat" value="${deathRegistration.getNoiTu()}">
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_cutrucha">
                                        <label for="cutrucha">Nguyên nhân:</label>
                                        <input type="text" name="nguyennhan" value="${deathRegistration.getNguyenNhan()}">
                                    </div>
                                </div>
                               
                                <!-- end -->

                                <input type="submit" value="LƯU" id="send_form_khaisinh">
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!--end container-->
        <!--begin footer-->
        <div class="grid wide">
            <div class="footer">
                <div class="row">
                    <div class="col l-4 m-4">
                        <div class="footer_item">
                            <p class="footer_title">UBND P.Thanh Khê Tây</p>
                            <p class="footer_info">© Bản quyền Website: UBND phường Thanh Khê Tây - quận Thanh Khê - Tp
                                Đà Nẵng
                            </p>
                        </div>
                    </div>
                    <div class="col l-4 m-4">
                        <div class="footer_item">
                            <p class="footer_title">Trụ sở cơ quan</p>
                            <p class="footer_info">300 Dũng Sĩ Thanh Khê - Quận Thanh Khê - Tp Đà Nẵng</p>
                        </div>
                    </div>
                    <div class="col l-4 m-4">
                        <div class="footer_item">
                            <p class="footer_title">Điện thoại</p>
                            <p class="footer_info">0236. 3760.174</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="applogin close">
        <div class="login_box">
            <h1 class="title_login">đăng nhập</h1>
            <form action="" class="box_input">
                <div id="input_id">
                    <input type="text" placeholder="Số CMND/CCCD">
                    <i class="fa-solid fa-user" id="loginuser"></i>
                </div>
                <div id="input_password">
                    <input type="password" placeholder="Mật khẩu">
                    <i class="fa-solid fa-key" id="loginkey"></i>
                    <i class="fa-regular fa-eye-slash"></i>
                    <i class="fa-regular fa-eye close"></i>
                </div>
                <div class="sign">
                    <a href="#" class="register_account">Đăng ký?</a>
                    <a href="#" class="fogot_pass">Quên mật khẩu ?</a>
                </div>
                <input type="submit" class="btn_login" value="Đăng nhập"></input>
                <!--thong bao trang thai dang nhap-->
                <div class="applogin_announce">
                    <p id="applogin_announce--content">Không thành công !!!</p>
                </div>
            </form>
            <i class="fa-solid fa-xmark"></i>
        </div>
    </div>
    <!--đăg ký-->
    <div class="register_pass close">
        <div class="register_box">
            <h1 class="title_login">đăng ký</h1>
            <form action="" class="box_input">
                <div id="input_id">
                    <input type="text" placeholder="Số CMND/CCCD">
                    <i class="fa-solid fa-user" id="loginuser"></i>
                </div>

                <div class="send_email">
                    <div id="input_email">
                        <input type="email" placeholder="Email">
                        <i class="fa-solid fa-envelope" id="loginuser"></i>
                    </div>
                    <button id="register_button_otp">Gửi OTP</button>
                </div>

                <div id="input_password">
                    <input type="password" placeholder="Mật khẩu">
                    <i class="fa-solid fa-key" id="loginkey"></i>
                    <i class="fa-regular fa-eye-slash"></i>
                    <i class="fa-regular fa-eye close"></i>
                </div>
                <div id="input_id">
                    <input type="text" placeholder="Mã OTP">
                    <i class="fa-solid fa-user" id="loginuser"></i>
                </div>
                <input type="submit" class="btn_login" value="Đăng ký"></input>
                <!--thong bao trang thai dang nhap-->
                <div class="applogin_announce">
                    <p id="applogin_announce--content">Không thành công !!!</p>
                </div>
            </form>
            <i class="fa-solid fa-xmark"></i>
        </div>
    </div>
    <!--quên mật khẩu-->
    <div class="forgot_pass close">
        <div class="register_box">
            <h1 class="title_login">quên mật khẩu</h1>
            <form action="" class="box_input">
                <div id="input_id">
                    <input type="text" placeholder="Số CMND/CCCD">
                    <i class="fa-solid fa-user" id="loginuser"></i>
                </div>

                <div class="send_email">
                    <div id="input_email_2">
                        <!-- <input type="email" placeholder="Email">
                        <i class="fa-solid fa-envelope" id="loginuser"></i> -->
                    </div>
                    <button id="forgot_button_otp">Gửi OTP</button>
                </div>
                <div id="input_id">
                    <input type="text" placeholder="Mã OTP">
                    <i class="fa-solid fa-user" id="loginuser"></i>
                </div>
                <div id="input_password">
                    <input type="password" placeholder="Nhập mật khẩu mới">
                    <i class="fa-solid fa-key" id="loginkey"></i>
                    <i class="fa-regular fa-eye-slash"></i>
                    <i class="fa-regular fa-eye close"></i>
                </div>
                <input type="submit" class="btn_login" value="Xác nhận"></input>
                <!--thong bao trang thai dang nhap-->
                <div class="applogin_announce">
                    <p id="applogin_announce--content">Không thành công !!!</p>
                </div>
            </form>
            <i class="fa-solid fa-xmark"></i>
        </div>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function() {
    // Bắt sự kiện `change` trên trường input
    var notice= $("#thongbao");
    console.log(notice)
    $("#txtngaybaotu").on("change", function() {
        // Lấy giá trị từ trường input
         var ngaymat= $("#txtngaymat").val();
        var ngaybaotu = $(this).val(); 
        if(ngaybaotu < ngaymat){
        	console.log("Fault")
        	notice.css('display', 'block')
        	}
        else{
        	notice.css('display', 'none')
		}
        
        
        // Thực hiện hành động khi giá trị thay đổi
    });
});
</script>
</html>