#!/bin/bash
# Quick setup script for team members

echo "🚀 Sentinel Cost Estimator - Setup Script"
echo ""
echo "Step 1: Navigate to project folder"
cd azure-react-llm

echo "Step 2: Create .env file from template"
if [ ! -f .env ]; then
    cp .env.example .env
    echo "✅ Created .env file"
    echo "⚠️  Please edit .env and add your Azure OpenAI credentials"
    echo ""
else
    echo "✅ .env file already exists"
fi

echo "Step 3: Install dependencies"
npm install

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit azure-react-llm/.env with your Azure OpenAI credentials"
echo "2. Run: npm run dev"
echo "3. Open: http://localhost:5173"
