const registerinput = document.querySelectorAll('.registerinputfield');

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

registerinput.forEach(registerinputfield => {
    registerinputfield.addEventListener('focus', focusFunc);
    registerinputfield.addEventListener('blur', blurFunc);
});