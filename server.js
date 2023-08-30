const express = require("express")


const app = express();
const PORT = process.env.PORT || 3000;
app.get("/getsports",(req,res)=>{
    console.log("in /getsports ")
    let now= Date.now()
    res.send({data : `in getsports now ${now}`})

})

app.get("/getdata",(req,res)=>{
    console.log("in /getdata ")
    let now= Date.now()
    res.send({data : `in getdata now ${now}`})

})
console.log("PORT ",PORT)
app.listen(PORT,()=>{
    console.log(`listening on port ${PORT}`);

})