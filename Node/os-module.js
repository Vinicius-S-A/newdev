const os = require('os')

console.log(os.platform())// retorna o sistema operacional que está sendo executado o node



function banana(){
  const memory=parseInt(os.freemem() / 1024 / 1024)
  const totalmemory = parseInt(os.totalmem() / 1024 / 1024)
  const prcnt = parseInt((memory/totalmemory)  * 100)

  const statistics={
    totalMemory: `${totalmemory}MB`,
    freeMemory: `${memory}MB`,
    usage: `${prcnt}%`
    }   
  console.table(statistics)
}

setInterval(() => {
  console.clear()

  banana()
}, 1000)

