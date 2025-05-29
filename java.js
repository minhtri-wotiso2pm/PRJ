window.onscroll = function () {
    var box = document.getElementById("box");
    var font = document.querySelectorAll(".font-img a, .menu a");
    var button = document.querySelectorAll(".login,.login-wel");
    var logo = document.getElementById("logo-loka");
    var user = document.getElementById("user-logo-login")||document.getElementById("user-logo-wel");

    let isScrolled = window.scrollY > 0;

    if (isScrolled) {
        box.classList.add("white-bg");
        button.forEach(btn => btn.classList.add("white-bg"));
        logo.src = "assets/images/d4969644-5d07-445a-b9ba-b38d158b34ce-removebg-preview.png";
        user.src = "assets/images/user-blue.png";
    } else {
        box.classList.remove("white-bg");
        button.forEach(btn => btn.classList.remove("white-bg"));
        logo.src = "assets/images/logo_white.png";
        user.src = "assets/images/user-white.png";
    }

    for (let i = 0; i < font.length; i++) {
        font[i].style.color = isScrolled ? "black" : "white";
        font[i].classList.remove("hover-black", "hover-white");
        font[i].classList.add(isScrolled ? "hover-white" : "hover-black");
    }
};

function initBookingMenu() {
    const bookingItems = document.querySelectorAll(".booking-item");
    
    for(let i=0; i<bookingItems.length; i++){
        bookingItems[i].addEventListener('click', function() {
            const activeItem = document.querySelector('.booking-item.active');
            
            for(let j=0; j<bookingItems.length; j++){
                bookingItems[j].classList.remove('active');
                const img = bookingItems[j].querySelector('img');
                if(img.id==='hotel'){
                    img.src = "assets/images/logo-hotel.png";
                }else if(img.id==='maybay'){
                    img.src = "assets/images/maybay.png";
                }else{
                    img.src = "assets/images/bus-removebg-preview.png";
                }
            }

            this.classList.add('active');
            
            const activeImg = this.querySelector('img');
            if(activeImg.id==='hotel'){
                activeImg.src = "assets/images/lgoo-hotelclick.png";
            }else if(activeImg.id==='maybay'){
                activeImg.src = "assets/images/maybayclick.png";
            }else{
                activeImg.src = "assets/images/busclick.png";
            }
        });
    }
}

function initBookingHotel() {
    const hotelItems = document.querySelectorAll(".hotelcs");

    hotelItems.forEach(item => {
        item.addEventListener('click', function () {
            // Bỏ class active-hotel khỏi tất cả
            hotelItems.forEach(i => i.classList.remove('active-hotel'));
            // Thêm class active-hotel vào phần tử được click
            this.classList.add('active-hotel');
        });
    });
}

window.onload = function () {
    window.onscroll();
    initBookingMenu(); 
    initBookingHotel();
};
