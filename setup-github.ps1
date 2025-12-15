# GitHub Setup Script
# Please run this in a NEW PowerShell terminal window

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  GitHub Repository Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Verify GitHub CLI installation
Write-Host "Step 1: Verifying GitHub CLI installation..." -ForegroundColor Yellow
try {
    $ghVersion = gh --version
    Write-Host "✓ GitHub CLI is installed" -ForegroundColor Green
    Write-Host $ghVersion -ForegroundColor Gray
}
catch {
    Write-Host "✗ GitHub CLI not found. Please restart your terminal." -ForegroundColor Red
    exit 1
}

Write-Host ""

# Step 2: Authenticate with GitHub
Write-Host "Step 2: Authenticating with GitHub..." -ForegroundColor Yellow
Write-Host "This will open your browser for authentication." -ForegroundColor Gray
Write-Host ""
Pause

gh auth login

Write-Host ""

# Step 3: Create the repository
Write-Host "Step 3: Creating repository 'final-report'..." -ForegroundColor Yellow
$repoName = "final-report"
$repoDescription = "Final Report Repository"

# Ask if user wants public or private
Write-Host "Do you want to create a PUBLIC or PRIVATE repository?" -ForegroundColor Cyan
Write-Host "1) Public (anyone can see)" -ForegroundColor Gray
Write-Host "2) Private (only you and collaborators can see)" -ForegroundColor Gray
$choice = Read-Host "Enter your choice (1 or 2)"

if ($choice -eq "2") {
    # Create private repository
    gh repo create $repoName --private --description $repoDescription --clone
    Write-Host "✓ Private repository created!" -ForegroundColor Green
}
else {
    # Create public repository
    gh repo create $repoName --public --description $repoDescription --clone
    Write-Host "✓ Public repository created!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Repository URL:" -ForegroundColor Cyan
Write-Host "https://github.com/dses50117/$repoName" -ForegroundColor Green
gh repo view $repoName --web

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Add files to your repository" -ForegroundColor Gray
Write-Host "2. Run: git add ." -ForegroundColor Gray
Write-Host "3. Run: git commit -m 'Initial commit'" -ForegroundColor Gray
Write-Host "4. Run: git push" -ForegroundColor Gray
