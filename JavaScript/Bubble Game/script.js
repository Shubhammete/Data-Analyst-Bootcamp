let time = 60
let score = 0
let hit = 0
let createBubbles = ()=>{
let bubbles = ``
for(let i = 1;i<=56;i++){
    let randomNo = Math.floor(Math.random()*10)
    bubbles +=`<div class="bubble">${randomNo}</div>`
}
document.querySelector('.panelbottom').innerHTML= bubbles
}

let timer = ()=>{
    
    let timefxn = setInterval(()=>{
        if(time>0){
        time--
        document.querySelector('.timer').innerHTML = time
        }else{
            clearInterval(timefxn)
            document.querySelector('.panelbottom').innerHTML = ""
        }
    },1000)

} 

let setHit = ()=>{
    hit = Math.floor(Math.random()*10)
    document.querySelector('.hit').innerHTML=hit
}

let increaseScore = ()=>{
    score += 10 
    document.querySelector('.score').textContent = score
}


    document.querySelector('.panelbottom').addEventListener('click',(e)=>{
        let no = Number(e.target.textContent)
        if(hit == no){
            increaseScore()
            setHit()
            createBubbles()
        }
    })

setHit()
timer()
createBubbles()
