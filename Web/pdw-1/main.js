const storage = localStorage

let names=[]
let lastnames=[]
let cep=[]
let cep2=[]
let mails=[]
let quantidadeDeCadastros = 4
localStorage.setItem('Qnt cadastros', quantidadeDeCadastros)




if (Number(quantidadeDeCadastros) == 0){

localStorage.setItem('names', names)
localStorage.setItem('lastnames', lastnames)
localStorage.setItem('cep', cep)
localStorage.setItem('cep2', cep2)
localStorage.setItem('mails', mails)
localStorage.setItem('Qnt cadastros', quantidadeDeCadastros)


}else{

  const getnames = localStorage.getItem('names');
  const getnames2 = JSON.parse(getnames)

  const getlastnames = localStorage.getItem('lastnames');
  const getlastnames2 = JSON.parse(getlastnames)

  const getcep = localStorage.getItem('cep');
  const getcep2 = JSON.parse(getcep)

  const getcepDos = localStorage.getItem('cep2');
  const getcepDos2 = JSON.parse(getcepDos)

  const getmail = localStorage.getItem('mails');
  const getmail2 = JSON.parse(getmail)


  names.push(localStorage.getItem('names'))
  lastnames.push(localStorage.getItem('lastnames'))
  cep.push(localStorage.getItem('cep'))
   cep2.push(localStorage.getItem('cep2'))
   mails.push(getmail2)

  console.log(names)
  for(var i =0; i <= quantidadeDeCadastros-1; i++){




      const ul = document.createElement('ul')
      const h4 = document.createElement('h3')
      const li1 = document.createElement('li')
      li1.innerHTML = getnames2[i]
      const li2 = document.createElement('li')
      li2.innerHTML = getlastnames2[i]
      const li3 = document.createElement('li')
      li3.innerHTML = getcep2[i]
      const li4 = document.createElement('li')
      li4.innerHTML = getcepDos2[i]
      const li5 = document.createElement('li')
      li5.innerHTML = getmail2[i]
  
      h4.innerHTML = i+1
      ul.appendChild(li1)
      ul.appendChild(li2)
      ul.appendChild(li3)
      ul.appendChild(li4)
      ul.appendChild(li5)
  
      document.getElementById('cadastros').appendChild(h4)
      document.getElementById('cadastros').appendChild(ul)


  }
  
}


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

  names.push(nameForm)
  lastnames.push(sobrenomeForm)
  cep.push(cepForm)
  cep2.push(cep2Form)
  mails.push(mailForm)
  localStorage.setItem('names', JSON.parse(names));
  localStorage.setItem('lastnames', JSON.parse(lastnames));
  localStorage.setItem('cep', JSON.parse(cep));
  localStorage.setItem('cep2', JSON.parse(cep2));
  localStorage.setItem('mails', JSON.parse(mails));

  if(names.length) {
    const ul = document.createElement('ul')
    const h4 = document.createElement('h3')
    const li1 = document.createElement('li')
    li1.innerHTML = names[quantidadeDeCadastros]
    const li2 = document.createElement('li')
    li2.innerHTML = lastnames[quantidadeDeCadastros]
    const li3 = document.createElement('li')
    li3.innerHTML = cep[quantidadeDeCadastros]
    const li4 = document.createElement('li')
    li4.innerHTML = cep2[quantidadeDeCadastros]
    const li5 = document.createElement('li')
    li5.innerHTML = mails[quantidadeDeCadastros]

    h4.innerHTML = quantidadeDeCadastros
   // ul.appendChild(h4)
    ul.appendChild(li1)
    ul.appendChild(li2)
    ul.appendChild(li3)
    ul.appendChild(li4)
    ul.appendChild(li5)

    document.getElementById('cadastros').appendChild(h4)
    document.getElementById('cadastros').appendChild(ul)

  }



  quantidadeDeCadastros = quantidadeDeCadastros + 1
  localStorage.setItem('Qnt cadastros', quantidadeDeCadastros)

  
})