window.onscroll = function () {
    var box = document.getElementById("box");
    var font = document.querySelectorAll(".font-img a, .menu a");
    var button = document.querySelectorAll(".login,.login-wel");
    var logo = document.getElementById("logo-loka");
    var user = document.getElementById("user-logo-wel") || document.getElementById("user-logo-login");

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

// Gọi ngay sau khi trang load
window.onload = function () {
    window.onscroll();
};
