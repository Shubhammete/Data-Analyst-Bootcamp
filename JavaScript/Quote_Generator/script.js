let btn = document.querySelector('#new-quote')
let quote = document.querySelector('.quote')
let person = document.querySelector('.person')
const quotes = [
    {
        quote: "“Will my smart fridge tell my mother about my chocolate cake addiction?”",
        person: "Anonmyous"
    },
    {
        quote: "“For me personally, cloud security isn’t a worry. My data is such a mess that no one would find anything anyway”",
        person: "Anonmyous"
    },
    {
        quote: "In the underworld, reality itself has elastic properties and is capable of being stretched into different definitions of the truth.",
        person: "Anonmyous"
    },
    {
        quote: "In the digital era, privacy must be a priority. Is it just me, or is secret blanket surveillance obscenely outrageous?",
        person: "Anonmyous"
    },
    {
        quote: "What happens in Vegas ends up on YouTube.",
        person: "Anonmyous"
    }   
]

function randomgen(){
    var random = Math.floor(Math.random()*quotes.length)
    return random
}

btn.addEventListener('click',function(){
   var random = randomgen()
    var i = -1;
    if(i != random){
        i = random
        console.log(i)
        quote.innerText = quotes[i].quote
        person.innerText = quotes[i].person
    }
    
})