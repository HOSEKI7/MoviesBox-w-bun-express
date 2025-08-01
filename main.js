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
  if (err) throw err;
  db.query("SELECT * FROM movies", (err, rows) => {
    if (err) throw err;
  });
  console.log("Database Connected");
});

app.get("/", (req, res) => {
  const sql = "SELECT * FROM movies";
  db.query(sql, (err, result) => {
    if (err) throw err;
    const movies = JSON.parse(JSON.stringify(result));
    res.render("index", {
      movies: movies,
      logo: "MoviesBox",
    });
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
