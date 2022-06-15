let veiculos = []

if (localStorage.length == 0){
  localStorage.setItem('Vagas', 200)
}

let vagas = Number(localStorage.getItem('Vagas'))
const display = document.getElementById('vagasDisplay')



display.innerHTML = `Vagas: ${vagas}`

let entradas = 0
let saidas = 0
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
  document.getElementById('name').style.backgroundColor ="rgba(255, 255, 255, 1)"

  document.getElementById('modelo').value = carroEncontrado.modelo
  document.getElementById('modelo').style.backgroundColor ="rgba(255, 255, 255, 1)"

  //document.getElementById('entrada').value = carroEncontrado.entrada
  document.getElementById('entrada').style.backgroundColor ="rgba(255, 255, 255, 1)"

  //document.getElementById('saida').value = carroEncontrado.saida
  document.getElementById('saida').style.backgroundColor ="rgba(255, 255, 255, 1)"
}

const onClickRemove = (element) => {
  const ident = element.getAttribute('identificador')
  const cars = load()
  cars.map((car, index) => {

    if (Number(ident) == Number(index)) {
     vagas = vagas + Number(car.quant)
     localStorage.setItem(('Vagas'), Number(vagas))
    
     const display = document.getElementById('vagasDisplay')
     display.innerHTML = `Vagas: ${vagas}`
    }

  })

  
  cars.splice(ident, 1)
  localStorage.setItem('listaDeCarros', JSON.stringify(cars))
  list()
}

const load = () => {
  const items = localStorage.getItem('listaDeCarros')
  return items ? JSON.parse(items) : []
}

const save = (editing) => {
  const updCars = load()
  const upd = updCars.map((car, index) => { 

    if (editingCar === index) {
      const oldQuant = Number(car.quant)
      const oldEntrada = Number(car.entrada)
      const oldSaida = Number(car.saida) 
      const newQuant = Number(editing.entrada) - Number(editing.saida)
      if (Number(car.quant + newQuant) >= Number(0)){
      car.modelo = editing.modelo
      car.name = editing.name
      car.quant = Number(car.quant) + newQuant
      car.entrada = Number(editing.entrada) + oldEntrada
      car.saida = Number(editing.saida) + oldSaida

      localStorage.setItem(('Vagas'), Number(vagas) - newQuant)
      vagas = vagas - newQuant
      const display = document.getElementById('vagasDisplay')
      display.innerHTML = `Vagas: ${vagas}`
      }else{
      alert('operação impossível')
      car.modelo = car.modelo
      car.name = car.name
      car.quant = car.quant
      car.entrada = car.entrada
      car.saida = car.saida
    }
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
    if (document.getElementById('saida').value >= 0 & document.getElementById('entrada').value <= Number(vagas) &
    document.getElementById('entrada').value >= 0 & document.getElementById('saida').value <= 200
    ){
    const editCar = {
      name: document.getElementById('name').value,
      modelo: document.getElementById('modelo').value,
      quant: Number(0),
      entrada: document.getElementById('entrada').value,
      saida: document.getElementById('saida').value,

    }


    save(editCar)
    //document.getElementById('quant').style.backgroundColor ="rgba(255, 255, 255, 0.5)"
    document.getElementById('entrada').style.backgroundColor ="rgba(255, 255, 255, 0.5)"
    document.getElementById('saida').style.backgroundColor ="rgba(255, 255, 255, 0.5)"


    
   }else{
    alert('Um valor foi inválido, verifique se a saída é maior que 0 e a entrada menor ou igual a quantidade de vagas')
    document.getElementById('entrada').style.backgroundColor ="rgba(255, 255, 255, 0.5)"
    document.getElementById('saida').style.backgroundColor ="rgba(255, 255, 255, 0.5)"
    const editCar = {
      name: document.getElementById('name').value,
      modelo: document.getElementById('modelo').value,
      quant: Number(0),
      entrada: Number(0),
      saida: Number(0),

    }

    save(editCar)

   }
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
document.addEventListener('keydown', function(){
  console.log("AAAAAAAAAAAAAAAAAAAAAA")

  const input = this.document.querySelector
} )