<%-- 
    Document   : index
    Created on : May 18, 2025, 5:50:03 PM
    Author     : nzero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.userDTO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
            <%
                userDTO user = (userDTO) request.getAttribute("userID");
            %>
            <div class="interface" style="background-image: url('assets/images/background4.jpg')">
                <div class="header-contain" id="box">
                    <div class="header">
                        <div class="logo">
                            <img id="logo-loka" src="assets/images/logo_white.png" alt="Logo">
                        </div>
                        <div class="menu-header">
                            <div class="font-img">
                                <a><img src="assets/images/Flag_of_Vietnam.svg.webp" alt="Vietnam"> VI|VND</a>
                                <a><img src="assets/images/z6617569047609_e399b667d5c7329885d626bf441edd58-removebg-preview.png" alt="discount"> Khuyến mãi</a>
                                <a href="#">Hỗ trợ</a>
                                <a href="#">Hợp tác với chúng tôi</a>
                                <a href="#">Đặt chỗ của tôi</a>
                            </div>
                            <div class="button">
                                <% if (user != null) { %>
                                    <a class="login-wel" href="profile.jsp">
                                        <img id="user-logo-wel" src="assets/images/img-login (1).png">
                                        <%= user.getFullName() %>
                                    </a>
                                <% } else { %>
                                    <a class="login" href="login.jsp">
                                        <img id="user-logo-login" src="assets/images/user-white.png" alt="login icon">
                                        Đăng nhập
                                    </a>
                                    <a class="register">Đăng ký</a>
                                <% } %>
                            </div>
                        </div>
                    </div>
                    <div class="menu">
                        <a href="#">Khách sạn</a>
                        <a href="#">Vé máy bay</a>
                        <a href="#">Vé xe khách</a>
                    </div>
                </div>

                <div class="booking-menu">
                    <a class="booking-item">
                        <img src="assets/images/logo-hotel.png" id="hotel" alt="Khách sạn">
                      Khách sạn
                    </a>
                    <a class="booking-item active">
                        <img src="assets/images/maybayclick.png" id="maybay" alt="Vé máy bay">
                      Vé máy bay
                    </a>
                    <a class="booking-item">
                      <img src="assets/images/bus-removebg-preview.png" id="bus" alt="Vé xe khách">
                      Vé xe khách
                    </a>
                </div>
                            
               <div class="booking-hotel">
                    <a class="hotelcs active-hotel">
                        <img src="assets/images/lgoo-hotelclick (1).png" alt="Khách sạn">
                      Khách sạn
                    </a>
                    <a class="hotelcs">
                        <img src="assets/images/lgoo-hotelclick (1).png" alt="Biệt thự">
                      Biệt thự
                    </a>
                  </div>

                            
                <div class="search-bar">
                    <form action="#" method="get">
                      <label>
                        Thành phố, địa điểm hoặc tên khách sạn:
                        <img src="assets/images/location-removebg-preview.png" alt="Location icon" />
                        <input type="text" placeholder="Thành phố, khách sạn, điểm đến" />
                      </label>

                      <label>
                        Ngày nhận phòng:
                        <img src="assets/images/lịch-removebg-preview.png" alt="Calendar icon" />
                        <input type="date" id="datecs" />
                      </label>

                      <label>
                        Ngày trả phòng:
                        <input type="date" id="datecsOut" />
                      </label>

                      <div class="search-section">
                        <i class="icon-people"></i>
                        <span>2 người lớn, 0 Trẻ em, 1 phòng</span>
                      </div>

                      <button class="search-button" type="submit">
                        <i class="icon-search"></i>
                        Tìm kiếm
                      </button>
                    </form>
                  </div>

            </div>

            <div class="image-container">
                <img src="assets/images/picnen2.png" alt="Background">
                <img src="assets/images/picnen2.png" alt="Background">
            </div>

            <div class="content-sale">
                <h1>Mã giảm đến 50% khi đặt sớm</h1><br>
                <p>Chỉ áp dụng trên App!</p>
            </div>

            <div class="content-sale-choice">
                <ul class="nav navbar-nav">
                    <li class="active"> <a href="index.html">Khách Sạn</a> </li>
                    <li><a href="#">Vé máy bay</a></li>
                    <li><a href="#">Vé vui chơi</a></li>
                    <li><a href="#">Ngân hàng</a></li>
                    <li><a href="#">Điểm đến hot</a></li>
                    <li><a href="#">Zalo Pay</a></li>
                </ul>
            </div>

            <footer class="footer">
                <div class="footer-container">
                    <div class="footer-col-1">
                        <img src="assets/images/logo_white.png" class="footer-logo" />
                        <div class="certificates">
                            <img src="assets/images/IATAlogo (1).png" />
                            <img src="assets/images/bsi__1_-removebg-preview (1) (1).png" />
                            <img src="assets/images/bocongthuong.png-removebg-preview.png" /><br>
                            <img src="assets/images/bocongthuong.png-removebg-preview.png" />
                        </div>
                        <div class="cooperate">
                            <img src="assets/images/hand-removebg-preview.png" />
                            <span>Hợp tác với Traveloka</span>
                        </div>
                        <div class="partner">
                            <p>Đối tác thanh toán</p>
                            <div class="payment-logos">
                                <div class="payment-4t">
                                    <img src="assets/images/mastercarrd.png" />
                                    <img src="assets/images/visa.png" />
                                    <img src="assets/images/jcb.png" />
                                    <img src="assets/images/asme.png" />
                                </div>
                                <div class="payment-4b">
                                    <img src="assets/images/momo.png" />
                                    <img src="assets/images/tpbank.png" />
                                    <img src="assets/images/techcom.png" />
                                    <img src="assets/images/mb.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-col">
                        <p class="footer-title">Về Traveloka</p>
                        <ul>
                            <li>Cách đặt chỗ</li>
                            <li>Liên hệ chúng tôi</li>
                            <li>Trợ giúp</li>
                            <li>Tuyển dụng</li>
                            <li>Về chúng tôi</li>
                        </ul>
                        <p class="footer-title-1">Theo dõi chúng tôi trên</p>
                        <ul>
                            <li><a href="https://www.facebook.com/TravelokaVN">Facebook</a></li>
                            <li><a href="https://www.instagram.com/traveloka.vn/">Instagram</a></li>
                            <li><a href="https://www.tiktok.com/@traveloka.vn">TikTok</a></li>
                            <li><a href="https://www.facebook.com/TravelokaVN">Youtube</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <p class="footer-title">Sản phẩm</p>
                        <ul>
                            <li>Khách sạn</li>
                            <li>Vé máy bay</li>
                            <li>Vé xe khách</li>
                            <li>Biệt thự</li>
                            <li>Căn hộ</li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <p class="footer-title">Khác</p>
                        <ul>
                            <li>Traveloka Affiliate</li>
                            <li>Traveloka Blog</li>
                            <li>Chính Sách Quyền Riêng</li>
                            <li>Điều khoản & Điều kiện</li>
                            <li>Đăng ký nơi nghỉ của bạn</li>
                            <li>Đăng ký doanh nghiệp hoạt động du lịch của bạn</li>
                            <li>Khu vực báo chí</li>
                            <li>Quy chế hoạt động</li>
                            <li>Vulnerability Disclosure Program</li>
                            <li>APAC Travel Insights</li>
                        </ul>
                        <p class="footer-title">Tải ứng dụng Traveloka</p>
                        <div class="app-download">
                            <img src="assets/images/ch-removebg-preview.png" />
                        </div>
                    </div>
                </div>
            </footer>
        <script src="assets/js/java.js"></script>
    </body>
</html>
