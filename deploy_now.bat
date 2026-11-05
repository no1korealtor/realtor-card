@echo off
chcp 65001 > nul
setlocal
cd /d "%~dp0"

echo ======================================================
echo  [모바일 명함] 초고속 안전 단독 배포
echo ======================================================

echo.
echo [1/1] GitHub Pages 저장소로 즉시 배포 중...
git add index.html icon-192.png icon-512.png GEMINI.md
git commit -m "feat: deploy realtor-card"
git push origin main

if errorlevel 1 (
    echo.
    echo [안내] Git 푸시 중 오류가 발생했습니다.
    pause
    exit /b 1
)

echo.
echo ======================================================
echo  ✨ 조항준 공인중개사 모바일 명함이 성공적으로 배포되었습니다!
echo ======================================================
pause
