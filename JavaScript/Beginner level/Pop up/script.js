var button = document.querySelector('#btn');
var modalContainer = document.querySelector('.modalcontainer');
var closebutton = document.querySelector('.closebtn');

button.addEventListener('click', function() {
    modalContainer.style.display = 'block'; // Show the modal container
});

closebutton.addEventListener('click', function() {
    modalContainer.style.display = 'none'; // Hide the modal container
});

window.addEventListener('click',function(e){
    if(e.target === modalContainer){
        modalContainer.style.display = 'none'
    }
})
 
