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

  Data.push(message)

  document.getElementById('forms1').reset()
  document.getElementById('forms2').reset()
  document.getElementById('forms3').reset()

  console.log("AAAAAAAAAAA", Data)
}

Botao.addEventListener('click', SendData)
