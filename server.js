const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
const port = 3001;

app.use(cors());
app.use(express.json());

// Create connection to the MySQL database
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'pizanite@8',
  database: 'school_website_db'
});

connection.connect(err => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL');
});

// Endpoint to fetch all users
app.get('/api/users', (req, res) => {
  const sql = 'SELECT * FROM users';
  connection.query(sql, (err, results) => {
    if (err) {
      return res.status(500).send(err);
    }
    res.json(results);
  });
});// Endpoint to add a new user

app.post('/api/signup', (req, res) => {
  const { first_name, email, password } = req.body;
  const sql = 'INSERT INTO users (first_name, email, password) VALUES (?, ?, ?)';
  connection.query(sql, [first_name, email, password], (err, results) => {
    if (err) {
      return res.status(500).json({ success: false, error: err.message });
    }
    return res.status(201).json({ success: true, message: 'User added successfully' });
  });
});

// Endpoint to fetch schools based on type or all schools if no type provided
app.get('/api/schools', (req, res) => {
  const { type } = req.query;

  let sql = 'SELECT * FROM schools';

  // Check if type is provided and filter schools accordingly
  if (type) {
    sql += ` WHERE type = '${type}'`;
  }

  connection.query(sql, (err, results) => {
    if (err) {
      console.error('Error fetching schools:', err);
      return res.status(500).send(err);
    }
    res.json(results);
  });
});

// Endpoint to fetch school details by school_id
app.get('/api/schools/:id', (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT * FROM schools WHERE school_id = ?';
  connection.query(sql, [id], (err, results) => {
    if (err) {
      console.error('Error fetching school details:', err);
      return res.status(500).send(err);
    }
    res.json(results[0]);
  });
});



app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
