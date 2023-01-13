const form = document.querySelector(".signup form"),
continueBtn = form.querySelector(".button input"),
errorText = form.querySelector(".error-txt");

form.onsubmit = (e)=>{
    e.preventDefault();
}
continueBtn.onclick = ()=>{
    let xhr = new XMLHttpRequest(); //creating xml object
    xhr.open("POST", "./php/signup.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                let results = 1; 
                if(data == results){
                    location.href="Users.php";
                }
                else{
                    errorText.style.display = "block";
                    errorText.textContent = data;
                }
            }
        }
    }
    // sending data to php
    let formData = new FormData(form);
    xhr.send(formData);// sending the form data to php

}