# GitHub Repository Setup Guide

This guide will walk you through setting up GitHub and creating a repository called "final-report".

## Prerequisites
✅ **Git is installed** (version 2.47.1.windows.1)

## Step-by-Step Setup

### Option 1: Using GitHub CLI (Recommended)

#### Step 1: Install GitHub CLI

1. Download GitHub CLI from: https://cli.github.com/
2. Or use winget (Windows Package Manager):
   ```powershell
   winget install --id GitHub.cli
   ```

#### Step 2: Authenticate with GitHub

After installation, open a new terminal and run:
```powershell
gh auth login
```

Follow the prompts:
- Choose: **GitHub.com**
- Choose: **HTTPS**
- Authenticate using your **browser** (recommended)

#### Step 3: Create the Repository

Navigate to your project directory and run:
```powershell
cd C:\Users\Bill\.gemini\antigravity\scratch\final-report
gh repo create final-report --public --description "Final Report Repository"
```

---

### Option 2: Using GitHub Web Interface (Manual)

If you prefer not to install GitHub CLI, you can create the repository manually:

#### Step 1: Go to GitHub

1. Open your browser and go to: https://github.com/new
2. Log in if you're not already logged in

#### Step 2: Create Repository

1. **Repository name**: `final-report`
2. **Description**: `Final Report Repository` (or your custom description)
3. **Visibility**: Select **Public**
4. ✅ Check **"Add a README file"** (optional but recommended)
5. Click **"Create repository"**

#### Step 3: Clone the Repository Locally

After creating the repository on GitHub, copy the repository URL and run:
```powershell
cd C:\Users\Bill\.gemini\antigravity\scratch
git clone https://github.com/YOUR-USERNAME/final-report.git
cd final-report
```

Replace `YOUR-USERNAME` with your actual GitHub username.

---

## Next Steps

Once your repository is created, you can:

1. **Add files** to your repository:
   ```powershell
   # Create or copy files to the repository
   git add .
   git commit -m "Initial commit"
   git push
   ```

2. **Change repository visibility** (if needed):
   - Go to: `https://github.com/YOUR-USERNAME/final-report/settings`
   - Scroll to **"Danger Zone"**
   - Click **"Change visibility"**

3. **Add collaborators** (to share with your email):
   - Go to: `https://github.com/YOUR-USERNAME/final-report/settings/access`
   - Click **"Invite a collaborator"**
   - Enter the email address

---

## Repository Information

Once created, your repository will be available at:
```
https://github.com/YOUR-USERNAME/final-report
```

**Note**: You mentioned wanting to "email private repository" - if you want to make it private and share it with a specific email:
1. Create the repository as **Private** instead of Public
2. Go to Settings → Collaborators
3. Add the email address as a collaborator
