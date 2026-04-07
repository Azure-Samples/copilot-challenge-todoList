## 🚀 Running Todo App (API + Client Together)

You now have **multiple ways** to build and run the API and Client together:

---

### **Option 1: PowerShell Script (Recommended for PowerShell users)**

```bash
# From the workspace root:
.\run-all.ps1
```

**What it does:**
1. ✅ Cleans previous builds
2. ✅ Builds both projects
3. ✅ Starts API on http://localhost:5071
4. ✅ Waits 3 seconds for API to initialize
5. ✅ Starts Client (connects to API automatically)

**Requirements:** PowerShell 5.0+

---

### **Option 2: Batch Script (Windows CMD users)**

```bash
# From the workspace root:
run-all.bat
```
1. Open PowerShell
2. Navigate to the workspace: cd C:\Users\anacosta\source\githubRepo\todolistZero\demo-copilot
3. Run the script: .\run-all.bat 
4. http://localhost:5071/TodoApi

  API running on:  http://localhost:5071
  Endpoint:        /TodoApigit 
  

---

**What it does:**
- Opens two separate Command Prompt windows
- One for API, one for Client
- Easier to control each process independently

---

### **Option 3: VS Code Debugger (Built-in)**

1. Open VS Code
2. Press `Ctrl+Shift+D` to open Debug view
3. Select **"Api and App"** from the launch configuration dropdown
4. Click the Green **Play** button

This launches both the API and Client in VS Code's debug environment with breakpoint support.

---

### **Option 4: Manual - Two Terminals (Full Control)**

**Terminal 1 - API:**
```bash
dotnet build
dotnet run --project "Todo.Api\Todo.Api.csproj"
```

**Terminal 2 - Client (after API is running):**
```bash
dotnet run --project "Todo.Client\Todo.Client.csproj"
```

---

## 📋 What Happens When Both Run Together

1. **Build Phase**
   - Compiles Todo.Api and Todo.Client projects
   - All dependencies are restored
   - Output: `bin/Debug/net8.0/` binaries

2. **API Phase**
   - Starts on `http://localhost:5071`
   - Loads in-memory todo data (5 sample todos)
   - Exposes `/TodoApi` endpoint

3. **Client Phase**
   - Connects to API at `http://localhost:5071/TodoApi`
   - Retrieves all todo items
   - Displays them in console:
     ```
     Id: 1, Title: Todo 1, Completed: False
     Id: 2, Title: Todo 2, Completed: False
     ...
     ```

---

## 🔧 Troubleshooting

**Port already in use (5071)?**
```powershell
# PowerShell: Kill existing dotnet processes
Get-Process -Name dotnet | Stop-Process -Force
```

**Client can't connect to API?**
- Verify API started first (wait 3 seconds)
- Check if API is running: `curl http://localhost:5071/TodoApi` 
- Verify client URL is correct: `http://localhost:5071` (not `https`)

**Build failed?**
```bash
dotnet clean
dotnet build
```

---

## 📊 Current Configuration

- **Framework:** .NET 8.0 (upgraded from 7.0)
- **API Port:** http://localhost:5071
- **API Endpoint:** /TodoApi
- **Client Type:** Console Application
- **Data:** In-memory list (5 sample todos)

---

## 🛑 Stopping the Application

**PowerShell/Batch scripts:**
- Close the terminal windows, OR
- Press `Ctrl+C` in each window

**VS Code Debugger:**
- Click the Stop button in the Debug toolbar

**Manual terminals:**
- Press `Ctrl+C` in each terminal

