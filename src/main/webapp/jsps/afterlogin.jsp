<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Import thư viện JSTL -->
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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



</head>

<body>
    <script src="./js/index.js"></script>
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
                                <input id="searching" type="search" placeholder="Tìm kiếm...">
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
                                    <li><a href="registerBirth">đăng ký biểu mẫu</a></li>
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
                             
                                <% 
									   Integer status = (Integer) request.getAttribute("status");
											Date currentDate = new Date();
									SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        							String formattedDate = formatter.format(currentDate);
    									if (status != null && status == 1) {  
									%>
									    <li>
									        <a href="#" class="app_list_announce_item">
									            <div class="anounce_item_head">
									                <div class="app_announce_logo_2"></div>
									                <div class="anounce_item_title">
									                    <h2>Đăng ký khai sinh thất bại</h2>
										                    <p><%= formattedDate %></p>
									                </div>
									            </div>
									            <div class="anounce_item_content">
									                <p>Biểu mẫu của bạn không được ban quản trị phê duyệt,
									                    để biết thêm chi tiết xin vui lòng liên ...</p>
									                <i class="fa-solid fa-circle announce_chua_doc"></i>
									            </div>
									        </a>
									    </li>
									<% 
									    } else {
									%>
									    <!-- You can place content for when status != 1 here, or leave empty -->
									<%
									    }
									%>

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
                    <div class="col l-9 m-8">
                        <div class="content">
                            <div class="row">
                                <div class="col l-10 l-o-1 m-12">
                                    <div class="content_title">
                                        <h4>Tin tức nổi bật</h4>
                                          <input  type="hidden" id="hide" value="${Role}"/>
                                    </div>
                                </div>
                                <div class="col l-5 l-o-1 m-6">
                                    <div class="content_1">
                                        <!-- begin slide-->
                                        <div class="block_slider">
                                            <ul class="list_item_slider">
                                                <li>
                                                    <a href="https://www.youtube.com/" class="content_1_image">
                                                        <img src="https://static.kinhtedothi.vn/images/upload/2022/04/22/toan-canh.jpg"
                                                            alt="Hinh Anh">
                                                    </a>
                                                    <a href="https://www.youtube.com/" class="content_1_title">
                                                        <h4>ĐẢNG ỦY PHƯỜNG THANH KHÊ TÂY TỔ CHỨC LỄ TRAO HUY HIỆU ĐẢNG
                                                            ĐỢT 7/11
                                                        </h4>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.youtube.com/" class="content_1_image">
                                                        <img src="https://bcp.cdnchinhphu.vn/334894974524682240/2023/11/15/14-11tc2-17000170340751942618966.jpg"
                                                            alt="Hinh Anh">
                                                    </a>
                                                    <a href="https://www.youtube.com/" class="content_1_title">
                                                        <h4>giám đốc công an tp. đà nẵng khen thưởng đột xuất công an
                                                            quân thanh khê
                                                        </h4>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.youtube.com/" class="content_1_image">
                                                        <img src="https://dienbientv.vn/dataimages/201904/original/images2763672_Untitled_1.jpg"
                                                            alt="Hinh Anh">
                                                    </a>
                                                    <a href="https://www.youtube.com/" class="content_1_title">
                                                        <h4>tuyên truyền phổ biến, giáo dục pháp luật cho cán bộ, nhân
                                                            dân phường thanh khê tây
                                                        </h4>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.youtube.com/" class="content_1_image">
                                                        <img src="https://th.bing.com/th/id/R.e4b351fc8f7f6b2ebcda68365a3dd648?rik=EXhEzzMC%2fvFuNw&riu=http%3a%2f%2fhoisinhvien.com.vn%2fpic%2fNew%2fimages%2fTSMT+2019%2f65302975_2473424222703627_5094334188086099968_o.jpg&ehk=3A07jmwwRTcZ%2fKS3eCmb4q2166ZBaiOc%2bqQxsTlzn0k%3d&risl=&pid=ImgRaw&r=0"
                                                            alt="Hinh Anh">
                                                    </a>
                                                    <a href="https://www.youtube.com/" class="content_1_title">
                                                        <h4>thanh niên phường thanh khê tây trong chuyến thiện nguyện
                                                            đầu năm
                                                        </h4>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <ul class="content_number--img">
                                            <li class="number--img--item chooseimg"></li>
                                            <li class="number--img--item"></li>
                                            <li class="number--img--item"></li>
                                            <li class="number--img--item"></li>
                                        </ul>
                                        <!--end slide-->
                                        <div class="content_1_logo">
                                            <div class="logo_1">
                                                <img src="./image/logo_chuyendoiso.png" alt="chuyem doi so">
                                            </div>
                                            <div class="logo_title_1">
                                                <h2>10.10.2023</h2>
                                                <p>NGÀY CHUYỂN ĐỔI SỐ QUỐC GIA</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col l-5 m-6">
                                    <div class="content_2">
                                        <ul class="content_2_list">
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ngày hội đại đoàn kêt tại khu dân cư</h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ra mắt mô hình "Tổ liên kết dịch vụ đặc sản sạch ban mai xanh"
                                                    </h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>

                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Hội nghị đối thoại giữa bí thư đảng ủy và chủ tịch UBND phường
                                                        với
                                                        nhân
                                                        dân trước kỳ họp thường kỳ cuối năm củ hđnd thành phố khóa x,
                                                        nhiệm
                                                        kỳ
                                                        2021-2026</h3>
                                                    <p>Ngày đăng: 07/11/2023
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ngày hội đại đoàn kêt tại khu dân cư</h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ra mắt mô hình "Tổ liên kết dịch vụ đặc sản sạch ban mai xanh"
                                                    </h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>

                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Hội nghị đối thoại giữa bí thư đảng ủy và chủ tịch UBND phường
                                                        với
                                                        nhân
                                                        dân trước kỳ họp thường kỳ cuối năm củ hđnd thành phố khóa x,
                                                        nhiệm
                                                        kỳ
                                                        2021-2026</h3>
                                                    <p>Ngày đăng: 07/11/2023
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ngày hội đại đoàn kêt tại khu dân cư</h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ra mắt mô hình "Tổ liên kết dịch vụ đặc sản sạch ban mai xanh"
                                                    </h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>

                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Hội nghị đối thoại giữa bí thư đảng ủy và chủ tịch UBND phường
                                                        với
                                                        nhân
                                                        dân trước kỳ họp thường kỳ cuối năm củ hđnd thành phố khóa x,
                                                        nhiệm
                                                        kỳ
                                                        2021-2026</h3>
                                                    <p>Ngày đăng: 07/11/2023
                                                    </p>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-4">
                        <div class="row">
                            <div class="col l-10">
                                <div class="sidebar">
                                    <div class="sidebar_title">
                                        <h4>THÔNG BÁO</h4>
                                    </div>
                                    <ul class="sidebar_listinfo">
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col l-9 m-8">
                        <div class="content">
                            <div class="row">
                                <div class="col l-10 l-o-1 m-12">
                                    <div class="content_title">
                                        <h4>đảng bộ phường</h4>
                                    </div>
                                </div>
                                <div class="col l-5 l-o-1 m-6">
                                    <div class="content_1">
                                        <!-- begin slide-->
                                        <div class="block_slider">
                                            <ul class="list_item_slider">
                                                <li>
                                                    <a href="https://www.youtube.com/" class="content_1_image">
                                                        <img src="https://static.kinhtedothi.vn/images/upload/2022/04/22/toan-canh.jpg"
                                                            alt="Hinh Anh">
                                                    </a>
                                                    <a href="https://www.youtube.com/" class="content_1_title">
                                                        <h4>ĐẢNG ỦY PHƯỜNG THANH KHÊ TÂY TỔ CHỨC LỄ TRAO HUY HIỆU ĐẢNG
                                                            ĐỢT 7/11
                                                        </h4>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.youtube.com/" class="content_1_image">
                                                        <img src="https://bcp.cdnchinhphu.vn/334894974524682240/2023/11/15/14-11tc2-17000170340751942618966.jpg"
                                                            alt="Hinh Anh">
                                                    </a>
                                                    <a href="https://www.youtube.com/" class="content_1_title">
                                                        <h4>giám đốc công an tp. đà nẵng khen thưởng đột xuất công an
                                                            quân thanh khê
                                                        </h4>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.youtube.com/" class="content_1_image">
                                                        <img src="https://dienbientv.vn/dataimages/201904/original/images2763672_Untitled_1.jpg"
                                                            alt="Hinh Anh">
                                                    </a>
                                                    <a href="https://www.youtube.com/" class="content_1_title">
                                                        <h4>tuyên truyền phổ biến, giáo dục pháp luật cho cán bộ, nhân
                                                            dân phường thanh khê tây
                                                        </h4>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.youtube.com/" class="content_1_image">
                                                        <img src="https://th.bing.com/th/id/R.e4b351fc8f7f6b2ebcda68365a3dd648?rik=EXhEzzMC%2fvFuNw&riu=http%3a%2f%2fhoisinhvien.com.vn%2fpic%2fNew%2fimages%2fTSMT+2019%2f65302975_2473424222703627_5094334188086099968_o.jpg&ehk=3A07jmwwRTcZ%2fKS3eCmb4q2166ZBaiOc%2bqQxsTlzn0k%3d&risl=&pid=ImgRaw&r=0"
                                                            alt="Hinh Anh">
                                                    </a>
                                                    <a href="https://www.youtube.com/" class="content_1_title">
                                                        <h4>thanh niên phường thanh khê tây trong chuyến thiện nguyện
                                                            đầu năm
                                                        </h4>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <ul class="content_number--img">
                                            <li class="number--img--item index2 chooseimg2"></li>
                                            <li class="number--img--item index2"></li>
                                            <li class="number--img--item index2"></li>
                                            <li class="number--img--item index2"></li>
                                        </ul>
                                        <!--end slide-->
                                        <div class="content_1_logo">
                                            <div class="logo_1">
                                                <img src="./image/logo_chuyendoiso.png" alt="chuyem doi so">
                                            </div>
                                            <div class="logo_title_1">
                                                <h2>10.10.2023</h2>
                                                <p>NGÀY CHUYỂN ĐỔI SỐ QUỐC GIA</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col l-5 m-6">
                                    <div class="content_2">
                                        <ul class="content_2_list">
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ngày hội đại đoàn kêt tại khu dân cư</h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ra mắt mô hình "Tổ liên kết dịch vụ đặc sản sạch ban mai xanh"
                                                    </h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>

                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Hội nghị đối thoại giữa bí thư đảng ủy và chủ tịch UBND phường
                                                        với
                                                        nhân
                                                        dân trước kỳ họp thường kỳ cuối năm củ hđnd thành phố khóa x,
                                                        nhiệm
                                                        kỳ
                                                        2021-2026</h3>
                                                    <p>Ngày đăng: 07/11/2023
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ngày hội đại đoàn kêt tại khu dân cư</h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ra mắt mô hình "Tổ liên kết dịch vụ đặc sản sạch ban mai xanh"
                                                    </h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>

                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Hội nghị đối thoại giữa bí thư đảng ủy và chủ tịch UBND phường
                                                        với
                                                        nhân
                                                        dân trước kỳ họp thường kỳ cuối năm củ hđnd thành phố khóa x,
                                                        nhiệm
                                                        kỳ
                                                        2021-2026</h3>
                                                    <p>Ngày đăng: 07/11/2023
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ngày hội đại đoàn kêt tại khu dân cư</h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Ra mắt mô hình "Tổ liên kết dịch vụ đặc sản sạch ban mai xanh"
                                                    </h3>
                                                    <p>Ngày đăng: 07/11/2023</p>
                                                </a>

                                            </li>
                                            <li>
                                                <a href="#" class="content_2list--item">
                                                    <h3>Hội nghị đối thoại giữa bí thư đảng ủy và chủ tịch UBND phường
                                                        với
                                                        nhân
                                                        dân trước kỳ họp thường kỳ cuối năm củ hđnd thành phố khóa x,
                                                        nhiệm
                                                        kỳ
                                                        2021-2026</h3>
                                                    <p>Ngày đăng: 07/11/2023
                                                    </p>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-4">
                        <div class="row">
                            <div class="col l-10">
                                <div class="sidebar">
                                    <div class="sidebar_title">
                                        <h4>LỊCH CÔNG TÁC</h4>
                                    </div>
                                    <ul class="sidebar_listinfo">
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="sidebar_listinfo_item">
                                                <h4>TUYÊN TRUYỀN MỘT SỐ NHIỆM VỤ, NỘI DUNG TRONG TUẦN 45</h4>
                                                <p>Ngày đăng: 02/11/2023</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
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
	
    

	
	</script>
</html>
