let express = require("express");
let app = new express();                                                                     
app.set("view engine","ejs")

// set up database connection
const knex = require("knex")({
 client: "mysql",
 connection: {
  host:"mydbinstance.ct6c8u4wgo4o.us-east-1.rds.amazonaws.com",
  user: "admin",
  password: "Password1",
  database:"tanks",
  port: 3306,
 },
});

app.get("/", (req,res) => {
    knex
    .select()
    .from("inventory")
.then((result) => {
res.render("index", {aConcerts: result});
});
});
app.listen(3000);
