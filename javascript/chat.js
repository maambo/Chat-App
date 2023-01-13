const form =document.querySelector(".typing-area"),
inputField = form.querySelector(".input-field"),
sendBtn = form.querySelector("button"),
chatBox = document.querySelector(".chat-box");

form.onsubmit=(e)=>{
    e.preventDefault();
}
sendBtn.onclick = ()=>{
    let xhr = new XMLHttpRequest(); //creating xml object
    xhr.open("POST", "./php/insert-chat.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
               inputField.value =""; //once the msg inderted in the database it will leave blank the input field
               scrollToBottom();
            }
        }
    } 
    let formData =new FormData(form);
    xhr.send(formData);
}

chatBox.onmouseenter = ()=>{
    chatBox.classList.add("active");
}
chatBox.onmouseleave = ()=>{
    chatBox.classList.remove("active");
}

setInterval(()=>{
    let xhr = new XMLHttpRequest(); //creating xml object
    xhr.open("POST", "./php/get-chat.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response; 
                chatBox.innerHTML = data;
                if(!chatBox.classList.contains("active")){ // if active class not contains in chatbox the 
                    scrollToBottom();
                }
                               
            }
        }
    }
    let formData =new FormData(form);
    xhr.send(formData); 
}, 500); //this fuction will run every 500ms to refresh data

function scrollToBottom(){
    chatBox.scrollTop = chatBox.scrollHeight;
}