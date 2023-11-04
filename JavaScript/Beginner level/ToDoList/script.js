const taskcontainer = document.querySelector(".task-container")
const input = document.querySelector('#input')
const addtask = document.querySelector('#add-task')

addtask.addEventListener('click',function(){

    let task = document.createElement('div')
    task.classList.add('task')

    let li = document.createElement('li')
    li.innerText = `${input.value}`
    task.appendChild(li);
    //li.classList.add('.task')

    let checkbtn = document.createElement('button')
    checkbtn.innerHTML = `<i class="fa-solid fa-check"></i>`
    checkbtn.classList.add('checktask')
    task.append(checkbtn)

    let delbtn = document.createElement('button')
    delbtn.innerHTML = `<i class="fa-solid fa-trash-can"></i>`
    delbtn.classList.add('deltask')
    task.append(delbtn)

    if(input.value === ""){
        alert("Please Enter Task!!")
    }
    else{
        taskcontainer.appendChild(task)
    }
    input.value = ""

    checkbtn.addEventListener('click',function(){

        checkbtn.parentElement.style.textDecoration = 'line-through'
    })

    delbtn.addEventListener('click', function(e){
        let target = e.target
        target.parentElement.parentElement.remove('.task')
    })
    

})