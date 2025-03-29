# EchoSphere Setup Guide - Baby Steps

## Step 1: Project Setup
1. Create project folders:
   ```bash
   mkdir -p frontend/src/components/Feed backend/routes
   ```

## Step 2: Install Dependencies
1. Frontend dependencies:
   ```bash
   cd frontend
   npm install react react-dom react-three-fiber three @react-three/drei ar.js tailwindcss styled-components axios
   ```

2. Backend dependencies:
   ```bash
   cd ../backend
   npm install express cors dotenv mongoose axios nodemon
   ```

## Step 3: Run Development Servers
1. Start backend server (in one terminal):
   ```bash
   cd backend
   npm run dev
   ```

2. Start frontend server (in another terminal):
   ```bash
   cd frontend
   npm start
   ```

## Step 4: Verify Setup
1. Check backend is running:
   - Visit `http://localhost:5000` in browser
   - Should see "EchoSphere API Server"

2. Check frontend is running:
   - Visit `http://localhost:3000` in browser
   - Should see the EchoSphere interface with two feed tabs

## Step 5: Test Features
1. Test Public Feed:
   - Click "Public Feed" tab
   - Should see sample posts with timestamps

2. Test Private Feed:
   - Click "Private Feed" tab
   - Should see personalized posts with sentiment badges

## Troubleshooting
- If ports are in use:
  ```bash
  lsof -i :3000 # Find process using port 3000
  kill -9 <PID> # Replace <PID> with process ID
  ```

- If dependencies fail to install:
  ```bash
  rm -rf node_modules package-lock.json
  npm install
  ```

## Next Steps
1. Implement user authentication
2. Add post creation functionality
3. Connect real AI services
4. Implement blockchain integration