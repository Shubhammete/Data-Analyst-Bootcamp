
const input = document.getElementById("input-city")
const submit = document.getElementById("submit")
const content = document.getElementById("content")

submit.addEventListener("click", async ()=>{
    const value = input.value;
    
    let response = await fetch(`http://api.weatherapi.com/v1/current.json?key=941d059b337748fe8cc82417232210&q=${value}&aqi=yes`)
    let data = await response.json()
        content.innerHTML=`<h1>Here's Weather of ${data.location.name}</h1>
                            <p>Weather Condition is ${data.current.condition.text}</p>
                            <img src="${data.current.condition.icon}">`
        content.classList.add("content")
        input.value = ""
})