var express = require('express');
var app = express();
var port = 1337;
var path = require('path');
var pages = [ 'about', 'connexion','deconnexion','test']; //tableau des pages
const swup = require('swup');


//route vers les feuilles css
//--------------------------------------
app.use('/css',express.static('css'));
//--------------------------------------

//route vers les feuilles de config js
//------------------------------------
app.use('/configjs',express.static('configjs'));
//------------------------------------

// la route pour afficher l'index
app.get("/", function(req, res){
  res.sendFile(__dirname +'/index.html')

});


//les vues sont dans le dossier view/
//la route pour afficher les pages$
pages.forEach(function(unePage){
  app.get("/"+unePage+"/", function(req, res){
    res.sendFile(__dirname +'/view/'+unePage+'.html')
  })
});


//Ecoute sur le Port 1337
app.listen(port, console.log("Serveur web lancé sur localhost:1337"));
