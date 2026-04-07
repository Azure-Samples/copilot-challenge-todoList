@echo off
REM run-all.bat
REM Builds and runs Todo API and Client together

cls
echo.
echo =====================================
echo Todo App - Build ^& Run (API + Client)
echo =====================================
echo.

echo 1. Building Todo Api and Client...
call dotnet clean
call dotnet build
if errorlevel 1 (
    color 0C
    echo Build failed!
    pause
    exit /b 1
)
echo Build succeeded!
echo.

echo 2. Starting Todo API on http://localhost:5071...
start "Todo API" cmd /k "title Todo API && dotnet run --project Todo.Api\Todo.Api.csproj"
echo API window opened.
timeout /t 3 /nobreak
echo.

echo 3. Starting Todo Client...
start "Todo Client" cmd /k "title Todo Client && dotnet run --project Todo.Client\Todo.Client.csproj"
echo.

echo =====================================
echo Both applications started!
echo =====================================
echo.
echo API running on:  http://localhost:5071
echo Endpoint:        /TodoApi
echo.
echo To stop both apps, close the terminal windows or press Ctrl+C in each.
echo.
pause
