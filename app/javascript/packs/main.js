/* ========================================== 
scrollTop() >= 300
Should be equal the the height of the header
========================================== */

$(window).scroll(function(){
    if ($(window).scrollTop() >= 100) {
        $('nav').addClass('navbar');
        $('nav div').addClass('sticky-header');
    }
    else {
        $('nav').removeClass('navbar');
        $('nav div').removeClass('sticky-header');
    }
});
