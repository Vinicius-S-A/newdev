const http = require('http')
const URL = require('url')
const fs = require('fs')
const path = require('path')


const server = http.createServer((request, response) => {
 // response.sendFile(html)
  //response.end("AA")
  //response.end(__dirname + "/websection/index.html")
  if (request.url === "/receitas"){

  }


  fs.readFile('./websection/index.html', null, function (error, data) {
    if (error) {

    } else {
        response.write(data)
    }
    fs.readFile('./websection/style.css', null, function (error, data) {
      if (error) {
  
      } else {
          response.write(data)
      }
      fs.readFile('./websection/main.js', null, function (error, data) {
        if (error) {
    
        } else {
            response.write(data)
        }
        response.end()
      })
    
    })
  
  })



})

server.listen(3006, () => {
  console.log('running!!11!!1 \n-----------')
})