var express = require('express');
var app = express();
var port = 1337;

// route vers l'index
app.get("/", function(req, res){
  res.sendFile(__dirname +'/index.html')
});

app.listen(port, function(){
  console.log("Serveur web lancé sur localhost:1337")
});
