var http = require('http');

var server = http.createServer(function(req, res) {
  res.end("Hello World");  // faire la redirection vers l'index ici retirer le hello world
});

server.listen(1337);
console.log("Serveur web lancé sur localhost:1337 ...");

