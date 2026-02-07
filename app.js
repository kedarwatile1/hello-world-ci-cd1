
const express = require('express');
const app = express();

// Simple health endpoint
app.get('/', (req, res) => {
  res.send('Hello World from CI-CD Pipeline 🚀');
});

module.exports = app;

// Start server only if not in test mode
if (require.main === module) {
  app.listen(3000, () => {
    console.log('App running on port 3000');
  });
}

