const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    // This allows the server to connect to Render's hosted database securely
    rejectUnauthorized: false 
  }
});

module.exports = pool;