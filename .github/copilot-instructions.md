# GitHub Copilot Instructions

## Solution Overview

This solution contains multiple .NET 8 projects, including a Razor Pages web application, REST APIs, and a test project. Razor Pages should be prioritized over Blazor or ASP.NET Core MVC when generating or modifying code.

For specific API development guidelines and best practices, refer to the detailed documentation in `instructions/aspnet-rest-apis.instructions.md`.




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
