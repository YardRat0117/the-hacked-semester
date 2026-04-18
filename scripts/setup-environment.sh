#!/bin/bash
# Setup script for The Hacked Semester development environment

set -e  # Exit on error

echo "=== Setting up The Hacked Semester development environment ==="
echo

# Check prerequisites
echo "Checking prerequisites..."

# Check for Python
if command -v python3 &> /dev/null; then
    python_version=$(python3 --version | cut -d' ' -f2)
    echo "✓ Python $python_version found"
else
    echo "✗ Python 3 not found"
    echo "  Please install Python 3.8 or later"
    exit 1
fi

# Check for Node.js
if command -v node &> /dev/null; then
    node_version=$(node --version)
    echo "✓ Node.js $node_version found"
else
    echo "✗ Node.js not found"
    echo "  Please install Node.js 16 or later"
    exit 1
fi

# Check for pnpm
if command -v pnpm &> /dev/null; then
    pnpm_version=$(pnpm --version)
    echo "✓ pnpm $pnpm_version found"
else
    echo "✗ pnpm not found"
    echo "  Please install pnpm (npm install -g pnpm)"
    exit 1
fi

# Check for git
if command -v git &> /dev/null; then
    git_version=$(git --version | cut -d' ' -f3)
    echo "✓ git $git_version found"
else
    echo "✗ git not found"
    echo "  Please install git"
    exit 1
fi

echo
echo "Setting up Python environment..."

# Determine Python package installer
PYTHON_ENV_SETUP=false

# Check for virtual environment
if [ -d "venv" ] && [ -f "venv/bin/activate" ]; then
    echo "✓ Existing virtual environment found"
    PYTHON_ENV_SETUP=true
    PYTHON_INSTALLER="existing_venv"
elif python3 -c "import ensurepip" &> /dev/null; then
    echo "✓ ensurepip available - will create virtual environment"
    PYTHON_INSTALLER="venv"
else
    echo "✗ Cannot set up Python environment"
    echo ""
    echo "Python ensurepip module is required to create virtual environments."
    echo "Please ensure your Python installation includes ensurepip or install pip."
    exit 1
fi

# Install Python dependencies
echo
echo "Installing Python dependencies..."

if [ "$PYTHON_INSTALLER" = "existing_venv" ]; then
    # Activate existing virtual environment and install/update packages
    echo "  Activating existing virtual environment..."
    source venv/bin/activate
    
    echo "  Installing/updating packages in virtual environment..."
    pip install -r requirements.txt
    
    deactivate
    echo "✓ Packages installed/updated in existing virtual environment"
    
elif [ "$PYTHON_INSTALLER" = "venv" ]; then
    # Create virtual environment and install packages
    echo "  Creating virtual environment..."
    python3 -m venv venv
    
    echo "  Activating virtual environment and installing packages..."
    source venv/bin/activate
    pip install -r requirements.txt
    deactivate
    
    PYTHON_ENV_SETUP=true
    echo "✓ Virtual environment created and packages installed"
fi

echo
echo "Installing Node.js dependencies..."
pnpm install

echo
echo "Setting up Git hooks..."
pnpm exec husky install

echo
echo "=== Setup complete! ==="
echo

# Determine how to run mkdocs commands
if [ "$PYTHON_ENV_SETUP" = true ]; then
    echo "Note: Python packages are installed in a virtual environment."
    echo "To run mkdocs commands, activate the virtual environment first:"
    echo "  source venv/bin/activate"
    echo "Then you can use the regular commands."
    echo
    echo "Or use the provided convenience scripts (see below)."
fi

echo "Available commands:"
echo "  pnpm run docs:serve   - Start local documentation server"
echo "  pnpm run docs:build   - Build documentation"
echo "  pnpm run docs:deploy  - Deploy to GitHub Pages"
echo "  pnpm run format       - Format code and documentation"
echo "  pnpm run lint         - Lint Markdown files"
echo "  pnpm run test         - Run tests (when available)"
echo

if [ "$PYTHON_ENV_SETUP" = true ]; then
    echo "Since you're using a virtual environment, you may need to run:"
    echo "  source venv/bin/activate && pnpm run docs:serve"
    echo "Or create an alias/script for convenience."
else
    echo "To view documentation locally, run:"
    echo "  pnpm run docs:serve"
    echo "Then open http://localhost:8000 in your browser"
fi

echo
echo "Happy hacking!"