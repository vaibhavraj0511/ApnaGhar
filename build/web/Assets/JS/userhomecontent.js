const myslide = document.querySelectorAll('.myslider'),
    dot = document.querySelectorAll('.dot');

    let counter = 1;
    slidefun(counter);

    let timer = setInterval(autoslide, 8000);
    
    function autoslide() {
        counter += 1;
        slidefun(counter);
    }

    function plusslides(n) {
        counter += n;
        slidefun(counter);
        resetTimer();
    }

    function currentslide(n) {
        counter = n;
        slidefun(counter);
        resetTimer();
    }

    function resetTimer() {
        clearInterval(timer);
        timer = setInterval(autoslide, 8000);
    }

    function slidefun(n) {
        let i;

        for(i=0; i<myslide.length; i++){
            myslide[i].style.display = "none";
        }

        for(i=0; i<dot.length; i++){
            dot[i].classList.remove('activeslider');
        }

        if(n > myslide.length){
            counter = 1;
        }
        if(n < 1){
            counter = myslide.length;
        }

        myslide[counter - 1].style.display = "block";
        dot[counter - 1].classList.add('activeslider');
    }


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