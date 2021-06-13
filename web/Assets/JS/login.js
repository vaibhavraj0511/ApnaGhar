const logininput = document.querySelectorAll('.logininputfield');

function focusFunc(){
    let parent = this.parentNode.parentNode;
    parent.classList.add('focus');
}

function blurFunc(){
    let parent = this.parentNode.parentNode;
    if(this.value == ""){
        parent.classList.remove('focus');
    }
}

logininput.forEach(logininputfield => {
    logininputfield.addEventListener('focus', focusFunc);
    logininputfield.addEventListener('blur', blurFunc);
});