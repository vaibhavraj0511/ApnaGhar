const showMenu = (headerToggle, navbarId) =>{
    const toggleBtn = document.getElementById('header-toggle'),
    nav = document.getElementById('navbar')

    if(headerToggle && navbarId){
        toggleBtn.addEventListener('click', ()=>{
            nav.classList.toggle('show-menu')

            toggleBtn.classList.toggle('bx-x')
        })
    }
}

showMenu('header-toggle','navbar')

/*Active Link */
const linkColor = document.querySelectorAll('.nav__link')

function colorLink(){
    linkColor.forEach(l => l.classList.remove('active'))
    this.classList.add('active')
}

linkColor.forEach(l => l.addEventListener('click', colorLink))