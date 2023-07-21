console.log('Hello World');
//import form package
const express = require('express');
const mongoose = require('mongoose');
const authRouter =require('./route/auth');
const DB ="mongodb+srv://harshkandoi8:Harsh1234@cluster0.mngqzik.mongodb.net/?retryWrites=true&w=majority";
const PORT = 3000;
const app = express();

// importing from other files   


//midleware
app.use(express.json());
app.use(authRouter);

//creating an Api
// app.get('/hello-world',(req,res)=>{
//     res.json({hii:'hello world'});
// });

// app.get('/',(req,res)=>{
//     res.json({hii: 'my name is sonu'});
// });

//connection
mongoose.connect(DB).then(()=>{
    console.log("connection Successful");
})
.catch((e)=>{
 console.log(e);   
});
app.listen(PORT,"0.0.0.0",()=>{
    console.log(`Connected on port ${PORT} hello `);
});