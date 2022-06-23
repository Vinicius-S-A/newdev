let indx = Number(localStorage.length)




function load(){
  if (localStorage.length > 0){
      const elements = localStorage.childNodes

      for (i in elements){
        const newElement = document.createElement('div')
        const newElementChildtxt = document.createElement('h4')
        const newElementRemoveButton = document.createElement('button')
        newElementRemoveButton.setAttribute('onclick', `remove(this)`)
        newElementChildtxt.style = 'margin-left: 1rem; margin-right: auto; color: #fff'
        newElementRemoveButton.style = 'width: 50px; height: 50px; text-anchor: middle; background-color: rgba(255, 255, 255, 0.5); border: 0px; font-size: 30px'
        newElementRemoveButton.innerHTML = "X"
        newElement.setAttribute('index', i-1)
        newElement.appendChild(newElementChildtxt)
        newElement.appendChild(newElementRemoveButton)
        newElement.style = 'width: 100%; height 100px; border-top: 2px solid #fff; align-items: center;display: flex;'
        newElementChildtxt.innerHTML = localStorage.getItem[i-1].value[0]
        document.getElementById('listHolder').appendChild(newElement)



      
      }
  }
}

function remove(element){
  console.log(element.parentNode.getAttribute.index)
  localStorage.setItem(element.parentNode.getAttribute('index'), "")
  element.parentNode.remove()

}


function insertElmnt(event){
  
  const atvToBeAdded = document.getElementById('formTitle')

  if (atvToBeAdded.value.length > 0){
  const newElement = document.createElement('div')
  const newElementChildtxt = document.createElement('h4')
  const newElementRemoveButton = document.createElement('button')
  newElementRemoveButton.setAttribute('onclick', `remove(this)`)
  newElementChildtxt.style = 'margin-left: 1rem; margin-right: auto; color: #fff'
  newElementRemoveButton.style = 'width: 50px; height: 50px; text-anchor: middle; background-color: rgba(255, 255, 255, 0.5); border: 0px; font-size: 30px'
  newElementRemoveButton.innerHTML = "X"
  newElement.setAttribute('index', indx)
  newElement.appendChild(newElementChildtxt)
  newElement.appendChild(newElementRemoveButton)
  newElement.style = 'width: 100%; height 100px; border-top: 2px solid #fff; align-items: center;display: flex;'
  newElementChildtxt.innerHTML = atvToBeAdded.value
  document.getElementById('listHolder').appendChild(newElement)
  const val = atvToBeAdded.value


  localStorage.setItem(indx, `${atvToBeAdded.value}, ${indx}`)


  atvToBeAdded.value = ""
  indx = indx + 1
  //localStorage.array(atvToBeAdded.value)
  }else{
    alert('Não insira valores nulos');
  }

}





load()
document.getElementById('sendButton').setAttribute('onclick', `insertElmnt()`)