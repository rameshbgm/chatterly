#!/bin/bash

echo "🚀 Setting up Chatterly development environment..."

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
source venv/bin/activate

# Install dependencies
echo "📥 Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Rename .env.example to .env if .env doesn't exist
if [ ! -f .env ]; then
    echo "📝 Creating .env file from .env.example..."
    cp .env.example .env
    echo "⚠️  Don't forget to add your API keys to .env!"
fi

# Add auto-activation to bashrc for new terminals
echo "source $(pwd)/venv/bin/activate" >> ~/.bashrc

echo "✅ Setup complete! Your environment is ready."
echo "👉 Next step: Add your API keys to the .env file, then run: python bot.py"
