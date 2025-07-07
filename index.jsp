<%-- 
    Document   : wellcome
    Created on : May 23, 2025, 10:21:01 AM
    Author     : nzero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="utils.AuthUtils"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="currentUser" value="${sessionScope.user}"/>
<c:set var="isLoggin" value="${not empty currentUser}"/>
<c:set var="isAdmin" value="${currentUser.roleID eq 'AD'}"/>
<c:set var="listDiscount" value="${sessionScope.listDiscount}"/>
<c:set var="hasDiscount" value="${fn:length(listDiscount)}"/>
<c:set var="listHotel" value="${sessionScope.listHotel}"/>
<c:set var="hasHotel" value="${fn:length(listHotel)}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="assets/css/welcome.css"/>
    </head>
    <body>
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
                            <c:choose>
                                <c:when test="${isLoggin}">
                                    <div class="login-wel" onclick="toggleDropdown()">
                                        <img src="assets/images/img-login (1).png" alt="Avatar">
                                        <span>${currentUser.fullName}</span>
                                    </div>
                                    <div class="dropdown-menu" id="menu">
                                        <div class="task-header">
                                            <h3>${currentUser.userName}</h3> 
                                            <h4>
                                                <img src="assets/images/hchuong-removebg-preview.png" alt="Medal Icon"/>
                                                Bronze Priority
                                            </h4>
                                        </div>
                                        <ul>
                                            <li><img src="assets/images/account-removebg-preview.png" alt="account"/> Chỉnh sửa hồ sơ</li>
                                            <li><img src="assets/images/ds-removebg-preview.png" alt="list"/> Danh sách giao dịch</li>
                                            <li><img src="assets/images/book-removebg-preview.png" alt="your bookingh"/> Đặt chỗ của tôi</li>
                                            <li><img src="assets/images/thongbao-removebg-preview.png" alt="notion"/> Thông báo giá vé máy bay</li>
                                            <li><img src="assets/images/dis-removebg-preview.png" alt="discout"/> Khuyến mãi</li>
                                            <li>
                                                <a href="MainController?action=logout">
                                                    <img src="assets/images/logout-removebg-preview.png" alt="logout"> Đăng xuất
                                                </a>
                                            </li>
                                            <c:if test="${isAdmin}">
                                                <li>
                                                    <a href="hotelForm.jsp">
                                                        Thêm khách sạn
                                                    </a>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <a class="login" href="login.jsp">
                                        <img id="user-logo-login" src="assets/images/user-white.png" alt="login icon">
                                        Đăng nhập
                                    </a>
                                    <a class="register" href="userForm.jsp">Đăng ký</a>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
                <div class="menu">
                    <a href="#">Khách sạn</a>
                    <a href="plane.jsp">Vé máy bay</a>
                </div>
            </div>
            <div class="booking-menu">
                <button class="booking-item" data-tab="hotel-bk">
                    <img src="assets/images/logo-hotel.png" id="hotel" alt="Khách sạn">
                    Khách sạn
                </button>
                <button class="booking-item active" data-tab="flight-bk">
                    <img src="assets/images/maybayclick.png" id="maybay" alt="Vé máy bay">
                    Vé máy bay
                </button>
            </div>


            <div class="tab-content" id="hotel-bk">
                <button class="hotelcs active-content">
                    <img src="assets/images/lgoo-hotelclick (1).png" alt="Khách sạn">
                    Khách sạn
                </button>
                <button class="hotelcs">
                    <img src="assets/images/lgoo-hotelclick (1).png" alt="Biệt thự">
                    Biệt thự
                </button>
            </div>

            <div class="tab-content active" id="flight-bk">
                <button class="flightcs active-content">Một chiều</button>
                <button class="flightcs">Nhiều thành phố</button>
            </div>

            <div class="search-hotel">
                <div class="form-bar">
                    <p id="hn">Thành phố hoặc tên khách sạn:</p>
                    <p>Ngày nhận phòng:</p>
                    <p>Ngày trả phòng:</p> 
                    <p>Khách và Phòng:</p>
                </div>

                <div class="search-bar">
                    <form action="MainController" method="get">
                        <input type="hidden" name="action" value="filterRoom">
                        <div class="search-group-1">
                            <img src="assets/images/location-removebg-preview.png" alt="Location icon" />
                            <input type="text" name="keyword" id="keyword" placeholder="Thành phố, khách sạn, điểm đến" required="required" />
                        </div>

                        <div class="search-group-2">
                            <img src="assets/images/lịch-removebg-preview.png" alt="Calendar icon" />
                            <input type="date" id="checkin" name="checkin" required="required"/>
                        </div>

                        <div class="search-group-3">
                            <img src="assets/images/lịch-removebg-preview.png" alt="Calendar icon" />
                            <input type="date" id="checkout" name="checkout" required="required"/>
                        </div>

                        <div class="search-group-4">
                            <img src="assets/images/lịch-removebg-preview.png" alt="Calendar icon" />
                            <input type="text" name="condition" id="condition" placeholder="2 người lớn, 0 Trẻ em, 1 phòng" />
                        </div>

                        <button class="search-button" type="submit">
                            <img src="assets/images/search (1).png" alt="Search icon"/>
                        </button>
                    </form>
                </div>
            </div>
            <div class="search-plane active">
                <div class="form-plane">
                    <div class="form-place">
                        <p>Từ:</p>
                        <p>Đến:</p>
                    </div>
                    <div class="form-date">
                        <p id="kh">Ngày khởi hành:</p>
                        <p><input type="checkbox">Khứ hồi:</p>
                    </div>
                </div>

                <div class="input-plane">
                    <form action="MainController" method="get">
                        <div class="search-place">
                            <div class="search-plane-1">
                                <img src="assets/images/image-removebg-preview (1).png" alt="plane icon" />
                                <input type="text" value="Jakarta (JKTA)" required="required" />
                            </div>

                            <div class="search-plane-2">
                                <img src="assets/images/image-removebg-preview (2).png" alt="plane icon" />
                                <input type="text" value="Bali (DPS)" required="required"/>
                            </div>
                        </div>

                        <div class="book-plane">
                            <div class="search-plane-3">
                                <img src="assets/images/lịch-removebg-preview.png" alt="Calendar icon" />
                                <input type="date" id="checkin-plane" name="checkin-plane" required="required"/>
                            </div>

                            <div class="search-plane-4">
                                <img src="assets/images/lịch-removebg-preview.png" alt="Calendar icon" />
                                <input type="date" id="checkout-plane" name="checkout-plane" required="required"/>
                            </div>
                        </div>

                        <div class="button-search">
                            <button class="search-img" type="submit">
                                <img src="assets/images/search (1).png" alt="Search icon"/>
                            </button>
                        </div>
                    </form>
                </div>
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
            </div>

            <div class="voucher-list">
                <c:choose>
                    <c:when test="${hasDiscount==0}">
                        <p>Doesn't have any voucher</p>
                    </c:when>
                    <c:when test="${hasDiscount>0}">
                        <c:forEach var="d" items="${listDiscount}">
                            <div class="voucher">
                                <div class="voucher-header">
                                    <h4>${d.discount_title}</h4>
                                </div>
                                <p>${d.description}</p>
                                <div class="code">
                                    <div class="code-icon">
                                        <span>📋</span>
                                    </div>
                                    <span>${d.discountCode}</span>
                                    <button onclick="copyCode(this)">Copy</button>
                                </div>
                            </div>
                        </c:forEach>
                    </c:when>
                </c:choose>
            </div>
        </div>

        <div class="hotel">
            <div class="section">
                <div class="section-title">✨ Ưu đãi 6.6 nội địa</div>
                <div class="tabs">
                    <div class="tab active">Đà Nẵng</div>
                    <div class="tab">Tp. Hồ Chí Minh</div>
                </div>
                <div class="card-grid">
                    <c:choose>
                        <c:when test="${hasHotel==0}">
                            <p>Doesn't have any Hotel</p>
                        </c:when>
                        <c:when test="${hasHotel>0}">
                            <c:forEach var="h" items="${listHotel}">
                                <div class="card">
                                    <img src="${h.imageURL}">
                                    <div class="card-content">
                                        <h4>${h.name}</h4>
                                        <div class="rating">${h.rate}/10</div>
                                        <div class="price">${h.price} VND</div>
                                        <div class="old-price">${h.price} VND</div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:when>
                    </c:choose>
                </div>
            </div>

            <div class="section">
                <div class="section-title">🌍 Ưu đãi 6.6 quốc tế</div>
                <div class="tabs">
                    <div class="tab active">Bangkok</div>
                    <div class="tab">Phuket</div>
                </div>
                <div class="card-grid">
                    <div class="card">
                        <img src="assets/images/hotelbangkok.png" alt="Hotel">
                        <div class="card-content">
                            <div class="tag">Mega Deal</div>
                            <h4>Livotel Hotel Bangkok</h4>
                            <div class="rating">9.8/10 (4287)</div>
                            <div class="price">17.890.000 VND</div>
                            <div class="old-price">20.990.000 VND</div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="assets/images/hotelbangkok2.png" alt="Hotel">
                        <div class="card-content">
                            <div class="tag">Mega Deal</div>
                            <h4>Kaset Nawamin Hotel Bangkok</h4>
                            <div class="rating">9.2/10 (4287)</div>
                            <div class="price">14.690.000 VND</div>
                            <div class="old-price">15.780.000 VND</div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="assets/images/hotelbangkok3.png" alt="Hotel">
                        <div class="card-content">
                            <div class="tag">Mega Price</div>
                            <h4>Kaowila Hotel Bangkok</h4>
                            <div class="rating">8.5/10 (4287)</div>
                            <div class="price">10.320.000 VND</div>
                            <div class="old-price">15.890.000 VND</div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="assets/images/hotelbangkok4.png" alt="Hotel">
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
        <script src="assets/js/welcome.js"></script>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
