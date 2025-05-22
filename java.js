window.onscroll = function(){
    var box = document.getElementById("box");
    var font = document.querySelectorAll(".font-img p,.menu a");
    var button = document.querySelector(".login");
    var logo = document.getElementById("logo-loka");
    var user = document.getElementById("user-logo");
    if(window.scrollY>0){
        box.classList.add("white-bg");
        button.classList.add("white-bg");
        logo.src = "assets/images/d4969644-5d07-445a-b9ba-b38d158b34ce-removebg-preview.png";
        user.src = "assets/images/user-blue.png";
        for(var i=0;i<font.length;i++){
            font[i].style.color = "black" 
        }
    }else{
        box.classList.remove("white-bg");
        button.classList.remove("white-bg");
        logo.src = "assets/images/logo_white.png";
        user.src = "assets/images/user-white.png";
        for(var i=0;i<font.length;i++){
            font[i].style.color = "white" 
        }
    }
};