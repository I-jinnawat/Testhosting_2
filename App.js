const express = require("express");
const app = express();

const port = 8000;

app.get("/", (req, res) => res.send("Hi my name's Art"));

app.listen(port, () => console.log(`Server is running at Port ${port}`));
