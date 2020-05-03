const path = require('path')

const express = require('express')
const cors = require('cors')
const bodyParser = require('body-parser')
const dotenv =require('dotenv')

dotenv.config()
const {} = process.env

const server = express()

server.use(bodyParser.json())
server.use(bodyParser.urlencoded({extended: true}))

server.use(cors())

server.get('/', (req, res) => {
  res.sendFile(path.resolve(__dirname + '/page/index.html'))
})

server.listen(3000, () => console.log('yeet'))
