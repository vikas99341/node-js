const express = require ('express');
const app = express();
const post = require('./routes/post');
const hoganMiddleware = require('hogan-middleware');
const path = require('path');

app.set('views',path.join(__dirname,'views'));
app.set('view engine','mustache');

app.engine('mustache', hoganMiddleware.__express);

//app.get('/', post.createPost);

app.use(post);
app.use((req,res,next)=>{
	res.status(404);
	res.send('<h1>Page not found</h1>');

});


//app.get('/home', (req, res, next) =>{

	//res.render('home',null);
//})



const port = "3000";
const host = "0.0.0.0";
app.listen( port,host);
console.log(`Node Js Server is running on the host: ${host} on the port: ${port}`);

