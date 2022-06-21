let turn = ""
let howManyPlays = Number(0)
let canPlay = true
start()

function start(){
const Round = Math.random(0,1)
if (Round >= Number(0.5)){
  turn = "X"
  document.getElementById('gameMessager').innerHTML = "Turno do X"
}else{
  turn = "O"
  document.getElementById('gameMessager').innerHTML = "Turno do O"
}
}

function load(){

  if (turn == "O"){
    document.getElementById('gameMessager').innerHTML = "Turno do O"
  }else{
    document.getElementById('gameMessager').innerHTML = "Turno do X"
  }
  check()
}


function playing(element){

if (element.getAttribute('occ') == "no" & canPlay == true){
  howManyPlays = howManyPlays + 1
  element.setAttribute('occ', turn)
  const display = document.createElement('h1')
  display.style = "height: 80px; width: 80px; font-size: 80px; margin-left: 25px; margin-right: 0px; font-family: 'Roboto';"
  display.innerHTML = turn
  element.appendChild(display)

  if (turn == "X"){
    turn = "O"
  }else{
    turn = "X"
  }
  load()
  
}

}


function check(){
  console.log(howManyPlays)
// o
const a1 = document.getElementById("a1")
const a2 = document.getElementById("a2")
const a3 = document.getElementById("a3")
const b1 = document.getElementById("b1")
const b2 = document.getElementById("b2")
const b3 = document.getElementById("b3")
const c1 = document.getElementById("c1")
const c2 = document.getElementById("c2")
const c3 = document.getElementById("c3")


if(a1.getAttribute('occ') == "O" & a2.getAttribute('occ') == "O" & a3.getAttribute('occ') == "O"){
  document.getElementById('gameMessager').innerHTML = "O venceu!"
  canPlay = false
}
if(b1.getAttribute('occ') == "O" & b2.getAttribute('occ') == "O" & b3.getAttribute('occ') == "O"){
  document.getElementById('gameMessager').innerHTML = "O venceu!"
  canPlay = false
}
if(c1.getAttribute('occ') == "O" & c2.getAttribute('occ') == "O" & c3.getAttribute('occ') == "O"){
  document.getElementById('gameMessager').innerHTML = "O venceu!"
  canPlay = false
}
if(a1.getAttribute('occ') == "O" & b1.getAttribute('occ') == "O" & c1.getAttribute('occ') == "O"){
  document.getElementById('gameMessager').innerHTML = "O venceu!"
  canPlay = false
}
if(a2.getAttribute('occ') == "O" & b2.getAttribute('occ') == "O" & c2.getAttribute('occ') == "O"){
  document.getElementById('gameMessager').innerHTML = "O venceu!"
  canPlay = false
}
if(a3.getAttribute('occ') == "O" & b3.getAttribute('occ') == "O" & c3.getAttribute('occ') == "O"){
  document.getElementById('gameMessager').innerHTML = "O venceu!"
  canPlay = false
}
if(a1.getAttribute('occ') == "O" & b2.getAttribute('occ') == "O" & c3.getAttribute('occ') == "O"){
  document.getElementById('gameMessager').innerHTML = "O venceu!"
  canPlay = false
}
if(a3.getAttribute('occ') == "O" & b2.getAttribute('occ') == "O" & c1.getAttribute('occ') == "O"){
  document.getElementById('gameMessager').innerHTML = "O venceu!"
  canPlay = false
}

if(a1.getAttribute('occ') == "X" & a2.getAttribute('occ') == "X" & a3.getAttribute('occ') == "X"){
  document.getElementById('gameMessager').innerHTML = "X venceu!"
  canPlay = false
}
if(b1.getAttribute('occ') == "X" & b2.getAttribute('occ') == "X" & b3.getAttribute('occ') == "X"){
  document.getElementById('gameMessager').innerHTML = "X venceu!"
  canPlay = false
}
if(c1.getAttribute('occ') == "X" & c2.getAttribute('occ') == "X" & c3.getAttribute('occ') == "X"){
  document.getElementById('gameMessager').innerHTML = "X venceu!"
  canPlay = false
}
if(a1.getAttribute('occ') == "X" & b1.getAttribute('occ') == "X" & c1.getAttribute('occ') == "X"){
  document.getElementById('gameMessager').innerHTML = "X venceu!"
  canPlay = false
}
if(a2.getAttribute('occ') == "X" & b2.getAttribute('occ') == "X" & c2.getAttribute('occ') == "X"){
  document.getElementById('gameMessager').innerHTML = "X venceu!"
  canPlay = false
}
if(a3.getAttribute('occ') == "X" & b3.getAttribute('occ') == "X" & c3.getAttribute('occ') == "X"){
  document.getElementById('gameMessager').innerHTML = "X venceu!"
  canPlay = false
}
if(a1.getAttribute('occ') == "X" & b2.getAttribute('occ') == "X" & c3.getAttribute('occ') == "X"){
  document.getElementById('gameMessager').innerHTML = "X venceu!"
  canPlay = false
}
if(a3.getAttribute('occ') == "X" & b2.getAttribute('occ') == "X" & c1.getAttribute('occ') == "X"){
  document.getElementById('gameMessager').innerHTML = "X venceu!"
  canPlay = false
}


if (howManyPlays == Number(9) & canPlay == true){
  document.getElementById('gameMessager').innerHTML = "Velha! Ninguém venceu"

}

}


function refresh() {
  location.reload()
}


document.getElementById("a1").setAttribute('onclick', `playing(this)`)
document.getElementById("a1").setAttribute('occ', `no`)

document.getElementById("a2").setAttribute('onclick', `playing(this)`)
document.getElementById("a2").setAttribute('occ', `no`)

document.getElementById("a3").setAttribute('onclick', `playing(this)`)
document.getElementById("a3").setAttribute('occ', `no`)

document.getElementById("b1").setAttribute('onclick', `playing(this)`)
document.getElementById("b1").setAttribute('occ', `no`)

document.getElementById("b2").setAttribute('onclick', `playing(this)`)
document.getElementById("b2").setAttribute('occ', `no`)

document.getElementById("b3").setAttribute('onclick', `playing(this)`)
document.getElementById("b3").setAttribute('occ', `no`)

document.getElementById("c1").setAttribute('onclick', `playing(this)`)
document.getElementById("c1").setAttribute('occ', `no`)

document.getElementById("c2").setAttribute('onclick', `playing(this)`)
document.getElementById("c2").setAttribute('occ', `no`)

document.getElementById("c3").setAttribute('onclick', `playing(this)`)
document.getElementById("c3").setAttribute('occ', `no`)

document.getElementById("refresh").setAttribute('onclick', `refresh()`)
