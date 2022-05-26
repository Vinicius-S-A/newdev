const Botao = document.getElementById('buttoon')
const Data = []

function SendData() {
  event.preventDefault() //Desabilita o evento padrão do elemento
  const inputNameValue = document.getElementById('name').value
  const inputEmailValue = document.getElementById('email').value
  const inputMessageValue = document.getElementById('message').value


  const message = {
    name: inputNameValue,
    email: inputEmailValue,
    message: inputMessageValue
  }
  if (Data.length < 3){
  Data.push(message)
  }else{
    alert("vetor cheio")
  }

  document.getElementById('forms1').reset()
  document.getElementById('forms2').reset()
  document.getElementById('forms3').reset()

  console.log("Data", Data)
}

Botao.addEventListener('click', SendData)
