let peoples = [];

let identificadorQueTaSendoEditado = null;

const loadPeoples = () => {
  const itemsJaArmazenados = localStorage.getItem('listaDePessoas');
  return itemsJaArmazenados ? JSON.parse(itemsJaArmazenados) : [];
}

const onClickEdit = (element) => {
  const identificadorASerEncontrado = 
    element.getAttribute('identificador');

  identificadorQueTaSendoEditado = +identificadorASerEncontrado;
  
  const peoples = loadPeoples();
  console.log('carregar pessoas', peoples);
  let pessoaEncontrada = {
    name: '',
    age: '',
    height: '',
    entrada: '',
    saida: ''
  };

  peoples.forEach((pessoa, identificador) => {
    if (identificador === +identificadorASerEncontrado) {
      pessoaEncontrada.age = pessoa.age;
      pessoaEncontrada.name = pessoa.name;
      pessoaEncontrada.height = pessoa.height;
      pessoaEncontrada.entrada = pessoa.entrada;
      pessoaEncontrada.saida = pessoa.saida;
    }
  });

  document.getElementById('name').value = pessoaEncontrada.name;
  document.getElementById('age').value = pessoaEncontrada.age;
  document.getElementById('height').value = pessoaEncontrada.height;
  document.getElementById('entrada').value = pessoaEncontrada.entrada;
  document.getElementById('saida').value = pessoaEncontrada.saida;

  console.log('pessoaEncontrada', pessoaEncontrada);
}

const onClickRemove = (element) => {
  const identificadorASerEncontrado = 
    element.getAttribute('identificador');

  const pessoas = loadPeoples()
  pessoas.splice(identificadorASerEncontrado, 1)
  localStorage.setItem('listaDePessoas', JSON.stringify(pessoas))
  listPeoples()
}

const deletarRegistro = (registroSendoEditado) => {
  const pessoas = loadPeoples();
  const pessoasAtualizadas = pessoas.splice(registroSendoEditado, 1)


  localStorage.setItem('listaDePessoas', JSON.stringify(pessoasAtualizadas));

  identificadorQueTaSendoEditado = null;

  listPeoples();
}

const salvarRegistroEditado = (registroSendoEditado) => {
  const pessoas = loadPeoples();
  const pessoasAtualizadas = pessoas.map((pessoa, index) => { 
    if (identificadorQueTaSendoEditado === index) {
      pessoa.name = registroSendoEditado.name;
      pessoa.age = registroSendoEditado.age;
      pessoa.height = registroSendoEditado.height;
      pessoa.entrada = registroSendoEditado.entrada;
      pessoa.saida = registroSendoEditado.saida;
    }
    return pessoa;
  })

  localStorage.setItem('listaDePessoas', JSON.stringify(pessoasAtualizadas));

  identificadorQueTaSendoEditado = null;

  listPeoples();
  document.querySelector('form').reset();
}


const span = (identificador) => {
  const span = document.createElement('span');
  const iconEdit = document.createElement('i');
  iconEdit.setAttribute('class', 'fas fa-edit');
  iconEdit.setAttribute('title', 'Editar');

  iconEdit.setAttribute('identificador', `${identificador}`);
  iconEdit.setAttribute('onclick', `onClickEdit(this)`);
  iconEdit.setAttribute('style', 'cursor:pointer; margin-inline: 1rem;');

  span.appendChild(iconEdit);

  const iconRemove = document.createElement('i');
  iconRemove.setAttribute('class', 'fas fa-trash');
  iconRemove.setAttribute('title', 'Remover');
  iconRemove.setAttribute('identificador', `${identificador}`);
  iconRemove.setAttribute('onclick', `onClickRemove(this)`);
  iconRemove.setAttribute('style', 'cursor:pointer; margin-inline: 1rem;');

  span.appendChild(iconRemove);
  
  return span;
} 

const listPeoples = () => {
  const peoples = loadPeoples();
  
  let ul = document.querySelector('ul');
  if (ul) {
    ul.remove();
  }
  
  ul = document.createElement('ul');
 
  peoples.forEach((item, identificador) => {
    const li = document.createElement('li');
    li.innerHTML = 
    
    `Nome: ${item.name} 
     Modelo: ${item.age} 
     Quantidade: ${item.height}
     Entrada: ${item.saida}
     Saída: ${item.entrada}


     `;

    li.appendChild(span(identificador))
    ul.appendChild(li);
  });
  
  document.getElementById('list-section').appendChild(ul);
}

listPeoples();


const addPeople = (event) => {
  event.preventDefault();

  const people = {
    name: document.getElementById('name').value,
    age: document.getElementById('age').value,
    height: document.getElementById('height').value,
    entrada: document.getElementById('entrada').value,
    saida: document.getElementById('saida').value,
  }
  console.log('after save registry', identificadorQueTaSendoEditado);
  if (identificadorQueTaSendoEditado || identificadorQueTaSendoEditado == 0) {
    salvarRegistroEditado(people);
    return;
  }
  
  peoples = loadPeoples();

  console.log('after save registry');
  peoples.push(people);
  
  localStorage.setItem('listaDePessoas', JSON.stringify(peoples));

  document.querySelector('form').reset();

  listPeoples();
}




const botaoDeAdicionar = document.getElementById('btn');
botaoDeAdicionar.addEventListener('click', addPeople)


const leBanana = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

var leBanana2 = leBanana.filter(function(item, index){
  if (item % 2 ){
  }else{
    return item
  }


})


console.log(leBanana2)