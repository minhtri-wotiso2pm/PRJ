/*
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/css.css to edit this template
*/
/* 
    Created on : May 30, 2025, 4:39:47 PM
    Author     : nzero
*/
.header{
    display: flex;
    justify-content:  space-between;
    vertical-align: top;
    text-align: center;
    margin: 5px 0px;
}

#box{
    transition: background-color 0.3s ease;
}

.interface {
    width:100%; 
    height: 500px; /* hoặc dùng min-height nếu cần linh hoạt */
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}

.logo{
    padding-left: 30px;
}

.logo img{
    width: 150px;
}

.menu-header{
    display: flex;
    justify-content: space-between;
    font-family: sans-serif;
}

.font-img{
    display: flex;
    padding: 2px 10px;
    vertical-align: middle;
    margin-top: 2px;
}

.font-img a{
    text-decoration: none;
    padding: 10px;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
    color: white;
}

.font-img img,.discount img{
    width: 20px;
    height: auto;
    vertical-align: middle;
}

.button{
    display: flex;
    align-items: center;
    margin-right: 30px;
}

.button a.login,
.login-wel{
    border: 1px solid #fff;
    font-size: 14px;
    display: inline-flex;       
    align-items: center;   
    padding: 8px;
    border-radius: 6px;
    font-weight: bold;
    cursor: pointer;
    text-decoration: none;
    transition: background-color 0.3s ease, color 0.3s ease;
}


.login,.login-wel{
    background-color: transparent;
    color: white;
}

.register {
    padding: 10px;
    color: white;
    border: 1px solid #007BFF;
    background-color: #007BFF;
    text-decoration: none;
    border-radius: 4px;
    font-weight: bold;
    margin-left: 4px;
}

.button img{
    width: 35px;
    height: auto;
    vertical-align: middle;
}

.task-header{
    border: 1px solid;
    background-color: #c69165;
    border-radius: 10px 10px 0px 0px;
}

.task-header img{
    width: 20px;
    height: auto;
    vertical-align: middle;
}

.dropdown-menu {
  position: absolute;
  top: 57%;
  right: 0;
  background: rgba(255, 255, 255, 0.95);
  border-radius: 10px;
  padding: 15px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  display: none;
  width: 300px;
  margin-right: 28px;
}

.dropdown-menu.show {
  display: block;
}

.dropdown-menu ul {
  list-style: none;
  padding: 0;
  margin: 8px 0px;
}

.dropdown-menu ul li {
  display: flex;
  align-items: center;
  padding: 8px 10px;
  font-size: 14px;
  color: #333;
  border: 1px solid #ddd;
  background-color: rgba(255, 255, 255, 0.85);
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  margin-bottom: 8px;
  box-sizing: border-box;
  cursor: pointer;
}

.dropdown-menu ul li:hover{
    background-color: #f2f3f3;
}

.dropdown-menu ul li img{
    width: 20px;
    height: auto;
    vertical-align: middle;
    margin-right: 10px;
}

.dropdown-menu ul li a {
  text-decoration: none;
  color: #333;
  display: flex;
  align-items: center;
}

.menu{
    padding-top: 10px;
    padding-left: 22px;
    padding-bottom: 10px;
}

.border{
    border-block: 1px solid #68717640;
}

.menu a{
    text-decoration: none;
    padding: 10px;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
    font-family: sans-serif;
    color: white;
}

.font-img a, .menu a {
    transition: all 0.3s ease;
    color: white;
    text-decoration: none;
    font-weight: bold;
    padding: 10px;
}

.font-img a:hover,
.login-wel:hover,
.menu a:hover {
    background-color: rgba(255,255,255,0.1);
    transform: scale(1.03);
    color: #f0f0f0;
}

/* Tuỳ chọn override */
.font-img a.hover-black:hover,
.menu a.hover-black:hover,
.login-wel.hover-black:hover {
    background-color: #00000040;
}

.font-img a.hover-white:hover,
.menu a.hover-white:hover,
.login-wel.hover-white:hover {
    background-color: #f2f3f3;
    color: black;
}

.white-bg {
    background-color: white !important;
    color: black;
    transition: background-color 0.3s ease;
}

.grey-bg{
    background-color: #0D2C54;
}

.text-black {
    color: black !important;
}

.text-white {
    color: white !important;
}



.header-contain {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: transparent;
}

.booking-menu {
  display: flex;
  gap: 20px;
  padding-top: 115px;
  padding-bottom: 10px;
  background: transparent;
  justify-content: center;
  text-align: center;
  border-bottom: 1px solid #fff;
  margin: 0px 38px;
}

/* Thay thế a.booking-item bằng button.booking-item */
.booking-item {
  background: none;
  border: none;
  font-family: sans-serif;
  font-weight: bold;
  color: #E1E3E6;
  padding: 8px 15px;
  border-radius: 30px;
  display: flex;
  align-items: center;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.booking-item img {
  width: 30px;
  margin-right: 8px;
}

.booking-item.active {
  background-color: white;
  color: #03121a;
  border: 1px solid #fff;
}

.booking-item:not(.active):hover {
  background-color: rgba(255,255,255,0.1);
  color: white;
}

/* Tương tự với .hotelcs */
.hotelcs,.flightcs,.buscs {
  background: none;
  border: none;
  display: flex;
  align-items: center;
  font-family: sans-serif;
  font-size: 14px;
  gap: 6px;
  padding: 3px 7px;
  border-radius: 30px;
  background-color: #03121a4d;
  color: white;
  font-weight: bold;
  cursor: pointer;
  margin: 5px;
  transition: background-color 0.3s ease;
}

.active-content {
  background-color: #0194f3;
  color: white;
}

.hotelcs img {
  width: 25px;
}

.tab-content {
  display: none;
  margin: 10px 0px 0px 35px;
}

.tab-content.active {
  display: flex;
}

/* RESET */
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

.search-bar {
  width: 100%;
  padding: 20px;
  display: flex;
  justify-content: center;
  background: transparent;
}

.search-bar form {
  display: flex;
  width: 100%;
  max-width: 1200px;
  background-color: white;
  border-radius: 50px;
  overflow: hidden;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

/* Các mục tìm kiếm */
.search-group {
  display: flex;
  flex-direction: column;
  justify-content: center;
  flex: 1;
  padding: 10px 20px;
  border-right: 1px solid #ddd;
}

.search-group:last-child {
  border-right: none;
}

/* Label hiển thị */
.search-group label {
  font-size: 14px;
  font-weight: 600;
  color: #333;
  margin-bottom: 5px;
}

/* Input và icon */
.input-container {
  display: flex;
  align-items: center;
  background-color: white;
  border-radius: 30px;
  padding: 8px 12px;
}

.input-container img {
  width: 20px;
  height: 20px;
  margin-right: 8px;
}

.input-container input {
  border: none;
  outline: none;
  font-size: 15px;
  width: 100%;
  background: transparent;
  color: #333;
}

/* Nút tìm kiếm */
.search-button {
  background-color: #ff5a00;
  border: none;
  padding: 0 30px;
  border-top-right-radius: 50px;
  border-bottom-right-radius: 50px;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}

.search-button img {
  width: 24px;
  height: 24px;
}

.image-container {
    display: flex;
    justify-content: center; /* căn giữa toàn bộ nội dung */
    gap: 30px; /* khoảng cách giữa hai ảnh, chỉnh số tùy ý */
    margin-top: 50px; /* tùy chỉnh thêm nếu cần căn giữa theo chiều dọc */
}

.image-container img {
    width: 600px;
    border-radius: 10px;
    height: auto;
}

.content-sale {
    width: 100%;
    display: block;
    justify-content: center; /* Căn giữa phần tử h1 */
    padding-top: 40px;
}

.content-sale h1 {
    font-size: 24px;
    font-weight: 900;
    line-height: 28px;
    width: 80%;
    text-align: left;       /* Căn chữ về bên trái trong khối h1 */
    padding-left: 10px;
    margin:0 130px;              /* Xóa margin mặc định nếu cần */
}

.content-sale p{
    width: 80%;
    margin:-5px 130px;
    padding-left: 10px;
    text-align: left;
    font-weight: 600;
    color: gray;
    line-height: 24px;
}

.content-sale-choice {
    width: 80%;
    padding-left: 125px; /* Căn lề trái */
    padding-top: 30px;
}

.nav.navbar-nav {
    list-style: none;
    width: 100%;
    display: flex;
    padding: 0;
    margin: 0;
    gap: 20px; /* khoảng cách giữa các mục */
}

.nav.navbar-nav li {
    display: inline;
}

.nav.navbar-nav li a {
    text-decoration: none;
    color: #333;
    font-weight: 600;
    padding: 8px 12px;
    border-radius: 4px;
    transition: background-color 0.3s;
}

.nav.navbar-nav li a:hover,
.nav.navbar-nav li.active a {
    background-color: #f2f2f2;
    color: #007BFF;
}

body {
  font-family: Arial, sans-serif;
  background: #f7f9fc;
  margin: 0;
}

.container {
  max-width: 82%;
  margin: auto;
}

h2 {
  color: #1e88e5;
}

.tabs {
  margin: 20px 0;
}

.tab {
  padding: 8px 16px;
  background: #e0e0e0;
  border: none;
  margin-right: 5px;
  cursor: pointer;
  border-radius: 20px;
}

.tab.active {
  background: #1e88e5;
  color: white;
}

.voucher-list {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 16px;
}


.voucher {
  background: white;
  padding: 15px;
  border-radius: 10px;
  border: 1px solid #ddd;
  flex: 1 1 250px;
  position: relative;
}

.voucher .tag {
  position: absolute;
  top: -10px;
  left: -10px;
  background: orange;
  color: white;
  padding: 2px 6px;
  font-size: 12px;
  border-radius: 4px;
}

.code {
  margin-top: 10px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.code button {
  padding: 4px 10px;
  border: none;
  background: #90caf9;
  border-radius: 5px;
  cursor: pointer;
}

.btn-more {
  margin-top: 20px;
  padding: 10px 20px;
  background: #1e88e5;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}

.footer {
    background-color: #1c2930;
    color: #ffffff;
    font-family: Arial, sans-serif;
    padding: 40px 30px;
  }

.footer-col-1{
    margin-right: -20px;
}
  
.footer-container {
    display: flex;
    justify-content: space-between;
}
  
.footer-logo {
    width: 180px;
    margin-bottom: 20px;
}
  
.certificates img {
    height: 40px;
    margin-right: 10px;
    margin-bottom: 10px;
}
  
.cooperate {
    display: flex;
    align-items: center;
    background-color: #354148;
    padding: 10px 14px;
    border-radius: 10px;
    margin: 10px 0;
    width: fit-content;
}
  
.cooperate img {
    width: 30px;
    margin-right: 10px;
}
  
.partner p {
    font-weight: bold;
    margin: 10px 0 5px;
    padding-top: 2%;
}
  
.payment-logos img {
    background-color: #fff;
    border-radius: 8px;
    padding: 2px 6px;
    margin: 2px;
    width: 60px;
    height: 45px;
    object-fit: contain;
}
  
.footer-title {
    font-weight: bold;
    margin-top: 15px;
    margin-bottom: 10px;
}

.footer-title-1 {
    font-weight: bold;
    margin-top: 15px;
    margin-bottom: 10px;
    margin-top: 50px;
}
  
.footer-col ul {
    list-style: none;
    padding: 0;
    margin: 0 0 15px 0;
}
  
.footer-col ul li {
    margin: 15px 0px;
    color: #b0b8bc;
    font-weight: 400;
    font-size: 14px;
}
  
.footer-col a{
    text-decoration: none;
    color: #b0b8bc;
}
  
.app-download img {
    width: 140px;
    margin-right: 10px;
    margin-top: 10px;
}  
