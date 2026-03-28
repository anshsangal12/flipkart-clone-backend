const express = require('express');
const router = express.Router();
const pool = require('../db');

router.get('/', async (req, res) => {
  try {
    const { search, category } = req.query;
    let query = 'SELECT * FROM products';
    let params = [];

    if (search && category) {
      query += ' WHERE name ILIKE $1 AND category = $2';
      params = [`%${search}%`, category];
    } else if (search) {
      query += ' WHERE name ILIKE $1';
      params = [`%${search}%`];
    } else if (category) {
      query += ' WHERE category = $1';
      params = [category];
    }

    const result = await pool.query(query, params);
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.get('/:id', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM products WHERE id = $1', [req.params.id]);
    if (result.rows.length === 0) return res.status(404).json({ error: 'Product not found' });
    res.json(result.rows[0]);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = router;