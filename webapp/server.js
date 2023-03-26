var express = require('express');
var app = express();
const ip=require("ip");

// set the view engine to ejs
app.set('view engine', 'ejs');

// use res.render to load up an ejs view file

// index page
app.get('/', function(req, res) {
  res.render('pages/index',{ip_address:ip.address()}); // Passing the variable obtained from the IP Library.
});


app.listen(3000);
console.log('Server is listening on port 3000');
