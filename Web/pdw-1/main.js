
document.getElementById('sendButton').addEventListener('click', function(buttonEvent) {

  buttonEvent.preventDefault()

  const nameForm = document.getElementById('nome').value
  const sobrenomeForm = document.getElementById('sobrenome').value
  const cepForm = document.getElementById('cep').value
  const cep2Form = document.getElementById('cep2').value
  const mailForm = document.getElementById('mail').value

  if (nameForm.length == 0) { 
    alert('Insira o Nome para prosseguir')
    return
  }

  if (sobrenomeForm.length == 0) { 
    alert('Insira o Sobrenome para prosseguir')
    return
  }

  if (cepForm.length == 0) { 
    alert('Insira o Endereço para prosseguir')
    return
  }

  if (cep2Form.length == 0) { 
    alert('Insira o Complemento do Endereço para prosseguir')
    return
  }

  if (mailForm.length == 0) { 
    alert('Insira o Email para prosseguir')
    return
  }


  
})