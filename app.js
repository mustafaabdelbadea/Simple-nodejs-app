const express = require("express");
const app = express();
const port = 80;

app.get('/', (req,res) => {
  res.status(200)
  res.send("Hello form Nodejs App")
})

app.listen(port, () => {
  console.log(process.env.REDIS_HOSTNAME, process.env);
  console.log(`Example app listening at http://localhost:${port}`);
});