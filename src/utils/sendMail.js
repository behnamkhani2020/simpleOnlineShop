const nodemailer = require('nodemailer')

const sendMail = async (email,renderdHtml)=>{
    await nodemailer.createTestAccount(async(err, account) => {
        if (err) {
            console.error('Failed to create a testing account. ' + err.message);
            return process.exit(1);
        }
    
        console.log('Credentials obtained, sending message...');
    
        // Create a SMTP transporter object
        const transporter = await nodemailer.createTransport({
            host: process.env.mailHost,
            port: process.env.mailPort,
            auth: {
                user: process.env.mailUser,
                pass: process.env.mailPassword
            }
        });
    
        // Message object
        const message = {
            from: 'behanm <bm.khani2020@gmail.com>',
            to: email,
            subject: 'Email from simpleOnlineShop',
            html: renderdHtml
        };
    
        await transporter.sendMail(message, (err, info) => {
            if (err) {
                console.log('Error occurred. ' + err.message);
                return process.exit(1);
            }
    
            console.log('Message sent: %s', info.messageId);
            // Preview only available when sending through an Ethereal account
            console.log('Preview URL: %s', nodemailer.getTestMessageUrl(info));
        });
    });
}

module.exports = sendMail