const express = require('express');
const router = express.Router();
const pool = require('../db');

router.get('/', async (req, res) => {
  try {
    const result = await pool.query(
      `SELECT cart.id, cart.quantity, products.* 
       FROM cart JOIN products ON cart.product_id = products.id`
    );
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.post('/', async (req, res) => {
  try {
    const { product_id } = req.body;
    const existing = await pool.query('SELECT * FROM cart WHERE product_id = $1', [product_id]);
    if (existing.rows.length > 0) {
      await pool.query('UPDATE cart SET quantity = quantity + 1 WHERE product_id = $1', [product_id]);
    } else {
      await pool.query('INSERT INTO cart (product_id, quantity) VALUES ($1, 1)', [product_id]);
    }
    res.json({ message: 'Added to cart' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.put('/:id', async (req, res) => {
  const { id } = req.params; // This is likely the product_id coming from the frontend
  const { quantity } = req.body;
  try {
    // Changed "WHERE id" to "WHERE product_id"
    await pool.query('UPDATE cart SET quantity = $1 WHERE product_id = $2', [quantity, id]);
    res.json({ message: "Quantity updated" });
  } catch (err) {
    res.status(500).json(err.message);
  }
});

router.delete('/:id', async (req, res) => {
  const { id } = req.params; // This is likely the product_id
  try {
    // Changed "WHERE id" to "WHERE product_id"
    await pool.query('DELETE FROM cart WHERE product_id = $1', [id]);
    res.json({ message: "Item removed" });
  } catch (err) {
    res.status(500).json(err.message);
  }
});

module.exports = router;