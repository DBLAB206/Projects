const app = require("express")();
app.listen(80);
app.get("/", (req, res) => {
  res.json({a:1,b:2});
});
console.log("http://localhost:80/");