const express = require("express");

const app =express()

const PORT = process.env.PORT || 8000

app.get("/" ,(req,res,next)=>{
    return res.json({
        message:"i am insite the docker"
    })
})

app.listen(PORT,()=>console.log(`server started on port ${PORT}`))