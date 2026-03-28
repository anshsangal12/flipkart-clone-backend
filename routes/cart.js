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
  try {
    const { quantity } = req.body;
    if (quantity <= 0) {
      await pool.query('DELETE FROM cart WHERE id = $1', [req.params.id]);
    } else {
      await pool.query('UPDATE cart SET quantity = $1 WHERE id = $2', [quantity, req.params.id]);
    }
    res.json({ message: 'Cart updated' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.delete('/:id', async (req, res) => {
  try {
    await pool.query('DELETE FROM cart WHERE id = $1', [req.params.id]);
    res.json({ message: 'Removed from cart' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = router;