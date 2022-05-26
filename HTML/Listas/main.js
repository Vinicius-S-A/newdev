const Botao = document.getElementById('buttoon')
const Data = [2][2]

function SendData() {
  event.preventDefault() //Desabilita o evento padrão do elemento
  const inputNameValue = document.getElementById('name').value
  const inputEmailValue = document.getElementById('email').value
  const inputMessageValue = document.getElementById('message').value

  Data

  console.log(
    'Nome:',
    inputNameValue,
    'Email:',
    inputEmailValue,
    'Mensagem:',
    inputMessageValue
  )

  const message = {
    name: inputNameValue,
    email: inputEmailValue,
    message: inputMessageValue
  }

  document.getElementById('forms1').reset()
  document.getElementById('forms2').reset()
  document.getElementById('forms3').reset()
}

Botao.addEventListener('click', SendData)
