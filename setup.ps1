# Quick setup script for Windows team members

Write-Host "🚀 Sentinel Cost Estimator - Setup Script" -ForegroundColor Green
Write-Host ""

Write-Host "Step 1: Navigate to project folder" -ForegroundColor Yellow
Set-Location azure-react-llm

Write-Host "Step 2: Create .env file from template" -ForegroundColor Yellow
if (-not (Test-Path .env)) {
    Copy-Item .env.example .env
    Write-Host "✅ Created .env file" -ForegroundColor Green
    Write-Host "⚠️  Please edit .env and add your Azure OpenAI credentials" -ForegroundColor Red
    Write-Host ""
} else {
    Write-Host "✅ .env file already exists" -ForegroundColor Green
}

Write-Host "Step 3: Install dependencies" -ForegroundColor Yellow
npm install

Write-Host ""
Write-Host "✅ Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Edit azure-react-llm\.env with your Azure OpenAI credentials"
Write-Host "2. Run: npm run dev"
Write-Host "3. Open: http://localhost:5173"
