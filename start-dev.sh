#!/bin/bash

# Verify frontend files
if [ ! -f "frontend/src/App.jsx" ]; then
  echo "Error: Frontend files missing!"
  exit 1
fi

# Verify backend files
if [ ! -f "backend/index.js" ]; then
  echo "Error: Backend files missing!"
  exit 1
fi

# Install dependencies
echo "Installing frontend dependencies..."
(cd frontend && npm install)

echo "Installing backend dependencies..."
(cd backend && npm install)

# Start servers
echo "Starting backend server on port 5000..."
(cd backend && npm run dev) &

echo "Starting frontend development server on port 3000..."
(cd frontend && npm start)