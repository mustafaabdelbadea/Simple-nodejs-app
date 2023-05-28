const express = require("express");
const app = express();
const port = 3000;

app.get('/', (req,res) => {
  res.status(200)
  res.send("Hello form Nodejs App")
})

app.get('/health', (req,res) => {
  res.status(200)
  res.send("Health")
})


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
