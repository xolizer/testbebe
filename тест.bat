@echo off
:: Проверка на права администратора
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Пожалуйста, запустите этот файл от имени администратора.
    pause
    exit
)

echo Отключение защиты в реальном времени Microsoft Defender...
PowerShell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

echo Готово.
pause
