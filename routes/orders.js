const express = require('express');
const router = express.Router();
const pool = require('../db');

router.post('/', async (req, res) => {
  try {
    const { full_name, phone, address, city, state, pincode, items, total_amount } = req.body;

    const order = await pool.query(
      `INSERT INTO orders (full_name, phone, address, city, state, pincode, total_amount)
       VALUES ($1,$2,$3,$4,$5,$6,$7) RETURNING *`,
      [full_name, phone, address, city, state, pincode, total_amount]
    );

    const order_id = order.rows[0].id;

    for (const item of items) {
      await pool.query(
        `INSERT INTO order_items (order_id, product_id, quantity, price) VALUES ($1,$2,$3,$4)`,
        [order_id, item.id, item.quantity, item.price]
      );
    }

    await pool.query('DELETE FROM cart');
    res.json({ message: 'Order placed!', order_id });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.get('/', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM orders ORDER BY created_at DESC');
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = router;