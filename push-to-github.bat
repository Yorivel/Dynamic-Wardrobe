@echo off
cd /d "%~dp0"
git init
git add .
git commit -m "Initial documentation"
git branch -M main
git remote add origin https://github.com/Yorivel/Dynamic-Wardrobe.git
git push -u origin main --force
pause
