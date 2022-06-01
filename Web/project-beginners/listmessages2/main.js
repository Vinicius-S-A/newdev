const buttonAddMessage = document.getElementById('addButton')
let countRow = 0
let lineToBeEdited = null


const onClickEdit = function (lineEditing) {
  lineToBeEdited = lineEditing


  //foreach é uma função que percorre todos os elementos do vetor
  //const tbody = document.getElementById('tbody-messages')
  //lineEditing.childNodes.array.forEach((valor, index) => {
  //   console.log(valor)
  //  console.log(index)
  // })

  //const fromValue = idd.childNodes[0].innerHTML
  //const toValue = idd.childNodes[1].innerHTML
  //const messageValue = idd.childNodes[2].innerHTML

  //desestruturação de arrays ><><><><><><><><

  // console.log('from Value : ', fromValue.innerHTML)
  // console.log('to Value : ', toValue.innerHTML)
  // console.log('message Value : ', messageValue.innerHTML)

  const [fromValue, toValue, messageValue] = lineEditing.childNodes

  document.getElementById('from').value = fromValue.innerHTML
  document.getElementById('to').value = toValue.innerHTML
  document.getElementById('textarea').innerHTML = messageValue.innerHTML



}
const onClickRemove = function (lineEditing) {
  lineEditing.remove()
}

const onClickUp = function (lineEditing) {


}
const onClickDown = function (lineEditing) {


}

function Send(event) {
  event.preventDefault()
  const from = document.getElementById('from')
  const to = document.getElementById('to')
  const msg = document.querySelector('textarea')

  if (from.value.length == 0) {
    alert('O autor deve ser informado')
    return
  }
  if (to.value.length == 0) {
    alert('O destinatário deve ser informado')
    return
  }
  if (msg.value.length == 0) {
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
  const tdButtonRemove = document.createElement('td')
  const tdButtonUp = document.createElement('td')
  const tdButtonDown = document.createElement('td')
  const iconEdit = document.createElement('i')
  iconEdit.setAttribute('class', 'fas fa-edit')
  iconEdit.setAttribute('style', 'cursor:pointer')

  const iconRemove = document.createElement('i')
  iconRemove.setAttribute('class', 'fas fa-trash')
  iconRemove.setAttribute('style', 'cursor:pointer')

const iconUp = document.createElement('i')
iconUp.setAttribute('class', 'fas fa-arrow-up')
iconUp.setAttribute('style', 'cursor:pointer')

const iconDown = document.createElement('i')
iconDown.setAttribute('class', 'fas fa-arrow-down')
iconDown.setAttribute('style', 'cursor:pointer')

  tdButtonEdit.appendChild(iconEdit)
  tdButtonRemove.appendChild(iconRemove)
  tdButtonUp.appendChild(iconUp)
  tdButtonDown.appendChild(iconDown)

  tr.appendChild(tdfrom)
  tr.appendChild(tdto)
  tr.appendChild(tdmsg)
  tr.appendChild(tdButtonEdit)
  tr.appendChild(tdButtonRemove)
  tr.appendChild(tdButtonUp)
  tr.appendChild(tdButtonDown)

  // precisamos indentificar o ID
  tr.setAttribute('id', `line${countRow}`)
  countRow = countRow + 1

  tdButtonEdit.setAttribute(
    'onclick',
    `onClickEdit(${tdButtonEdit.parentElement.id})`
  )

  tdButtonRemove.setAttribute(
    'onclick',
    `onClickRemove(${tdButtonRemove.parentElement.id})`
  )

  tdButtonUp.setAttribute(
    'onclick',
    `onClickUp(${tdButtonUp.parentElement.id})`
  )

  tdButtonDown.setAttribute(
    'onclick',
    `onClickDown(${tdButtonDown.parentElement.id})`
  )

  document.getElementById('form-message').reset()

    if (lineToBeEdited) {
      
      const [fromUpdate, toUpdate, msgUpdate] = lineToBeEdited.childNodes
      fromUpdate.innerHTML = message.Messagefrom
      toUpdate.innerHTML = message.Messageto
      msgUpdate.innerHTML = message.Messagemsg
      lineToBeEdited = null
    }else{
      tbody.appendChild(tr)
    }

}

buttonAddMessage.addEventListener('click', Send)
