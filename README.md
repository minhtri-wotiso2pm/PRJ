/* Footer tổng thể */
footer.end {
    background-color: #1a1a1a;
    color: #ffffff;
    padding: 40px 60px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    font-family: Arial, sans-serif;
    font-size: 14px;
    line-height: 1.6;
    margin-top: 30px;
}

/* Mỗi cột trong footer */
footer.end > div {
    flex: 1 1 220px;
    margin: 10px;
}

/* Logo chính */
.end-logo img {
    width: 150px;
    margin-bottom: 20px;
}

/* Phần chứng nhận */
.certificate img {
    width: 50px;
    margin: 5px;
}

/* Hợp tác */
.cooperate {
    margin-top: 10px;
}
.cooperate img {
    width: 20px;
    vertical-align: middle;
    margin-right: 5px;
}

/* Đối tác thanh toán */
.end-1 img {
    width: 40px;
    margin: 4px;
}

/* Danh sách liên kết mạng xã hội */
.end-2 a {
    color: #ffffff;
    text-decoration: none;
    display: inline-block;
    margin: 3px 0;
}

.end-2 a:hover {
    text-decoration: underline;
}

/* Phần tiêu đề mục */
.end-2 p:first-child,
.end-3 p:first-child,
.end-4 p:first-child {
    font-weight: bold;
    margin-bottom: 10px;
}

/* Tải app */
.end-4 img {
    width: 120px;
    margin-top: 10px;
}

/* Responsive nhỏ hơn 768px */
@media (max-width: 768px) {
    footer.end {
        flex-direction: column;
        padding: 30px 20px;
    }
    footer.end > div {
        margin: 15px 0;
    }
}
