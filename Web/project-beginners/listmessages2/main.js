const buttonAddMessage = document.getElementById('addButton')
let countRow = 0

const onClickEdit = function(idd) {

  


}

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

const tbody = document.getElementById('tbody-messages')
const tr = document.createElement('tr')
/////////////////////////////////////// TDS
const tdfrom = document.createElement('td')
tdfrom.innerHTML = message.Messagefrom

const tdto = document.createElement('td')
tdto.innerHTML = message.Messageto

const tdmsg = document.createElement('td')
tdmsg.innerHTML = message.Messagemsg


///////////////////////////////////////
const tdButtonEdit = document.createElement('td')







const iconEdit = document.createElement('i')
iconEdit.setAttribute('class', 'fas fa-edit')
iconEdit.setAttribute('style', 'cursor:pointer')

const iconRemove = document.createElement('i')
iconRemove.setAttribute('class', 'fas fa-trash')
iconRemove.setAttribute('style', 'cursor:pointer')
tdButtonEdit.appendChild(iconEdit)

tdButtonEdit.appendChild(iconRemove)


tr.appendChild(tdfrom)
tr.appendChild(tdto)
tr.appendChild(tdmsg)
tr.appendChild(tdButtonEdit)

//tdButtonEdit.setAttribute('onclick', `onClickEdit(${tdButtonEdit.parentNode})`)

// precisamos indentificar o ID
tr.setAttribute('id', countRow)
countRow = countRow + 1
tdButtonEdit.setAttribute('onclick', `onClickEdit(${tdButtonEdit.parentNode.id})`)


tbody.appendChild(tr)


}

buttonAddMessage.addEventListener('click', Send)
