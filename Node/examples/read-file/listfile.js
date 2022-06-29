const http = require('http')
const URL = require('url')
const { listenerCount } = require('process')
const time = require('./times.json')
console.log('timinhos', time)

http
  .createServer((req, res) => {
    res.end(JSON.stringify(time)) // responde pro client

    const query = URL.parse(req.url, true).query
    console.log(query)
    
    if (name ||lastName || age){

    }else{
      
    }
    //console.log("req",req)
    //console.log("res",res)
  })
  .listen(3001, () => {
    console.log('API IS RUNNING ON PORT 3001')
  })
