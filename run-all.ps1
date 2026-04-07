#!/usr/bin/env pwsh
# run-all.ps1
# Builds and runs Todo API and Client together

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "Todo App - Build & Run (API + Client)" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan

Write-Host "`n1. Building Todo Api and Client..." -ForegroundColor Green
dotnet clean | Out-Null
$buildResult = dotnet build
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Build failed!" -ForegroundColor Red
    exit 1
}
Write-Host "✅ Build succeeded!" -ForegroundColor Green

Write-Host "`n2. Starting Todo API on http://localhost:5071..." -ForegroundColor Cyan
$apiProcess = Start-Process -FilePath pwsh -ArgumentList "-NoExit -Command `"cd '$PWD'; dotnet run --project 'Todo.Api\Todo.Api.csproj'`"" -PassThru
Write-Host "✅ API process started (PID: $($apiProcess.Id))" -ForegroundColor Green

Write-Host "`n3. Waiting 3 seconds for API to initialize..." -ForegroundColor Yellow
Start-Sleep -Seconds 3

Write-Host "`n4. Starting Todo Client..." -ForegroundColor Cyan
$clientProcess = Start-Process -FilePath pwsh -ArgumentList "-NoExit -Command `"cd '$PWD'; dotnet run --project 'Todo.Client\Todo.Client.csproj'`"" -PassThru
Write-Host "✅ Client process started (PID: $($clientProcess.Id))" -ForegroundColor Green

Write-Host "`n=====================================" -ForegroundColor Cyan
Write-Host "✅ Both applications started!" -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "`nAPI running on:     http://localhost:5071" -ForegroundColor White
Write-Host "Endpoint:           /TodoApi" -ForegroundColor White
Write-Host "`nAPI Process ID:     $($apiProcess.Id)" -ForegroundColor White
Write-Host "Client Process ID:  $($clientProcess.Id)" -ForegroundColor White
Write-Host "`nTo stop both apps, close the terminal windows or press Ctrl+C in each." -ForegroundColor Yellow
