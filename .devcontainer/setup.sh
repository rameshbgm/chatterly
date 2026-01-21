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
fi

# Add auto-activation to bashrc for new terminals
ACTIVATE_CMD="cd /workspaces/chatterly && source venv/bin/activate"
if ! grep -q "source venv/bin/activate" ~/.bashrc 2>/dev/null; then
    echo "$ACTIVATE_CMD" >> ~/.bashrc
fi

echo ""
echo "=============================================="
echo "✅ Setup complete!"
echo "=============================================="
echo ""
echo "⚠️  IMPORTANT: Add your API keys to .env file"
echo "👉 Then run: python bot.py"
echo ""
echo "🔄 Opening a new terminal with venv activated..."
echo "=============================================="
