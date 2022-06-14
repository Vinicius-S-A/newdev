let veiculos = []

let vagas = 200

let editingCar = null


const onClickEdit = (element) => {

  const finder = element.getAttribute('identificador')
  editingCar = +finder
  
  const carros = load()
  let carroEncontrado = {
    name: '',
    modelo: '',
    quant: '',
    entrada: '',
    saida: ''
  }

  carros.forEach((carro, identificador) => {

    if (identificador === +finder) {
      carroEncontrado.modelo = carro.modelo
      carroEncontrado.name = carro.name
      carroEncontrado.quant = carro.quant
      carroEncontrado.entrada = carro.entrada
      carroEncontrado.saida = carro.saida
    }

  })

  document.getElementById('name').value = carroEncontrado.name

  document.getElementById('modelo').value = carroEncontrado.modelo

  document.getElementById('quant').value = carroEncontrado.quant
  document.getElementById('quant').style.backgroundColor ="rgba(255, 255, 255, 1)"

  document.getElementById('entrada').value = carroEncontrado.entrada
  document.getElementById('entrada').style.backgroundColor ="rgba(255, 255, 255, 1)"

  document.getElementById('saida').value = carroEncontrado.saida
  document.getElementById('saida').style.backgroundColor ="rgba(255, 255, 255, 1)"
}

const onClickRemove = (element) => {
  const ident = element.getAttribute('identificador')
  const cars = load()
  cars.splice(ident, 1)
  localStorage.setItem('listaDeCarros', JSON.stringify(cars))
  list()
}

const load = () => {

  const items = localStorage.getItem('listaDeCarros')

  return items ? JSON.parse(items):[]


}

const save = (editing) => {
  const updCars = load()
  const upd = updCars.map((car, index) => { 
    if (editingCar === index) {
      car.modelo = editing.modelo
      car.quant = editing.quant
      car.entrada = editing.entrada
      car.saida = editing.saida
    }
    return car
  })

  localStorage.setItem('listaDeCarros', JSON.stringify(upd))

  editingCar = null

  list()
  document.querySelector('form').reset()
}


const span = (identificador) => {
  const span = document.createElement('span')
  const iconEdit = document.createElement('i')
  iconEdit.setAttribute('class', 'fas fa-pen')
  iconEdit.setAttribute('title', 'Editar')
  iconEdit.setAttribute('identificador', `${identificador}`)
  iconEdit.setAttribute('onclick', `onClickEdit(this)`)
  iconEdit.setAttribute('style', 'cursor:pointer; margin-right: 1rem;')
  span.appendChild(iconEdit)

  const iconRemove = document.createElement('i')
  iconRemove.setAttribute('class', 'fas fa-x')
  iconRemove.setAttribute('title', 'Remover')
  iconRemove.setAttribute('identificador', `${identificador}`)
  iconRemove.setAttribute('onclick', `onClickRemove(this)`)
  iconRemove.setAttribute('style', 'cursor:pointer; margin-right: 1rem;')
  span.appendChild(iconRemove)

  return span
} 

const list = () => {
  const veiculos = load()
  let ul = document.querySelector('ul')
  if (ul) {

    ul.remove()
  
  }
  ul = document.createElement('ul')
 
  veiculos.forEach((item, finder) => {

    const li = document.createElement('li')
    li.innerHTML = 
    
    `Nome: ${item.name} 
    <br>
     Modelo: ${item.modelo} 
     <br>
     Quantidade: ${item.quant}
     <br>
     Entrada: ${item.entrada}
     <br>
     Saída: ${item.saida}
     <br>
     `

    li.appendChild(span(finder))
    ul.appendChild(li)
  })
  
  document.getElementById('list-section').appendChild(ul)

}

const insert = (event) => {

  event.preventDefault()

  const car = {

    name: document.getElementById('name').value,
    modelo: document.getElementById('modelo').value,
    quant: Number(0),
    entrada: Number(0),
    saida: Number(0),

  }

  if (editingCar || editingCar == 0) {

    const editCar = {
      name: document.getElementById('name').value,
      modelo: document.getElementById('modelo').value,
      quant: document.getElementById('quant').value,
      entrada: document.getElementById('entrada').value,
      saida: document.getElementById('saida').value,

    }


    save(editCar)
    document.getElementById('quant').style.backgroundColor ="rgba(255, 255, 255, 0.5)"
    document.getElementById('entrada').style.backgroundColor ="rgba(255, 255, 255, 0.5)"
    document.getElementById('saida').style.backgroundColor ="rgba(255, 255, 255, 0.5)"

    return
  }
  veiculos = load()
  veiculos.push(car)
  localStorage.setItem('listaDeCarros', JSON.stringify(veiculos))
  document.querySelector('form').reset()
  list()
}

list()



const buttonAdd = document.getElementById('btn')
buttonAdd.addEventListener('click', insert)