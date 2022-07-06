const http = require('http')
const URL = require('url')
const fs = require('fs')
const path = require('path')
let receitas = require('./rec.json')

//--------------------------------\\

const server = http.createServer((request, response) => {
  const { receitaNome, ingredientes, remover } = URL.parse(
    request.url,
    true
  ).query

  if (remover === 'true') {
    const toBeDeleted = receitas.filter(receita => String(receita.receitaNome) === String(receitaNome) & String(receita.ingredientes) === String(ingredientes))

    if (toBeDeleted){
      receitas = receitas.filter(receita => String(receita.receitaNome) !== String(receitaNome) & String(receita.ingredientes) === String(ingredientes))
    }


  } else {
    const check = receitas.find(receita => String(receita.receitaNome) === String(receitaNome))
    if (check){
      check.ingredientes = ingredientes.split(',')
    }else{
    const rect = {
      receitaNome, ingredientes
    }
    receitas.push(rect)
   }
  }

  fs.writeFile(
    path.join(__dirname, 'rec.JSON'),
    JSON.stringify(receitas, null, 3),
    (error) => {

    }
  )

  response.end(JSON.stringify(receitas))
})

//--------------------------------\\

server.listen(3006, () => {
  console.log('API listening on http://localhost:3006')
})
