const exemplo = "exemplo wooo"
const loadData = async ()=>{
  const response = await fetch('http://localhost:3001')

  console.log('resposta do meu servidor: ', response.json)
}

loadData()


fetch('http://localhost:3001').then((response) => {
console.log("deucerto lezgooo", response)
})
.catch((error) =>{
console.log('Isso deu pau', error)

})

.finally(() =>{ //executa mesmo se der certo ou errado
  console.log("exc over")


})