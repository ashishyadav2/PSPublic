var express = require("express");
var bodyParser = require("body-parser");
var mongoose = require("mongoose");

const app = express();

app.use(bodyParser.json());
app.use(express.static('public'));
app.use(bodyParser.urlencoded({
    extended:true
}));
mongoose.connect('mongodb://localhost:27017/mydb',{
    useNewUrlParser: true,
    useUnifiedTopology: true
});
var db = mongoose.connection;
db.on('error',()=> {
    console.log("error connecting database")
})
db.once('open',()=> {
    console.log("connected to database")
})
app.post("/index",(req,res)=> {
    var name = req.body.name;
    var email = req.body.email;
    var phone = req.body.phone;
    var pswd = req.body.pswd;
    
    var data = {
        "name":name,
        "email":email,
        "phone":phone,
        "pswd":pswd
    }
    db.collection('users').insertOne(data,(err,collection)=> {
        if(err) {
            throw err;
        }
        console.log("Record inserted");
    });
    return res.redirect('success.html');
})
app.get("/",(req,res)=> {
    // res.send("hello from server");
    res.set({
        "Allow-access-Allow-origin":'*'
    })
    return res.redirect('index.html');
}).listen(3000);

console.log("listening on 3000");