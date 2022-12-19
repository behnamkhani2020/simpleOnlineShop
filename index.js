// including modules
const path = require('path')
const express = require('express')
const app = express()
const flash = require('connect-flash')
const session = require('express-session')
const cookieParser = require('cookie-parser')
const logger = require('morgan')
const passport = require('passport')
const dotenv = require('dotenv')

// app configuraton
app.set('views','./views')
app.set('view engine','ejs')

app.use(express.static('public'))
app.use(logger('dev'))
app.use(express.json())
app.use(cookieParser())
app.use(flash())
app.use(session({
  secret: 'keyboard cat'
}))
app.use(express.urlencoded({
    extended:true
}))
const envPath = path.join(__dirname,'variables.env')
dotenv.config({path:envPath})
// using passport
require('./helpers/myPassport')
//

// using passport session
app.use(passport.initialize())
app.use(passport.session())
//

// app routing
app.get('/',(req,res)=>{
    res.send('h')
})

// my error handlers
app.use((req,res)=>{
    res.status(404).send("<h1>We did not find that !!</h1>")
})
app.use((err,req,res,next)=>{
    res.status(500).send("<h1>Server broke !!</h1>")
})

//start the app
app.listen(3000,()=>{console.log('express listening at port 3000')})