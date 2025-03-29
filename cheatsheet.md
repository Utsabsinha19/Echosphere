# EchoSphere Cheat Sheet

## 🚀 Quick Start
```bash
# Install all dependencies
(cd frontend && npm install)
(cd backend && npm install)

# Run both servers
(cd backend && npm run dev)  # Backend on port 5000
(cd frontend && npm start)   # Frontend on port 3000
```

## 🔧 Common Commands
| Command | Description |
|---------|-------------|
| `npm run dev` | Start backend server |
| `npm start` | Start frontend dev server |
| `npm test` | Run tests (frontend) |
| `npm run lint` | Check code quality |

## 🔄 Common Workflows

### Add a New Component
1. Create file in `frontend/src/components/`
2. Import in parent component
3. Add styles in `App.css`

### Add a New API Endpoint
1. Create route in `backend/routes/`
2. Add to `index.js`:
```js
app.use('/api/new-route', require('./routes/newRoute'));
```
3. Create service method in `frontend/src/services/`

## 🐛 Debugging Tips
1. **Backend not responding?**
   - Check terminal for errors
   - Verify MongoDB connection

2. **Frontend not updating?**
   - Clear browser cache
   - Check React dev tools

3. **API calls failing?**
   - Inspect Network tab in browser
   - Check CORS settings in backend

## 🌈 UI Development
```jsx
// Sample component structure
function NewComponent() {
  const [data, setData] = useState([]);

  useEffect(() => {
    // Fetch data here
  }, []);

  return (
    <div className="component-container">
      {data.map(item => (
        <div key={item.id} className="item-card">
          {item.content}
        </div>
      ))}
    </div>
  );
}
```

## 🚨 Emergency Fixes
1. **Dependency issues**
```bash
rm -rf node_modules package-lock.json
npm install
```

2. **Port conflicts**
```bash
# Find process using port
lsof -i :3000

# Kill process
kill -9 <PID>
```

## 🔗 Helpful Resources
- [React Docs](https://reactjs.org/docs/getting-started.html)
- [Express Docs](https://expressjs.com/)
- [Tailwind Docs](https://tailwindcss.com/docs)