var express = require('express');
var app = express();


app.get('/',(req,res) => {
app.sendfile('test.html');
})

app.listen(666);
