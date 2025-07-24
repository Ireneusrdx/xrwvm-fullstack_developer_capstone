#!/bin/bash

# Full-Stack Application Build Script
echo "🚀 Building Full-Stack Car Dealership Application..."

# Check if required tools are installed
command -v python3 >/dev/null 2>&1 || { echo "❌ Python 3 is required but not installed. Aborting." >&2; exit 1; }
command -v node >/dev/null 2>&1 || { echo "❌ Node.js is required but not installed. Aborting." >&2; exit 1; }
command -v npm >/dev/null 2>&1 || { echo "❌ npm is required but not installed. Aborting." >&2; exit 1; }

echo "✅ All required tools are available"

# Build Backend (Django)
echo "🔧 Building Django Backend..."
cd server
echo "  📦 Installing Python dependencies..."
pip install -r requirements.txt

echo "  🗄️  Running database migrations..."
python manage.py migrate

echo "  📁 Collecting static files..."
python manage.py collectstatic --noinput

echo "  🧪 Running tests..."
python manage.py test

echo "✅ Backend build complete!"

# Build Frontend (React)
echo "🔧 Building React Frontend..."
cd frontend
echo "  📦 Installing npm dependencies..."
npm install

echo "  🏗️  Building React application..."
npm run build

echo "✅ Frontend build complete!"

# Build Database Services
echo "🔧 Building Database Services..."
cd ../database
echo "  📦 Installing npm dependencies..."
npm install

echo "✅ Database services build complete!"

# Go back to root
cd ../../

echo "🎉 Build completed successfully!"
echo ""
echo "To start the application:"
echo "  Backend:  cd server && python manage.py runserver"
echo "  Frontend: cd server/frontend && npm start"
echo "  Database: cd server/database && node app.js"
echo ""
echo "For deployment options, see DEPLOYMENT.md"
