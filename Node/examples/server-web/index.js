const http = require('http');
const fs = require('fs');
const path = require('path');

const server = http.createServer((request, response) => {
  console.log('server web')
  const url = request.url;

  let file = url === '/' ? 'index.html' : request.url;
  const filePath = path.join(__dirname, 'public', file);
  let message = ('')

  response.writeHead(JSON, (
    Access-Control-Allow-origin: '*'
  ))

  if (!'name'){
    response.writeHead(400)
    return response.end("não foi encontrado o nome.")
  }

  if (url === '/cadastro') => {
    file = 'registry.html'
  }


  fs.readFile(
    filePath,
    (error, content) => {
      if (error) { return error; }

      return response.end(content);
    }


    
  )

  
});

server.listen(3002, () => {
  console.log('yahooooooOOOOOOOOOOOOO');
});