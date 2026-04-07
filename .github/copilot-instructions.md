# GitHub Copilot Instructions

## Solution Overview

This solution contains multiple .NET 8 projects, including a Razor Pages web application, REST APIs, and a test project. Razor Pages should be prioritized over Blazor or ASP.NET Core MVC when generating or modifying code.

For specific API development guidelines and best practices, refer to the detailed documentation in .

## Project Structure (First-Level Folders)
...

## Code Standards and Conventions
This document defines the code standards and conventions for this solution, which includes .NET 8 projects with a focus on Razor Pages, REST APIs, and client-side JavaScript.

### General Principles
- **Consistency**: Follow existing patterns and structure in the solution.
- **Readability**: Write clear, self-explanatory code and comments where necessary.
- **Simplicity**: Prefer simple, maintainable solutions over complex ones.

### Project Structure ## - Organize code into appropriate folders:
  ...
  
### Naming Conventions

- **Classes, Interfaces, Enums**: PascalCase (e.g., `TodoItem`, `ITodoService`)
- **Methods, Properties**: PascalCase (e.g., `GetAll`, `IsComplete`)
- **Variables, Parameters, Fields**: camelCase
- **Constants**: PascalCase (e.g., `DefaultPageSize`)

### APIs
- Use attribute routing
- ...

### Entity Framework Core
### Dependency Injection
### Logging
### Testing

## Code Review Guidelines
### General Principles

- **Clarity**: Ensure the code is easy to understand and well-documented where necessary.
- **Consistency**: Verify that the code follows the project's coding standards and conventions.
- **Functionality**: Confirm that the code works as intended and meets the requirements of the pull request.
- **Performance**: Check for any potential performance issues or improvements.
- **Security**: Identify and address any security vulnerabilities or concerns.

### Best Practices

- Provide constructive feedback and suggest improvements where applicable.
- Avoid nitpicking; focus on significant issues that impact the quality or functionality of the code.
- Test the changes locally if possible to verify their behavior.
- Approve the pull request only when all concerns have been addressed and the code meets the required standards.

## GitHub Copilot Best Practices

### Using Copilot Effectively
- Provide clear context in prompts (component type, requirements, patterns)
- Reference existing code patterns for consistency
- Use Copilot for boilerplate: controllers, models, test cases
- Always review generated code against naming conventions and logging standards
- Example: "Create a [ComponentType] following the [existing pattern] with structured logging"

## Skills for CRUD Endpoints
For detailed guidance on creating REST API endpoints, refer to:
...
