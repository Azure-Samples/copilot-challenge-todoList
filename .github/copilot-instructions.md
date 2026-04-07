# GitHub Copilot Instructions

## Solution Overview

This solution contains multiple .NET 8 projects, including a Razor Pages web application, REST APIs, and a test project. Razor Pages should be prioritized over Blazor or ASP.NET Core MVC when generating or modifying code.

For specific API development guidelines and best practices, refer to the detailed documentation in `instructions/aspnet-rest-apis.instructions.md`.


## Project Structure (First-Level Folders)

- **src/MyFirstProject.WebApp**
  - Controllers: Contains controller classes that handle HTTP requests to TodoItemApi and responses, implementing the controller part of the MVC pattern. These classes process user input, interact with models, and select views to render.
  - Models: Houses data model classes that represent the application's data structure and business logic. These models are used by controllers and views to pass data throughout the application.
  - Views: Contains Razor view files (.cshtml) that define the UI of the application. These files combine HTML markup with C# code to generate dynamic web pages rendered to the user.
  - wwwroot: The web root folder that stores static files like CSS, JavaScript, images, and client-side libraries. These files are directly accessible to clients through HTTP requests.

- **src/MyFirstProject.TodoApi**
  - Controllers: Contains REST API controllers that handle HTTP requests related to the Todo functionality, returning data in formats like JSON rather than HTML views.
  - Models: Includes data models and Entity Framework Core context classes for the domains, defining the database schema and relationships. The DbContext implementation (TodoItemContext) manages all entities. It uses SQL Server as the database provider and supports automatic database creation with seed data when the application starts.
  - Properties: Contains application configuration files, including launch settings for development environments.

- **src/MyFirstProject.Tests**
    - Test files and folders as organized for unit/integration testing

## Code Standards and Conventions

This document defines the code standards and conventions for this solution, which includes .NET 8 projects with a focus on Razor Pages, REST APIs, and client-side JavaScript.

### General Principles

- **Consistency**: Follow existing patterns and structure in the solution.
- **Readability**: Write clear, self-explanatory code and comments where necessary.
- **Simplicity**: Prefer simple, maintainable solutions over complex ones.

### Project Structure

- Organize code into appropriate folders: `Models`, `Controllers`, `Views`, `wwwroot`, etc.
- Razor Pages should be placed in the `Pages` folder, following feature-based organization if possible.

### Naming Conventions

- **Classes, Interfaces, Enums**: PascalCase (e.g., `TodoItem`, `ITodoService`)
- **Methods, Properties**: PascalCase (e.g., `GetAll`, `IsComplete`)
- **Variables, Parameters, Fields**: camelCase (e.g., `todoItem`, `isComplete`)
- **Constants**: PascalCase (e.g., `DefaultPageSize`)
- **File Names**: Match the class or Razor Page name.

### Razor Pages

- Use [BindProperty] for model binding where appropriate.
- Use `@page` directive at the top of Razor Pages.
- Keep code-behind logic in `.cshtml.cs` files; keep markup in `.cshtml` files.
- Use tag helpers for form elements and validation.

### APIs

- Use attribute routing (`[Route]`, `[HttpGet]`, etc.) for controllers and actions.
- Return appropriate HTTP status codes.
- Use async/await for I/O-bound operations.
- Validate input models using `[ApiController]` and data annotations.

### Entity Framework Core

- Use `DbContext` for data access.
- Use migrations for schema changes.
- Use navigation properties for relationships.

### Dependency Injection

- Register services in `Program.cs` using `builder.Services`.
- Use constructor injection for dependencies.

### Logging

- Use `ILogger<T>` for logging.
- Log at appropriate levels (`Information`, `Warning`, `Error`).
- Every `catch` block must write a log entry with the exception and relevant execution context before handling or rethrowing the error.

### Testing

- Place tests in the `MyFirstProject.Tests` project.
- Use MSTes.
- Name test methods with a clear intent (e.g., `Should_ReturnAllTodos_When_Called`).

### JavaScript (site.js, jQuery Validation)

- Place custom scripts in `wwwroot/js/site.js`.
- Use unobtrusive validation with jQuery Validate and jQuery Validate Unobtrusive.
- Use camelCase for variable and function names.
- Prefer `let` and `const` over `var`.
- Avoid polluting the global namespace.
- Use strict equality (`===` and `!==`).
- Comment complex logic.

### HTML & Razor

- Use semantic HTML elements.
- Use tag helpers for forms, links, and validation.
- Use `@section Scripts` for page-specific scripts.
- Localize validation messages where possible.

### Commit Standards

- Write clear, concise commit messages in English.
- Reference related issues or work items when applicable.
- Ensure all tests pass and the solution builds before committing.
- Use the following format for commit messages:
  - `feat: [description]` for new features
  - `fix: [description]` for bug fixes
  - `docs: [description]` for documentation changes
  - `style: [description]` for code style changes (e.g., formatting)
  - `refactor: [description]` for code refactoring
  - `test: [description]` for adding or updating tests
  - `chore: [description]` for maintenance tasks
  - `pipe: [description]` for pipeline or CI/CD changes

## Required Before Each Commit

- Run `dotnet build .\src\MyFirstProject.sln` to ensure code follows project standards
- Ensure all tests pass by running `dotnet test .\src\MyFirstProject.Tests\MyFirstProject.Tests.csproj` in the terminal
- Ensure all code adheres to the project's coding standards and conventions
- Make sure that the repository structure documentation is correct and accurate in the Copilot Instructions file
- Commit very frequently, rather than waiting a long time between commits. When in doubt, commit!

## Code Review Guidelines

### General Principles

- **Clarity**: Ensure the code is easy to understand and well-documented where necessary.
- **Consistency**: Verify that the code follows the project's coding standards and conventions.
- **Functionality**: Confirm that the code works as intended and meets the requirements of the pull request.
- **Performance**: Check for any potential performance issues or improvements.
- **Security**: Identify and address any security vulnerabilities or concerns.

### Checklist for Pull Request Reviewers

1. **Security**:
   - Ensure input validation and sanitization are in place.
   - Check for proper authentication and authorization mechanisms.
   - Review for potential vulnerabilities (e.g., SQL injection, XML injection, XSS).

2. **Code Quality**:
  - Is the code readable and maintainable?
  - Are there any unnecessary or redundant lines of code?
  - Does the code follow the naming conventions and structure defined in this document?
  - Follow the existing C# coding style and conventions present in the solution and describe in the Naming Conventions section.

3. **Testing**:
  - Are there sufficient unit and integration tests?
  - Do all tests pass successfully?
  - Are edge cases and error conditions handled appropriately?
  - Use MSTest for unit and integration tests, following the patterns in the test project.

4. **Documentation**:
  - Is the code adequately commented?
  - Are any new features or changes documented in the README or other relevant files?
  - All methods must contain documentation comments following the .NET Framework standard. Use XML documentation comments (///) for all methods.

5. **Dependencies**:
  - Are all dependencies necessary and up-to-date?
  - Are there any potential conflicts with existing dependencies?

6. **Pull Request Description**:
  - Is the pull request description clear and detailed?
  - Does it include relevant context, screenshots, or references to related issues?

7. **Build and Deployment**:
  - Does the code build successfully without errors or warnings?
  - Are there any changes to the build or deployment process that need to be reviewed?

8. **Logging**: 
  - Use the built-in logging abstractions (`ILogger<T>`) for all logging needs.

### Best Practices

- Provide constructive feedback and suggest improvements where applicable.
- Avoid nitpicking; focus on significant issues that impact the quality or functionality of the code.
- Test the changes locally if possible to verify their behavior.
- Approve the pull request only when all concerns have been addressed and the code meets the required standards.

## Azure-Specific Instructions

### General Guidelines

- Always use Azure tools and services when handling Azure-related requests.
- Follow Azure best practices for code generation, deployment, and operations.
- Ensure that all Azure resources are provisioned and managed using Infrastructure as Code (IaC) tools like Bicep or Terraform.

### Azure Code Standards

- Use the `azure_development-get_code_gen_best_practices` tool for generating Azure-related code.
- Follow Azure Functions best practices when working with serverless functions.
- Adhere to Azure Static Web Apps guidelines for static web applications.

### Deployment to Azure

- Use the `azure_development-get_deployment_best_practices` tool to ensure deployments are secure, reliable, and efficient.
- Validate Azure resource quotas and regions before deployment.
- Use Azure Developer CLI (`azd`) for streamlined deployment processes.

### Logging and Monitoring

- Use Azure Monitor and Application Insights for logging and monitoring Azure resources.
- Ensure diagnostic settings are enabled for all Azure resources.

### Security

- Use Azure Key Vault for managing secrets and sensitive configuration data.
- Implement role-based access control (RBAC) for all Azure resources.

### Testing and Validation

- Test Azure deployments using integration tests that validate resource configurations and connectivity.
- Use Azure-specific testing tools where applicable.

### Documentation

- Document all Azure-related configurations and deployments in the repository.
- Include architecture diagrams and deployment steps in the `docs/` folder.


## Playwright Testing Instructions

### General Guidelines
- Use Playwright for end-to-end testing of web applications.
- Follow best practices for writing maintainable and reliable Playwright tests.

### Run the application before executing tests
- Ensure the web application is running locally or in a test environment before executing Playwright tests.
- To run the application using Docker Compose file `DockerCompose.yml` in the `src` folder, follow these steps:
  1. Open a terminal and navigate to the `src` directory of the project.
  2. Execute the following command to start the application: `docker compose -f DockerCompose.yml up -d --build`.
  3. Wait for the application to start and ensure all services are running correctly.
  4. Once the application is running, you can proceed to execute your Playwright tests.
  5. After completing the tests, you can stop the application by executing: `docker compose -f DockerCompose.yml down`.

## GitHub Copilot Best Practices

### Using Copilot Effectively
- Provide clear context in prompts (component type, requirements, patterns)
- Reference existing code patterns for consistency
- Use Copilot for boilerplate: controllers, models, test cases
- Always review generated code against naming conventions and logging standards
- Example: "Create a [ComponentType] following the [existing pattern] with structured logging"

## Skills for CRUD Endpoints

For detailed guidance on creating REST API endpoints, refer to:
- [SKILL-REST-API-CRUD.md](.github/skills/SKILL-REST-API-CRUD.md)

When generating or modifying API endpoints, follow the patterns defined in this skill for consistent logging, validation, and error handling.
