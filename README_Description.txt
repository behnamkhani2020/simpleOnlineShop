SIMPLE ONLINE SHOP

USE BELOW STEPS TO RUN APP

import simpleOnlineShop.sql in your database
npm install >> for installing requird packages
npm run test0 >> runs the APP

MAILING info

used variable.env to save mail credentials and passed to nodemailer

due to restrictions couldn't find smpt mailservice so used default <ethereal.mail>
each time mail is sent a preview link is genarated in console

SITE TOUR
login to see cart and click on product to add it to cart and click check out button to get biling info by mail

ENV
variable.env at root folder contains PORT and MAILING info for running app and sending mails