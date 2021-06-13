/*--Show Menu(ToggleMenu)--*/
const showMenu = (toggleId,navId) =>{
    const toggle = document.getElementById(toggleId),
    nav = document.getElementById(navId)

    if(toggle && nav){
        toggle.addEventListener('click', ()=>{
            nav.classList.toggle('show-menu')
        })
    }
}
showMenu('nav-toggle','nav-menu')

/*--Remove Menu Mobile--*/
const navLink = document.querySelectorAll('.nav__link')

function linkAction(){
    const navMenu = document.getElementById('nav-menu')
    navMenu.classList.remove('show-menu')
}
navLink.forEach(n => n.addEventListener('click', linkAction))

/*--Scroll Sections Active Link--*/
const sections = document.querySelectorAll('section[id]')

function scrollActive(){
    const scrollY = window.pageYOffset
    
    sections.forEach(current =>{
        const sectionHeight = current.offsetHeight
        const sectionTop = current.offsetTop - 50
        sectionId = current.getAttribute('id')

        if(scrollY > sectionTop && scrollY <= sectionTop + sectionHeight){
            document.querySelector('.nav__menu a[href*=' + sectionId + ']').classList.add('active-link')
        }else{
            document.querySelector('.nav__menu a[href*=' + sectionId + ']').classList.remove('active-link')
        }
    })
}
window.addEventListener('scroll', scrollActive)
/*--Change Background Header--*/
function scrollHeader(){
    const header = document.getElementById('header')
    if(this.scrollY >= 200) header.classList.add('scroll-header'); else header.classList.remove('scroll-header')
}
window.addEventListener('scroll', scrollHeader)

/*Slider*/
//JS for about-Slider
var slides = document.querySelectorAll('.aboutimgslide');
var slideBtn = document.querySelectorAll('.aboutnavbtn');

let currentSlide = 1;

//JS for Manual slide
var manualSlide = function(slidemanual){
    slides.forEach((aboutimgslide) => {
        aboutimgslide.classList.remove('aboutactiveslide');

        slideBtn.forEach((aboutnavbtn) =>{
            aboutnavbtn.classList.remove('aboutactiveslide');
        });
    });   

    slides[slidemanual].classList.add('aboutactiveslide');
    slideBtn[slidemanual].classList.add('aboutactiveslide');
}

slideBtn.forEach((aboutnavbtn, i) => {
    aboutnavbtn.addEventListener("click", () => {
        manualSlide(i);
        currentSlide = i;
    });
});

//Js for autoplay
var repeat = function(activeClass) {
    let aboutactiveslide = document.getElementsByClassName('aboutactiveslide');
    let i = 1;

    var repeater = () =>{
        setTimeout(function(){
            [...aboutactiveslide].forEach((activeSlide) => {
                activeSlide.classList.remove('aboutactiveslide');
            });

            slides[i].classList.add('aboutactiveslide');
            slideBtn[i].classList.add('aboutactiveslide');
            i++;

            if(slides.length == i){
                i = 0;
            }
            if(i >= slides.length){
                return;
            }
            repeater();
        }, 5000);
    }
    repeater();
}
repeat();

//Slider Service

$(document).ready(function() {
    $('#autoWidth').lightSlider({
        autoWidth:true,
        loop:true,
        onSliderLoad: function() {
            $('#autoWidth').removeClass('cs-hidden');
        }
    });
});