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

    <div class="container">
        <h2>Mã giảm 6.6 cộng dồn đến 6 triệu</h2>
        <p>Chỉ áp dụng trên App!</p>

        <div class="tabs">
            <button class="tab active">Khách sạn</button>
            <button class="tab">Vé máy bay</button>
            <button class="tab">Vé vui chơi</button>
            <button class="tab">Ngân hàng</button>
            <button class="tab">Điểm đến hot</button>
            <button class="tab">Zalo Pay</button>
        </div>

        <div class="voucher-list">
            <div class="voucher">
                <div class="tag">Sắp hết mã</div>
                <h4>[FlashSale] Giảm 50% cho các nước quốc tế khác</h4>
                <p>🔥Đặt từ 2 đêm hoặc 2 phòng</p>
                <div class="code">
                    <span>KSMEGAFS66QT</span>
                    <button onclick="copyCode(this)">Copy</button>
                </div>
            </div>

            <div class="voucher">
                <h4>Giảm đến 600k cho nội địa</h4>
                <p>Giảm đến 600k, đặt từ 3 triệu</p>
                <div class="code">
                    <span>KSMEGA66VN</span>
                    <button onclick="copyCode(this)">Copy</button>
                </div>
            </div>

            <div class="voucher">
                <h4>Giảm đến 600k cho Đông Nam Á</h4>
                <p>Giảm đến 600k, đặt từ 3.5 triệu</p>
                <div class="code">
                    <span>KSMEGA66DNA</span>
                    <button onclick="copyCode(this)">Copy</button>
                </div>
            </div>
        </div>

        <button class="btn-more">Săn thêm mã cộng dồn</button>

        <h3>Mã Ưu Đãi Tặng Bạn Mới</h3>
        <div class="voucher-list">
            <div class="voucher">
                <h4>Giảm ngay 50K</h4>
                <p>Áp dụng cho lần đặt đầu tiên trên ứng dụng Traveloka.</p>
                <div class="code">
                    <span>TVLKBANMOI</span>
                    <button onclick="copyCode(this)">Copy</button>
                </div>
            </div>

            <div class="voucher">
                <h4>8% giảm giá Khách sạn</h4>
                <p>Áp dụng cho lần đặt đầu tiên trên ứng dụng Traveloka.</p>
                <div class="code">
                    <span>TVLKBANMOI</span>
                    <button onclick="copyCode(this)">Copy</button>
                </div>
            </div>
        </div>
    </div>

<!--  -->
    <div class="hotel">
        <div class="section">
            <div class="section-title">✨ Ưu đãi 6.6 nội địa</div>
            <div class="tabs">
                <div class="tab active">Đà Nẵng</div>
                <div class="tab">Hà Nội</div>
                <div class="tab">Tp. Hồ Chí Minh</div>
                <div class="tab">Nha Trang</div>
                <div class="tab">Đà Lạt</div>
            </div>
            <div class="card-grid">
                <div class="card">
                    <img src="assets/images/hoteldanang.jpg" alt="Hotel">
                    <div class="card-content">
                        <div class="tag">Vị trí tốt</div>
                        <h4>Leaf Beachfront Hotel Đà Nẵng</h4>
                        <div class="rating">9.9/10 (45)</div>
                        <div class="price">7.894.481 VND</div>
                        <div class="old-price">9.625.844 VND</div>
                    </div>
                </div>
                <div class="card">
                    <img src="assets/images/hoteldanang2.jpg" alt="Hotel">
                    <div class="card-content">
                        <div class="tag">Giá tốt nhất</div>
                        <h4>Maois Hotel Đà Nẵng</h4>
                        <div class="rating">8.55/10 (45)</div>
                        <div class="price">1.123.481 VND</div>
                        <div class="old-price">1.155.814 VND</div>
                    </div>
                </div>
                <div class="card">
                    <img src="assets/images/hoteldanang3.jpg" alt="Hotel">
                    <div class="card-content">
                        <div class="tag">Vị trí tốt</div>
                        <h4>HighLand Hotel Đà Nẵng</h4>
                        <div class="rating">9.33/10 (45)</div>
                        <div class="price">6.323.611 VND</div>
                        <div class="old-price">7.115.344 VND</div>
                    </div>
                </div>
                <div class="card">
                    <img src="assets/images/hoteldanang4.jpg" alt="Hotel">
                    <div class="card-content">
                        <div class="tag">Vị trí tốt</div>
                        <h4>Tower Hotel Đà Nẵng</h4>
                        <div class="rating">9.1/10 (45)</div>
                        <div class="price">3.234.412 VND</div>
                        <div class="old-price">4.155.822 VND</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section">
            <div class="section-title">🌍 Ưu đãi 6.6 quốc tế</div>
            <div class="tabs">
                <div class="tab active">Bangkok</div>
                <div class="tab">Phuket</div>
                <div class="tab">Pattaya</div>
                <div class="tab">Singapore</div>
                <div class="tab">Kuala Lumpur</div>
            </div>
            <div class="card-grid">
                <div class="card">
                    <img src="assets/images/hotelbangkok.jpg" alt="Hotel">
                    <div class="card-content">
                        <div class="tag">Mega Deal</div>
                        <h4>Livotel Hotel Bangkok</h4>
                        <div class="rating">9.8/10 (4287)</div>
                        <div class="price">17.890.000 VND</div>
                        <div class="old-price">20.990.000 VND</div>
                    </div>
                </div>
                <div class="card">
                    <img src="assets/images/hotelbangkok2.jpg" alt="Hotel">
                    <div class="card-content">
                        <div class="tag">Mega Deal</div>
                        <h4>Kaset Nawamin Hotel Bangkok</h4>
                        <div class="rating">9.2/10 (4287)</div>
                        <div class="price">14.690.000 VND</div>
                        <div class="old-price">15.780.000 VND</div>
                    </div>
                </div>
                <div class="card">
                    <img src="assets/images/hotelbangkok3.jpg" alt="Hotel">
                    <div class="card-content">
                        <div class="tag">Mega Price</div>
                        <h4>Kaowila Hotel Bangkok</h4>
                        <div class="rating">8.5/10 (4287)</div>
                        <div class="price">10.320.000 VND</div>
                        <div class="old-price">15.890.000 VND</div>
                    </div>
                </div>
                <div class="card">
                    <img src="assets/images/hotelbangkok4.jpg" alt="Hotel">
                    <div class="card-content">
                        <div class="tag">Mega Deal</div>
                        <h4>Miniha Hotel Bangkok</h4>
                        <div class="rating">9.9/10 (4287)</div>
                        <div class="price">22.990.000 VND</div>
                        <div class="old-price">25.980.000 VND</div>
                    </div>
                </div>
            </div>
        </div>
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
