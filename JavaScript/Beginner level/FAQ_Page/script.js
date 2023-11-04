//Selecting FAQ div
const faqContainers = document.getElementsByClassName("content-container");
// for of loop for adding eventlistener to every container element
for (const container of faqContainers) {
    
    container.addEventListener('click', function() {
        //adding change class on click and removing on next click using toggle function
        this.classList.toggle('change');
        console.log(container)
    });
}
