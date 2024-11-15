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
    <title>afterlogin</title>
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

<style>
.hs{
display:block;}
</style>

</head>

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

                        <div class="header_login close">
                            <a href="#" id="account2">ĐĂNG XUẤT</a>
                            <a href="#" id="account"></a>
                        </div>

                    </div>
                </div>


                <div class="nav">
                    <div class="nav_item"><a id="first_navi" href="employ_afterlogin.html">Trang Chủ</a></div>
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
                                <div class="hello_user"><i class="fa-solid fa-user" id="hello_user_icon"></i>
                                    <i class="fa-solid fa-bars" id="hello_user_bar"></i>
                                    <h3>Nhân viên <span id="hello_user_name">Nguyễn Mạnh Dũng</span></h3>
                                </div>
                                <ul class="user_afterlogin_listinfo">
                                    <li><a href="#">danh sách biểu mẫu</a></li>
                                    <li><a href="employ_dangbai.html">đăng thông báo</a></li>
                                    <li><a href="#">cập nhật biểu mẫu</a></li>
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
                        <div class="list_bieumau">
                            <h3 id="list_bieumau--title">danh sách biểu mẫu</h3>
                            <ul class="list_bieumau_user">
                                <li class="list_bieumau_user--item">
                                    <p class="bieumau_username"><span>Nguyễn Mạnh Dũng</span><i
                                            class="fa-solid fa-caret-down"></i></p>
                                            <input type="hidden" id="idUser" value="${IdUser}">
                                    <div class="category_bieumau close" id="dsbm01">
                                        <a href="#" class="bieumau_tamtru">Đăng ký tạm trú</a>
                                        <a href="#" class="bieumau_tamvang">Đăng ký tạm vắng</a>
                                        <a href="#" class="bieumau_khaisinh">Đăng ký khai sinh</a>
                                        <a href="#" class="bieumau_khaitu">Đăng ký khai tử</a>
                                    </div>
                                </li>
                                <li class="list_bieumau_user--item">
                                    <p class="bieumau_username"><span>Nguyễn Văn Nam</span><i
                                            class="fa-solid fa-caret-down"></i></p>
                                    <div class="category_bieumau close" id="dsbm02">
                                        <a href="#" class="bieumau_tamtru">Đăng ký tạm trú</a>
                                        <a href="#" class="bieumau_tamvang">Đăng ký tạm vắng</a>
                                        <a href="#" class="bieumau_khaisinh2">Đăng ký khai sinh</a>
                                        <a href="#" class="bieumau_khaitu">Đăng ký khai tử</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                   
                    <div class="col l-7 m-8">
                        <!-- form tam tru -->
                         <!-- update list -->
                        <ul class="list_tamtru_form close">
                            <h2 id="tamtru_head"> danh sách đăng ký tạm trú</h2>
                            <a class="folder hs">Hồ sơ 01</a>
                             <a class="folder hs">Hồ sơ 02</a>
                        </ul>
                        <ul class="list_tamvang_form close">
                            <h2 id="tamvang_head"> danh sách đăng ký tạm vắng</h2>
                              <a class="folder hs">Hồ sơ 01</a>
                             <a class="folder hs">Hồ sơ 02</a>
                        </ul>
                        <ul class="list_khaisinh_form close">
                            <h2 id="khaisinh_head"> danh sách đăng ký khai sinh</h2>
                              <a href="RegisterBirthCivil?ma=1" class="folder hs">Hồ sơ 01</a>
                             <a href="RegisterBirthCivil?ma=1" class="folder hs">Hồ sơ 02</a>
                        </ul>
                        <ul class="list_khaitu_form close">
                            <h2 id="khaitu_head"> danh sách đăng ký khai tử</h2>
                             <a class="folder hs">Hồ sơ 01</a>
                             <a class="folder hs">Hồ sơ 02</a>
                        </ul>
						<ul class="list_tamtru_form2 close">
                            <h2 id="tamtru_head"> danh sách đăng ký tạm trú</h2>
                            <a class="folder hs">Hồ sơ 01</a>
                             <a class="folder hs">Hồ sơ 02</a>
                        </ul>
                        <ul class="list_tamvang_form2 close">
                            <h2 id="tamvang_head"> danh sách đăng ký tạm vắng</h2>
                              <a class="folder hs">Hồ sơ 01</a>
                             <a class="folder hs">Hồ sơ 02</a>
                        </ul>
                        <ul class="list_khaisinh_form2 close">
                            <h2 id="khaisinh_head"> danh sách đăng ký khai sinh</h2>
                              <a href="RegisterBirthCivil?ma=2" class="folder hs">Hồ sơ 01</a>
                             <a href="RegisterBirthCivil?ma=2" class="folder hs">Hồ sơ 02</a>
                        </ul>
                        <ul class="list_khaitu_form2 close">
                            <h2 id="khaitu_head"> danh sách đăng ký khai tử</h2>
                             <a class="folder hs">Hồ sơ 01</a>
                             <a class="folder hs">Hồ sơ 02</a>
                        </ul>
                        <!-- end update list -->
                        <div class="form_tamtru_employ close">
                            <h2>đăng ký tạm trú</h2>
                            <form action="#" id="form_mau_employ">
                                <div class="list_form_info">
                                    <div class="form_info_name">
                                        <label for="name">Họ và tên:</label>
                                         <input type="text" name="name" required>
                                    </div>
                                    <div class="form_info_nam">
                                        <label for="nam">Nam</label>
                                        <input type="radio" name="nam">
                                    </div>
                                    <div class="form_info_nu">
                                        <label for="nam">Nữ</label>
                                        <input type="radio" name="nam">
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_date">
                                        <label for="info_date">Ngày/Tháng/Năm sinh:</label>
                                        <select name="info_date" class="info_day">

                                        </select>
                                        <select name="info_date" class="info_month">

                                        </select>
                                        <select name="info_date" class="info_year">

                                        </select>
                                    </div>
                                    <div class="fom_info_dantoc">
                                        <label for="dantoc">Dân tộc:</label>
                                        <input type="text" name="dantoc" required>
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_cmnd">
                                        <label for="cmnd">CMND/CCCD:</label>
                                        <input type="text" name="cmnd" required>
                                    </div>
                                    <div class="form_info_quoctich">
                                        <label for="quoctich">Quốc tịch:</label>
                                        <input type="text" name="quoctich" required>
                                    </div>
                                </div>
                                <!-- update noi sinh -->
                                <div class="list_form_info">
                                    <div class="form_info_thuongtru">
                                        <label for="thuongtru">Nơi sinh:</label>
                                        <input type="text" name="thuongtru" required>
                                    </div>
                                </div>
                                <!-- end update -->
                                <div class="list_form_info">
                                    <div class="form_info_thuongtru">
                                        <label for="thuongtru">Nơi thường trú:</label>
                                        <input type="text" name="thuongtru" required>
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_ohientai">
                                        <label for="ohientai">Nơi ở hiện tại:</label>
                                        <input type="text" name="ohientai" required>
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_tamtru">
                                        <label for="tamtru">Tạm trú:</label>
                                        <input type="text" name="tamtru" required>
                                    </div>
                                </div>
                                <!-- update nghe nghiep -->
                                <div class="list_form_info">
                                    <div class="form_info_tamtru">
                                        <label for="tamtru">Nghề nghiệp:</label>
                                        <input type="text" name="tamtru" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_sdt">
                                        <label for="sdt">Số điện thoại:</label>
                                        <input type="text" name="sdt" required>
                                    </div>
                                    <div class="form_info_email">
                                        <label for="email">Email:</label>
                                        <input type="email" name="email" required>
                                    </div>
                                </div>


                                <div class="list_form_info_image">
                                    <div class="form_info_image">
                                        <label for="image_cmnd" id="form_for_image_cccd">Ảnh CMND/CCCD:</label>
                                        <div class="form_upload_image_mattruoc">
                                            
                                        </div>
                                        <div class="form_upload_image_matsau">
                                            
                                        </div>
                                    </div>
                                </div>


                                <!-- update ngày đk tạm  trú -->
                                <div class="list_form_info">
                                    <div class="form_info_date">
                                        <label for="info_date">Ngày đăng ký tạm trú:</label>
                                        <select name="info_date" class="info_day">

                                        </select>
                                        <select name="info_date" class="info_month">

                                        </select>
                                        <select name="info_date" class="info_year">

                                        </select>
                                    </div>
                                </div>
                                <!-- end update ngay dk tam tru -->
                                <div class="list_form_info">
                                    <label for="" id="chuho">*Chủ hộ:</label>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_name_chuho">
                                        <label for="name">Họ và tên:</label>
                                        <input type="text" name="name" required>
                                    </div>
                
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_cmnd_chuho">
                                        <label for="cmnd">CMND/CCCD:</label>
                                        <input type="text" name="cmnd" required>
                                    </div>
                                </div>
                               <a href="abc"><button class="send_form_employ_accept">Phê duyệt</button></a>
                                 <a href="dbc"><button class="send_form_employ_noaccept">Không duyệt</button></a>
                                
                            </form>

                        </div>
                        <!-- form khai sinh -->
                        <div class="form_khaisinh close" id="dkkhaisinh">
                            <h2>đăng ký khai sinh</h2>
                                <div class="list_form_info">
                                    <div class="form_info_name">
                                        <label for="name">Họ và tên:</label>
                                          <input type="text" name="name" value="${birthRegistration.getHoTen()}">
                                     
                                    </div>
                                    <div class="form_info_nam">
                                        <label for="nam">Nam</label>
                                        <input type="radio" name="gender" id="nam"  <c:if test="${birthRegistration.getGioiTinh() == 'N'}">checked</c:if>>
                                    </div>
                                    <div class="form_info_nu">
                                        <label for="nu">Nữ</label>
                                        <input type="radio" name="gender" id="nu" <c:if test="${birthRegistration.getGioiTinh() == 'A'}">checked</c:if>>
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_date">
                                        <label for="info_date">Ngày/Tháng/Năm sinh:</label>
                                         <input type="datetime" value="${birthRegistration.getNgaySinh()}"/>
                                    </div>
                                    <div class="fom_info_dantoc">
                                        <label for="dantoc">Dân tộc:</label>
                                        <input type="text" name="dantoc" value="${birthRegistration.getDanToc()}">
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_noisinh">
                                        <label for="noisinh">Nơi sinh:</label>
                                        <input type="text" name="noisinh" value="${birthRegistration.getNoiSinh()}">
                                    </div>
                                    <div class="form_info_quoctich">
                                        <label for="quoctich">Quốc tịch:</label>
                                        <input type="text" name="quoctich" value="${birthRegistration.getQuocTich()}">
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Quê quán:</label>
                                        <input type="text" name="quequan" value="${birthRegistration.getQueQuan()}">
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_hotenme">
                                        <label for="hotenme">Họ tên mẹ:</label>
                                        <input type="text" name="quequan" value="${birthRegistration.getTenMe()}">
                                    </div>
                                    <div class="form_info_cmndme">
                                        <label for="cmndme">CMND/CCCD:</label>
                                        <input type="text" name="quequan" value="${birthRegistration.getCccdMe()}">
                                    </div>
                                </div>

                                <div class="list_form_info" id="info_chame">
                                    <div class="form_info_dateme">
                                        <label for="info_date">Ngày/Tháng/Năm sinh:</label>
                                        <input type="datetime" name="quequan" value="${birthRegistration.getNgaySinh()}">
                                    </div>
                                    <div class="fom_info_dantocme">
                                        <label for="dantoc">Dân tộc:</label>
                                        <input type="datetime" name="quequan" value="${birthRegistration.getDanToc()}">
                                    </div>
                                    <div class="fom_info_quoctichme">
                                        <label for="quoctichme">Quốc tịch:</label>
                                        <input type="datetime" name="quequan" value="${birthRegistration.getQuocTich()}">
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_cutrume">
                                        <label for="cutrume">Cư trú:</label>
                                        <input type="text" name="quequan" value="${birthRegistration.getNoiCuTru()}">
                                    </div>
                                </div>

                                <!--thong tin cha-->
                                <div class="list_form_info">
                                    <div class="form_info_hotencha">
                                        <label for="hotencha">Họ tên cha:</label>
                                         <input type="datetime" name="quequan" value="${birthRegistration.getTenCha()}">
                                    </div>
                                    <div class="form_info_cmndcha">
                                        <label for="cmndcha">CMND/CCCD:</label>
                                        <input type="datetime" name="quequan" value="${birthRegistration.getCccdCha()}">
                                    </div>
                                </div>

                                <div class="list_form_info" id="info_chame">
                                    <div class="form_info_datecha">
                                        <label for="info_date">Ngày/Tháng/Năm sinh:</label>
                                        <input type="datetime" name="quequan" value="${birthRegistration.getNgaySinh()}">
                                    </div>
                                    <div class="fom_info_dantoccha">
                                        <label for="dantoc">Dân tộc:</label>
                                       <input type="text" name="quequan" value="${birthRegistration.getDanToc()}">
                                    </div>
                                    <div class="fom_info_quoctichcha">
                                        <label for="quoctichcha">Quốc tịch:</label>
                                        <input type="datetime" name="quequan" value="${birthRegistration.getQuocTich()}">
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_cutrucha">
                                        <label for="cutrucha">Cư trú:</label>
                                        <input type="datetime" name="quequan" value="${birthRegistration.getNoiCuTru()}">
                                    </div>
                                </div>

                                <div class="list_form_info close">
                                    <div class="form_info_sdt">
                                        <label for="sdt">Số điện thoại:</label>
                                        <input type="text" name="sdt" required>
                                    </div>
                                    <div class="form_info_email">
                                        <label for="email">Email:</label>
                                        <input type="email" name="email" required>
                                    </div>
                                </div>
                                <div class="list_form_info close">
                                    <div class="form_info_image">
                                        <label for="image_cmnd" id="form_for_image_cccd">Ảnh CMND/CCCD:</label>
                                        <div class="form_upload_image">
                                            <input type="file" name="image_cmnd" id="mattruoc">
                                            <label for="mattruoc" class="upload_file"><i
                                                    class="fa-solid fa-arrow-up-from-bracket"></i>Mặt trước</label>
                                            <span class="ttimage">
                                                <strong>Choose file:</strong>
                                                <span id="filename_truoc">None</span>
                                            </span>
                                        </div>
                                        <div class="form_upload_image">
                                            <input type="file" name="image_cmnd" id="matsau">
                                            <label for="matsau" class="upload_file"><i
                                                    class="fa-solid fa-arrow-up-from-bracket"></i>Mặt sau</label>
                                            <span class="ttimage">
                                                <strong>Choose file:</strong>
                                                <span id="filename_sau">None</span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                               <a href="ConfirmAccept?id=${IdUser}" ><button class="send_form_employ_accept">Phê duyệt</button></a>
                                 <a href="ConfirmDeny?id=${IdUser}"><button class="send_form_employ_noaccept">Không duyệt</button></a>
                              

                        </div>
                        <!-- form khai tu -->
                        <div class="form_khaitu close">
                            <h2>đăng ký khai tử</h2>
                                <!-- update khai tu -->
                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Họ tên người khai:</label>
                                        <input type="text" name="quequan" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_hotenme">
                                        <label for="hotenme">Nơi cư trú:</label>
                                        <input type="text" name="hotenme" required>
                                    </div>
                                    <div class="form_info_cmndme">
                                        <label for="cmndme">CMND/CCCD:</label>
                                        <input type="text" name="cmndme" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Quan hệ với người mất:</label>
                                        <input type="text" name="quequan" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <label for="" id="chuho">*Khai tử cho người dưới đây:</label>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_name">
                                        <label for="name">Họ và tên:</label>
                                        <input type="text" name="name" required>
                                    </div>
                                    <div class="form_info_nam">
                                        <label for="nam">Nam</label>
                                        <input type="radio" name="nam">
                                    </div>
                                    <div class="form_info_nu">
                                        <label for="nam">Nữ</label>
                                        <input type="radio" name="nam">
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_date">
                                        <label for="info_date">Ngày/Tháng/Năm sinh:</label>
                                        <select name="info_date" class="info_day">

                                        </select>
                                        <select name="info_date" class="info_month">

                                        </select>
                                        <select name="info_date" class="info_year">

                                        </select>
                                    </div>
                                    <div class="fom_info_dantoc">
                                        <label for="dantoc">Dân tộc:</label>
                                        <input type="text" name="dantoc" required>
                                    </div>
                                </div>

                                <div class="list_form_info">
                                    <div class="form_info_noisinh">
                                        <label for="noisinh">Quê quán:</label>
                                        <input type="text" name="noisinh" required>
                                    </div>
                                    <div class="form_info_quoctich">
                                        <label for="quoctich">Quốc tịch:</label>
                                        <input type="text" name="quoctich" required>
                                    </div>
                                </div>


                                <div class="list_form_info">
                                    <div class="form_info_hotenme">
                                        <label for="hotenme">Nơi cư trú:</label>
                                        <input type="text" name="hotenme" required>
                                    </div>
                                    <div class="form_info_cmndme">
                                        <label for="cmndme">CMND/CCCD:</label>
                                        <input type="text" name="cmndme" required>
                                    </div>
                                </div>
                        
                               
                                <div class="list_form_info" id="info_chame">
                                    <div class="form_info_datecha">
                                        <label for="info_date">Đã mất vào hồi:</label>
                                        <select name="info_date" id="info_daycha" class="info_day">

                                        </select>
                                        <select name="info_date" id="info_monthcha" class="info_month">

                                        </select>
                                        <select name="info_date" id="info_yearcha" class="info_year">

                                        </select>
                                    </div>
                                    <div class="fom_info_dantoccha">
                                        <label for="dantoc">Giờ:</label>
                                        <input type="text" name="dantoc" required>
                                    </div>
                                    <div class="fom_info_quoctichcha">
                                        <label for="quoctichcha">Phút:</label>
                                        <input type="text" name="quoctichcha" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_cutrucha">
                                        <label for="cutrucha">Nơi mất:</label>
                                        <input type="text" name="cutrucha" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_cutrucha">
                                        <label for="cutrucha">Nguyên nhân:</label>
                                        <input type="text" name="cutrucha" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_date">
                                        <label for="info_date">Ngày báo tử:</label>
                                        <select name="info_date" class="info_day">

                                        </select>
                                        <select name="info_date" class="info_month">

                                        </select>
                                        <select name="info_date" class="info_year">

                                        </select>
                                    </div>

                                </div>
                                <!-- end -->





                                <div class="list_form_info close">
                                    <div class="form_info_sdt">
                                        <label for="sdt">Số điện thoại:</label>
                                        <input type="text" name="sdt" required>
                                    </div>
                                    <div class="form_info_email">
                                        <label for="email">Email:</label>
                                        <input type="email" name="email" required>
                                    </div>
                                </div>
                                <div class="list_form_info close">
                                    <div class="form_info_image">
                                        <label for="image_cmnd" id="form_for_image_cccd">Ảnh CMND/CCCD:</label>
                                        <div class="form_upload_image">
                                            <input type="file" name="image_cmnd" id="mattruoc">
                                            <label for="mattruoc" class="upload_file"><i
                                                    class="fa-solid fa-arrow-up-from-bracket"></i>Mặt trước</label>
                                            <span class="ttimage">
                                                <strong>Choose file:</strong>
                                                <span id="filename_truoc">None</span>
                                            </span>
                                        </div>
                                        <div class="form_upload_image">
                                            <input type="file" name="image_cmnd" id="matsau">
                                            <label for="matsau" class="upload_file"><i
                                                    class="fa-solid fa-arrow-up-from-bracket"></i>Mặt sau</label>
                                            <span class="ttimage">
                                                <strong>Choose file:</strong>
                                                <span id="filename_sau">None</span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                               <a href="abc"><button class="send_form_employ_accept">Phê duyệt</button></a>
                                 <a href="dbc"><button class="send_form_employ_noaccept">Không duyệt</button></a>
                        </div>
                        <!-- form tam vang -->
                        <div class="form_tamvang close">
                            <h2>đăng ký tạm vắng</h2>
                                <div class="list_form_info">
                                    <div class="form_info_name">
                                        <label for="name">Họ và tên:</label>
                                        <input type="text" name="name" required>
                                    </div>
                                    <div class="form_info_nam">
                                        <label for="nam">Nam</label>
                                        <input type="radio" name="nam">
                                    </div>
                                    <div class="form_info_nu">
                                        <label for="nam">Nữ</label>
                                        <input type="radio" name="nam">
                                    </div>
                                </div>
                    
                                <div class="list_form_info">
                                    <div class="form_info_date">
                                        <label for="info_date">Ngày/Tháng/Năm sinh:</label>
                                        <select name="info_date" class="info_day">

                                        </select>
                                        <select name="info_date" class="info_month">

                                        </select>
                                        <select name="info_date" class="info_year">

                                        </select>
                                    </div>
                                    <div class="fom_info_dantoc">
                                        <label for="dantoc">CMND:</label>
                                        <input type="text" name="dantoc" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Nơi thường trú:</label>
                                        <input type="text" name="quequan" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Nơi tạm trú:</label>
                                        <input type="text" name="quequan" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Nơi ở hiện tại:</label>
                                        <input type="text" name="quequan" required>
                                    </div>
                                </div>
                                <div class="list_form_info" id="info_chame">
                                    <div class="form_info_dateme">
                                        <label for="info_date">Ngày tạm vắng:</label>
                                        <select name="info_date" id="info_dayme" class="info_day">

                                        </select>
                                        <select name="info_date" id="info_monthme" class="info_month">

                                        </select>
                                        <select name="info_date" id="info_yearme" class="info_year">
                                        </select>
                                    </div>
                                    <div class="form_info_dateme">
                                        <label for="info_date">đến: </label>
                                        <select name="info_date" id="info_dayme" class="info_day">

                                        </select>
                                        <select name="info_date" id="info_monthme" class="info_month">

                                        </select>
                                        <select name="info_date" id="info_yearme" class="info_year">
                                        </select>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Nơi đến:</label>
                                        <input type="text" name="quequan" required>
                                    </div>
                                </div>
                                <div class="list_form_info">
                                    <div class="form_info_quequan">
                                        <label for="quequan">Lý do:</label>
                                        <input type="text" name="quequan" required>
                                    </div>
                                </div>
                                <div class="list_form_info" id="info_chame">
                                    <div class="form_info_dateme">
                                        <label for="info_date">Ngày đăng ký:</label>
                                        <select name="info_date" id="info_dayme" class="info_day">

                                        </select>
                                        <select name="info_date" id="info_monthme" class="info_month">

                                        </select>
                                        <select name="info_date" id="info_yearme" class="info_year">
                                        </select>
                                    </div>
                                    
                                </div>
                                <!-- end -->

                                
                                <div class="list_form_info close">
                                    <div class="form_info_sdt">
                                        <label for="sdt">Số điện thoại:</label>
                                        <input type="text" name="sdt" required>
                                    </div>
                                    <div class="form_info_email">
                                        <label for="email">Email:</label>
                                        <input type="email" name="email" required>
                                    </div>
                                </div>
                                <div class="list_form_info close">
                                    <div class="form_info_image">
                                        <label for="image_cmnd" id="form_for_image_cccd">Ảnh CMND/CCCD:</label>
                                        <div class="form_upload_image">
                                            <input type="file" name="image_cmnd" id="mattruoc">
                                            <label for="mattruoc" class="upload_file"><i
                                                    class="fa-solid fa-arrow-up-from-bracket"></i>Mặt trước</label>
                                            <span class="ttimage">
                                                <strong>Choose file:</strong>
                                                <span id="filename_truoc">None</span>
                                            </span>
                                        </div>
                                        <div class="form_upload_image">
                                            <input type="file" name="image_cmnd" id="matsau">
                                            <label for="matsau" class="upload_file"><i
                                                    class="fa-solid fa-arrow-up-from-bracket"></i>Mặt sau</label>
                                            <span class="ttimage">
                                                <strong>Choose file:</strong>
                                                <span id="filename_sau">None</span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                 <a href="abc"><button class="send_form_employ_accept">Phê duyệt</button></a>
                                 <a href="dbc"><button class="send_form_employ_noaccept">Không duyệt</button></a>

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
	var idUser=$('#idUser').val();
	if(idUser==1){
		var hide1 = $('#dsbm01');	
		 console.log(hide1);
		 hide1.removeClass('close');
		 var dkkhaisinh = $('#dkkhaisinh');	
		 console.log(dkkhaisinh);
		 dkkhaisinh.removeClass('close');
		 }
	else if(idUser==2){
		var hide2 = $('#dsbm02');	
		 console.log(hide2);
		 hide2.removeClass('close');
		 var dkkhaisinh = $('#dkkhaisinh');	
		 console.log(dkkhaisinh);
		 dkkhaisinh.removeClass('close');
		 }
	
		 
	
	</script>
</html>