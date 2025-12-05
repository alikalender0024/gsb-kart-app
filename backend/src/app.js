const express = require("express");
const cors = require("cors");
const morgan = require("morgan");

const app = express();

// Middlewares
app.use(express.json());
app.use(cors());
app.use(morgan("dev"));

// Test route
app.get("/api/health", (req, res) => {
  res.json({
    status: "ok",
    message: "GSB Kart Backend API is running",
  });
});

module.exports = app;
