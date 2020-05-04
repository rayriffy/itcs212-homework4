const express = require('express')

const { pool, crash } = require('../util')

const router = express.Router()

router.get('/', (req, res) => {
  res.status(200).send({
    status: 'success',
    code: 201,
    response: {
      message: 'hi from album',
    },
  })
})

router.get('/all', async (req, res) => {
  try {
    // TODO: Get all albums
    const conn = await pool
    const query = await conn.query(`SELECT * FROM album WHERE 1`)

    res.status(200).send({
      status: 'success',
      code: 201,
      response: {
        message: 'obtained',
        data: query,
      },
    })
  } catch (e) {
    console.error(e)
    crash(res)
  }
})

router.get('/:id', async (req, res) => {
  try {
    const { id } = req.params

    // TODO: Get album by ID
    const conn = await pool
    const [row] = await conn.query(`SELECT * FROM album WHERE id = ${id}`)

    if (row !== undefined) {
      res.status(200).send({
        status: 'success',
        code: 201,
        response: {
          message: 'obtained',
          data: row,
        },
      })
    } else {
      res.status(404).send({
        status: 'failure',
        code: 402,
        response: {
          message: 'not found',
        },
      })
    }
  } catch (e) {
    console.error(e)
    crash(res)
  }
})

router.post('/', async (req, res) => {
  try {
    // Transform object into entries array
    const payload = Object.entries(req.body)
  
    // TODO: Add album into record
    const conn = await pool
  
    // Use map to loop trough entries array and join them into string
    const query = await conn.query(`INSERT INTO album (${payload.map(([key]) => key).join(',')}) VALUES (${payload.map(([_, val]) => `"${val}"`).join(',')})`)

    if (query.affectedRows !== 0) {
      res.redirect('/')
      // res.status(200).send({
      //   status: 'success',
      //   code: 201,
      //   response: {
      //     message: 'created',
      //     data: {
      //       id: query.insertId,
      //     },
      //   },
      // })
    } else {
      res.status(400).send({
        status: 'failure',
        code: 401,
        response: {
          message: 'nothing to add',
        },
      })
    }
  } catch (e) {
    console.error(e)
    crash(res)
  }
})

router.put('/', async (req, res) => {
  try {
    // Set req.body.id into id, then spread operators for the rest of object into update variable
    const { id, ...update } = req.body

    // TODO: Update record
    const conn = await pool
    const query = await conn.query(`UPDATE album SET ${Object.entries(update).map(([key, val]) => `${key} = "${val}"`).join(',')} WHERE id = ${id}`)

    if (query.affectedRows !== 0) {
      res.redirect('/')

      // res.status(200).send({
      //   status: 'success',
      //   code: 201,
      //   response: {
      //     message: 'updated',
      //   },
      // })
    } else {
      res.status(400).send({
        status: 'failure',
        code: 401,
        response: {
          message: 'nothing to update',
        },
      })
    }
  } catch (e) {
    console.error(e)
    crash(res)
  }
})

router.delete('/', async (req, res) => {
  try {
    const { id } = req.body

    // TODO: Remove album from record
    const conn = await pool
    const query = await conn.query(`DELETE FROM album WHERE id = ${id}`)

    if (query.affectedRows !== 0) {
      res.status(200).send({
        status: 'success',
        code: 201,
        response: {
          message: 'removed',
        },
      })
    } else {
      res.status(400).send({
        status: 'failure',
        code: 401,
        response: {
          message: 'nothing to remove',
        },
      })
    }
  } catch (e) {
    console.error(e)
    crash(res)
  }
})

module.exports = router
