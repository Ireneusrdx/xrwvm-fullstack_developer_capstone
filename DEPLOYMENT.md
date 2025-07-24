# Full-Stack Car Dealership Application

A comprehensive full-stack application with Django backend, React frontend, and Node.js microservices.

## 🚀 Quick Start

### Local Development

1. **Clone the repository**:
   ```bash
   git clone <your-repo-url>
   cd xrwvm-fullstack_developer_capstone
   ```

2. **Backend Setup**:
   ```bash
   cd server
   pip install -r requirements.txt
   python manage.py migrate
   python manage.py runserver
   ```

3. **Frontend Setup**:
   ```bash
   cd server/frontend
   npm install
   npm start
   ```

4. **Database Services**:
   ```bash
   cd server/database
   npm install
   node app.js
   ```

## 🏗️ Build Process

The application uses GitHub Actions for automated building and deployment.

### Build Components

1. **React Frontend**: Built using `npm run build`
2. **Django Backend**: Static files collected and tested
3. **Node.js Services**: Dependencies installed and tested
4. **Docker Images**: Created for containerized deployment

## 🌐 Hosting Options

### 1. GitHub Pages (Frontend Only)

The GitHub Actions workflow automatically deploys the React frontend to GitHub Pages when you push to the main branch.

**Setup Steps**:
1. Go to your repository settings
2. Navigate to "Pages" section
3. Select "GitHub Actions" as the source
4. The workflow will automatically deploy on push to main

**Access**: Your site will be available at `https://yourusername.github.io/repository-name`

### 2. Full-Stack Deployment Options

#### Option A: Heroku
1. Create a Heroku app
2. Add the following buildpacks:
   - `heroku/nodejs`
   - `heroku/python`
3. Set environment variables:
   ```
   SECRET_KEY=your-secret-key
   DJANGO_SETTINGS_MODULE=djangoproj.production_settings
   ```
4. Deploy using Heroku CLI or connect to GitHub

#### Option B: Railway
1. Connect your GitHub repository to Railway
2. Set environment variables in Railway dashboard
3. Railway will automatically detect and deploy your application

#### Option C: DigitalOcean App Platform
1. Create a new app on DigitalOcean
2. Connect your GitHub repository
3. Configure build and run commands:
   - Backend: `gunicorn djangoproj.wsgi:application`
   - Frontend: `npm run build` then serve static files

#### Option D: Docker Deployment
The workflow builds Docker images that you can deploy to:
- Docker Hub
- AWS ECS
- Google Cloud Run
- Azure Container Instances

## 🔧 Configuration

### Environment Variables

Create a `.env` file for local development:

```env
SECRET_KEY=your-secret-key-here
DEBUG=True
DATABASE_URL=your-database-url
EMAIL_HOST=your-email-host
EMAIL_HOST_USER=your-email
EMAIL_HOST_PASSWORD=your-password
```

### Production Settings

For production deployment, update `server/djangoproj/production_settings.py`:

1. Set `ALLOWED_HOSTS` to include your domain
2. Configure database settings
3. Set up email backend if needed
4. Configure static/media file storage

## 📦 GitHub Actions Workflow

The `.github/workflows/deploy.yml` file includes:

1. **Frontend Build**: Builds React application
2. **Backend Build**: Tests Django application and collects static files
3. **Microservices Build**: Builds Node.js services
4. **GitHub Pages Deploy**: Deploys frontend to GitHub Pages
5. **Docker Build**: Creates container images for deployment

### Workflow Triggers

- **Push to main**: Full build and deploy
- **Pull requests**: Build and test only

## 🛠️ Manual Build Commands

### Build Everything Locally

```bash
# Backend
cd server
pip install -r requirements.txt
python manage.py collectstatic --noinput
python manage.py test

# Frontend
cd frontend
npm install
npm run build

# Database Services
cd ../database
npm install
npm test
```

### Docker Build

```bash
# Build backend image
docker build -t car-dealership-backend ./server

# Build database service image
docker build -t car-dealership-db ./server/database

# Run with docker-compose
cd server/database
docker-compose up -d
```

## 🔍 Troubleshooting

### Common Issues

1. **Node.js version**: Use Node.js 18 or later
2. **Python version**: Use Python 3.9 or later
3. **Static files**: Run `python manage.py collectstatic`
4. **CORS issues**: Update `ALLOWED_HOSTS` in Django settings

### GitHub Actions Failures

1. Check the Actions tab in your repository
2. Review build logs for specific errors
3. Ensure all required secrets are set
4. Verify file paths in workflow configuration

## 📝 License

This project is licensed under the terms specified in the LICENSE file.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests locally
5. Submit a pull request

The GitHub Actions workflow will automatically test your changes!
