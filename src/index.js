const path = require('path')

const express = require('express')
const cors = require('cors')
const bodyParser = require('body-parser')
const methodOverride = require('method-override')

const music = require('./router/album')

const server = express()

server.use(bodyParser.json())
server.use(bodyParser.urlencoded({extended: true}))

server.use(cors())

// Override method change to any method from POST, GET by passing _method (for forms submission)
server.use(methodOverride('_method', {
  methods: ['POST', 'GET'],
}))

server.get('/', (req, res) => {
  res.sendFile(path.resolve(__dirname + '/page/index.html'))
})

server.use('/api/album', music)

server.listen(3000, () => console.log('yeet'))
