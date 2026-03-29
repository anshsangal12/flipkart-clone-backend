const express = require('express');
const router = express.Router();
const pool = require('../db');

// Get all wishlist items
router.get('/', async (req, res) => {
  try {
    const result = await pool.query(
      'SELECT wishlist.id as wishlist_id, products.* FROM wishlist JOIN products ON wishlist.product_id = products.id'
    );
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// Add to wishlist
router.post('/', async (req, res) => {
  try {
    const { product_id } = req.body;
    // Check if it's already in the wishlist so we don't add duplicates
    const existing = await pool.query('SELECT * FROM wishlist WHERE product_id = $1', [product_id]);
    
    if (existing.rows.length === 0) {
      await pool.query('INSERT INTO wishlist (product_id) VALUES ($1)', [product_id]);
    }
    res.json({ message: 'Added to wishlist' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// Remove from wishlist
router.delete('/:id', async (req, res) => {
  const { id } = req.params; 
  try {
    await pool.query('DELETE FROM wishlist WHERE product_id = $1', [id]);
    res.json({ message: 'Removed from wishlist' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = router;