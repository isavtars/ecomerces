const express = require("express");
const { model } = require("mongoose");
const homeRouter = express.Router();



homeRouter.get("/home",(req,res)=>{

    res.send("heloo from home")

})

module.exports=homeRouter;