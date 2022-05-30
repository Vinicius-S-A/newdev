const buttonAddMessage = document.getElementById('addButton')



function Send(event){
  event.preventDefault()
const from = document.getElementById('from')
const to = document.getElementById('to')
const msg = document.querySelector('textarea')

if (from.value.length == 0 ) {
alert('O autor deve ser informado')
return
}
if (to.value.length == 0 ) {
  alert('O destinatário deve ser informado')
  return
}
if (msg.value.length == 0 ) {
  alert('A mensagem deve ser informada')
  return
}
  const message = {
    Messagefrom: from.value,
    Messageto: to.value,
    Messagemsg: msg.value
  }
  console.log(message)
  

  const sessionMessages = document.getElementById('section-messages')

  const ul = document.createElement('ul')

  let ull = document.querySelector('ul')
//coloca a child dentro do parent
sessionMessages.appendChild(ul)

const li = document.createElement('li')
ul.appendChild(li)

li.innerHTML = 
`De: ${message.Messagefrom} 
Para: ${message.Messageto} 
Mensagem: ${message.Messagemsg}`

}

buttonAddMessage.addEventListener('click', Send)
