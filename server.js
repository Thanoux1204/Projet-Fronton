const express = require('express');
const compression = require('compression');
const morgan = require('morgan');
const path = require('path');

const app = express();

app.use(compression());
app.use(morgan('combined'));

app.use(express.static(path.join(__dirname, 'public')));

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Application started on port ${port}`);
});