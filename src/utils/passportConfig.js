const passport = require('passport')
const LocalStrategy = require('passport-local')
const User = require('../../models/User')

passport.initialize()
passport.use(new LocalStrategy({
        usernameField : 'email',
        passwordField : 'password'
    },async (email, password, done) => {
        console.log('validating')
      const user = await User.findOne({ 
        where : {
            email : email
        }
       })
       try {
           if (!user) { return done(null, false , {message:' incorrect email '}); }
           if (! await User.verifyPassword(user,password)) { return done(null, false, { message : ' incorrect password '}); }
           return done(null,user)
       } catch (error) {
           done(error);
       }
    }
))

passport.serializeUser((user, done) => {
    console.log(user)
    done(null, user.id)
})
  
passport.deserializeUser(async (id, done) => {
    try {
        const user = await User.findOne({
            where: {
                id,
            },
        })
        done(null, user)
    } catch (err) {
    done(err, null)
    }
})