# EchoSphere Developer Guide

## Project Structure
```
echosphere/
├── frontend/              # React application
│   ├── src/
│   │   ├── components/    # Reusable UI components
│   │   ├── services/      # API service layer
│   │   ├── App.jsx        # Main application component
│   │   └── index.js       # Entry point
├── backend/               # Node.js server
│   ├── routes/            # API endpoints
│   ├── models/            # Database models
│   └── index.js           # Server entry point
```

## Core Components

### 1. Dual Feed System
- **PublicFeed.jsx**: Displays public content
  - Fetches from `/api/feed/public`
  - Shows basic post information

- **PrivateFeed.jsx**: Displays AI-curated content
  - Fetches from `/api/feed/private`
  - Shows sentiment analysis and relevance scores

### 2. API Service Layer
- Located in `frontend/src/services/api.js`
- Handles all backend communication
- Includes methods for:
  - Fetching both feed types
  - Content analysis
  - Voice processing

### 3. Backend Routes
- **feedRoutes.js**: Handles feed endpoints
  - `/public`: Returns public posts
  - `/private`: Returns personalized posts

- **aiRoutes.js**: Handles AI processing
  - `/analyze`: Analyzes post content
  - `/process-voice`: Processes voice input

## Development Workflow

### Adding a New Feature
1. Create frontend component
2. Add API service method
3. Create backend route
4. Test integration

### Example: Adding Comments
1. Create `Comment.jsx` component
2. Add `commentService.js` with API methods
3. Create `commentRoutes.js` in backend
4. Update feed components to show comments

## Testing Tips
1. Start backend first: `cd backend && npm run dev`
2. Then start frontend: `cd frontend && npm start`
3. Use Postman to test API endpoints
4. Check browser console for errors

## Common Tasks

### Adding a New Page
1. Create component in `src/pages/`
2. Add route in `App.jsx`
3. Create necessary services
4. Add backend endpoints if needed

### Styling Components
1. Use existing Tailwind classes
2. Add new styles to `App.css`
3. Follow component-specific CSS naming
   - `.feed-` for feed components
   - `.post-` for post elements
   - `.comment-` for comment elements

## Troubleshooting
- **CORS errors**: Ensure backend has `cors()` middleware
- **Missing data**: Check network tab for API responses
- **Style issues**: Verify class names match