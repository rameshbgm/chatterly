#!/bin/bash
set -e

echo "🚀 Setting up Chatterly development environment..."

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔄 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# Install dependencies
echo "📥 Installing dependencies..."
pip install -r requirements.txt

# Rename .env.example to .env if .env doesn't exist
if [ -f .env.example ] && [ ! -f .env ]; then
    echo "📝 Creating .env file from .env.example..."
    mv .env.example .env
    echo "⚠️  Don't forget to add your API keys to .env!"
fi

# Add auto-activation to bashrc for new terminals
if ! grep -q "source.*venv/bin/activate" ~/.bashrc 2>/dev/null; then
    echo "source \$(pwd)/venv/bin/activate" >> ~/.bashrc
fi

echo ""
echo "✅ Setup complete! Your environment is ready."
echo "👉 Next step: Add your API keys to the .env file, then run: python bot.py"
