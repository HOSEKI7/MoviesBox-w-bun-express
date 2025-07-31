const express = require("express");
const mysql = require("mysql");

const app = express();
const port = 3000;

app.use(express.static("public"));
app.set("view engine", "ejs");
app.set("views", "views");

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "project-moviesbox",
});

db.connect((err) => {
  if (err) {
    console.error("Database connection failed");
    throw err;
  }
  console.log("Connected to database.");
});

app.get("/", (req, res) => {
  res.render("index");
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
