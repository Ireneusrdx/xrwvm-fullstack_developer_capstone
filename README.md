# Full-Stack Car Dealership Application

A comprehensive full-stack web application built with Django, React, and Node.js microservices.

## 🏗️ How to Build This Workspace

### Prerequisites
- Python 3.9+
- Node.js 18+
- npm or yarn

### Quick Build Steps

1. **Backend (Django)**:
   ```bash
   cd server
   pip install -r requirements.txt
   python manage.py migrate
   python manage.py collectstatic --noinput
   python manage.py runserver
   ```

2. **Frontend (React)**:
   ```bash
   cd server/frontend
   npm install
   npm run build
   npm start
   ```

3. **Database Services (Node.js)**:
   ```bash
   cd server/database
   npm install
   node app.js
   ```

## 🚀 Automated Deployment

This project includes GitHub Actions for automated building and hosting:

- **Frontend**: Automatically deployed to GitHub Pages
- **Backend**: Docker images built and pushed to registry
- **Full deployment**: See `DEPLOYMENT.md` for detailed hosting options

### Enable GitHub Pages Hosting

1. Go to repository Settings → Pages
2. Select "GitHub Actions" as source
3. Push to main branch to trigger deployment
4. Your site will be live at: `https://yourusername.github.io/repository-name`

For detailed deployment instructions, see [DEPLOYMENT.md](./DEPLOYMENT.md).