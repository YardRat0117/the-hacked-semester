# Contributing to The Hacked Semester

Thank you for your interest in contributing to The Hacked Semester! This document provides
guidelines and instructions for contributing.

## How to Contribute

### 1. Reporting Issues

If you find a bug, have a suggestion, or want to request a feature:

- Check if the issue already exists
- Use the issue template if available
- Provide clear steps to reproduce (for bugs)
- Include relevant context and examples

### 2. Suggesting New Content

If you want to suggest a new topic or tool:

- Explain why it should be included
- Provide evidence of its usefulness
- Suggest where it fits in the existing structure
- Include relevant resources and documentation links

### 3. Contributing Content

If you want to add or improve content:

#### Documentation

1. Fork the repository
2. Create a new branch: `git checkout -b topic/your-topic-name`
3. Add or edit Markdown files in `docs/`
4. Follow the existing style and structure
5. Add examples in `examples/` if applicable
6. Add exercises in `exercises/` if applicable
7. Test your changes locally
8. Submit a pull request

#### Examples and Exercises

- Place examples in `examples/category/`
- Place exercises in `exercises/category/`
- Include test scripts for exercises when possible
- Ensure code is well-commented and follows best practices

## Development Setup

### Prerequisites

- Python 3.8+ (for MkDocs)
- Node.js 16+ (for formatting and linting)
- Git

### Local Development

```bash
# Clone the repository
git clone https://github.com/yourusername/the-hacked-semester.git
cd the-hacked-semester

# Install Python dependencies
pip install -r requirements.txt

# Install Node.js dependencies
npm install

# Serve documentation locally
npm run docs:serve

# Format code
npm run format

# Lint Markdown
npm run lint
```

### Testing

- Run `npm run format:check` to check formatting
- Run `npm run lint:md` to check Markdown
- Run `mkdocs build --strict` to build documentation
- Test any scripts or examples you add

## Style Guidelines

### Documentation

- Use clear, concise language
- Include practical examples
- Link to official documentation
- Use consistent formatting
- Follow the existing structure

### Markdown

- Use headers consistently (# for main title, ## for sections)
- Wrap code blocks with triple backticks and language specification
- Use descriptive link text (not "click here")
- Keep line length under 100 characters
- Use lists for multiple items

### Code Examples

- Include comments explaining complex parts
- Use meaningful variable names
- Follow language-specific best practices
- Test examples before submitting

### Git Commits

- Use descriptive commit messages
- Keep commits focused on one change
- Reference issue numbers when applicable
- Follow conventional commits if possible

## Project Structure

```text
the-hacked-semester/
├── docs/           # Documentation
├── examples/       # Code examples
├── exercises/      # Practice exercises
├── assets/         # Images, slides, etc.
├── scripts/        # Setup and utility scripts
└── .github/        # GitHub Actions workflows
```

## Code of Conduct

- Be respectful and inclusive
- Focus on constructive feedback
- Assume good intent
- Help create a welcoming environment

## License

By contributing, you agree that your contributions will be licensed under the same
[MIT License](LICENSE) that covers the project.

## Questions?

- Open an issue for discussion
- Check existing documentation first
- Be patient - this is a volunteer project

Thank you for helping make The Hacked Semester better!
