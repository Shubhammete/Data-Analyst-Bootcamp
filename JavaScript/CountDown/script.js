/*Selecting the buttons*/ 
const playbtn = document.querySelector('#playbtn')
const resetbtn = document.querySelector('#resetbtn')
/*Variable initialization for timer  0:0:0*/
let sec = 0;
let min = 0;
let hr = 0;
/*Extended variables for timer display 00:00:00*/
let leadingsec = 0;
let leadingmin = 0;
let leadinghr = 0;

/* Function declaration */
function stopwatch(){
    /*Increment the second counter*/
    sec++
    /*Condition for minutes and hours*/
    if(sec/60 === 1){
        sec = 0;
        min++
   
    if(min/60 === 1){
        min = 0;
        hr++
    }
}

/*Condition To show timer as original 00:00:00 and not 0:0:0 */
if(sec < 10){
    leadingsec = "0"+sec.toString();
}
else{
    leadingsec = sec
}
if(min < 10){
    leadingmin = "0"+min.toString();
}
else{
    leadingmin = min
}
if(sec < 10){
    leadinghr = "0"+hr.toString();
}
else{
    leadinghr = hr
}
/*Showing Timer dispaly*/
let display = document.querySelector('.timer')
display.innerHTML = leadinghr + ":" + leadingmin + ":" + leadingsec;
}
/*timeInterval for calling function and timerStatus as flag*/
let timerInterval = null
let timerStatus = "stopped"

playbtn.addEventListener('click',function(){
/*Condition for starting timer*/
    if(timerStatus === "stopped" ){
        timerInterval = setInterval(stopwatch,1000)
        /*Chainging icon play to pause*/
        document.querySelector('#playbtn').innerHTML = `<i class="fa-solid fa-pause" id="stopbtn"><i>`
        timerStatus = "started"
    }
    else{
        /*Condition to stop timer*/
        clearInterval(timerInterval)
        document.getElementById('playbtn').innerHTML = `<i class="fa-solid fa-play" id="playbtn"<i>`
        timerStatus = "stopped"
    }
})
/*Condition for reset*/
resetbtn.addEventListener('click',function(){

    clearInterval(timerInterval);
    sec = 0;
    hr = 0;
    min = 0;

    document.querySelector('.timer').innerHTML = "00:00:00"
})