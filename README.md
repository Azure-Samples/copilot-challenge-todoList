# Demo-Copilot Solution Overview

Demo-Copilot is a comprehensive .NET solution demonstrating best practices for building modern cloud-native applications on Azure.

## Project Structure

- **Todo.Api** — ASP.NET Core Web API project
- **Todo.UnitTest** — MSTest project for testing
- **Todo.Client** — Console application client

## Core Standards

### Code Conventions

- **PascalCase** for classes, methods, and public members
- **camelCase** for variables, parameters, and private fields
- **XML documentation comments** in Portuguese (pt-br) for all public APIs

### Testing & Quality

- MSTest framework for unit tests
- Positive & negative scenario coverage
- Async/await patterns throughout
- Proper HTTP status codes in APIs

### Architecture Principles

- Dependency Injection via Program.cs
- Logging with ILogger<T> in all exception handlers
- REST APIs with attribute routing
- Clean separation of concerns (Controllers, Models, Services, Data Access)

## Key Technologies

- .NET 7/8 runtime
- Entity Framework Core for data access
- Azure Cosmos DB for NoSQL data (when applicable)
- Azure App Service for hosting
- Azure Key Vault for secrets management

## Getting Started

```bash
# Build
dotnet build .\src\MyFirstProject.sln

# Test
dotnet test .\src\MyFirstProject.Tests\MyFirstProject.Tests.csproj

# Run
dotnet run --project .\src\MyFirstProject.WebApp\
