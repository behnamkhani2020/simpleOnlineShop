const express = require('express')
const router = express.Router()
const {body,validationResult} = require('express-validator')
const homepageController = require('../controllers/homepageController')
const signupController = require('../controllers/signupController')
const loginController = require('../controllers/loginController')
const {loggedIn,notLoggedIn} = require('../src/utils/loggedIn.js')
const forgetController = require('../controllers/forgetController')
const resetController = require('../controllers/resetController')
const logoutController = require('../controllers/logoutController')


// homepage routes

router.get('/',homepageController)

// authentication routes

router.get('/signup',signupController.get)
router.post('/signup',body('userName').not().isEmpty(),
                body('userEmail').isEmail(),
                body('userPassword').isLength({min:5}),
                signupController.post)
router.get('/login',loggedIn,loginController.get)
router.post('/login',body('userEmail').isEmail(),body('userPassword').isLength({min:5}),loginController.post)
router.get('/forget',loggedIn,forgetController.get)
router.post('/forget',body('email').isEmail(),forgetController.post)
router.get('/reset',loggedIn,resetController.get)
router.post('/reset',body('newPass').isLength({min:5}),resetController.post)
router.get('/logout',logoutController)

module.exports = router