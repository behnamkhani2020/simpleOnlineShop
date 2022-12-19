const express = require('express')
const router = express.Router()
const homepageController = require('../controllers/homepageController')


// homepage routes

router.get('/',homepageController)

module.exports = router