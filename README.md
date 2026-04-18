## Hi!

This is a new project based on [MIT The Missing Semester](https://missing.csail.mit.edu/) and
[CSDIY Wiki](https://csdiy.wiki).

Also, the [NJU OS Course by Yanyan Jiang (specifically the hacking lectures)](https://jyywiki.cn)
and [Linux 101 by USTC LUG](https://101.lug.ustc.edu.cn) provides inspiring insights.

Suggestions are welcome, just leave an issue. I'll reply ASAP.

## Roadmaps for now:

- Where to live?
  - Terminal & Shell (or, Command Line Environment)

  - WSL (Windows Subsystem for Linux)

  - Linux Distros

  - SSH (or, Remote Development Environment)

- Where to work?
  - Vim (or, Editor)

  - LSP

  - Git (or, Version Control)

  - GitHub & GitLab (or, Git-based Online Code Platform)

- Where to deliver?
  - GNU Make

  - CMake

  - GDB

- Where to run?
  - Docker (or, Containerization)

  - Virtual Machine

- Where to talk?
  - Markdown

  - LaTeX & Overleaf (or, Online LaTeX IDE)

## Whys and Why nots

- Why `the-hacked-semester`?

- Since it's indeed `hacked`. I don't really feel it a good idea to **boast one's own course** as
  most would. What I'd expect is simply to produce a 80-out-of-100 course, simply out of
  **intolerance of low-quality boasters**. After all, the repo simply implies how I **myself** would
  **hack** tools I use, and as most licenses would disclaim, **NO WARRANTY**.

- Why not something (say, typst) included?

- First, you can leave an issue, for it might be my fault to forget about it; Then, before leaving
  an issue, make sure that what you are requesting is **NOT** left **by design** (e.g., typst);
  After that, if you insist that it **SHOULD** be present, you can still leave an issue, but please
  argue **WITH EVIDENCE**, and **WITHOUT PERSONAL CRITICISM**.

## Development Setup

### Quick Start

1. **Clone and setup**:

   ```bash
   git clone https://github.com/YardRat0117/the-hacked-semester.git
   cd the-hacked-semester
   ./scripts/setup-environment.sh
   ```

2. **View documentation locally**:

   ```bash
   pnpm run docs:serve
   # Open http://localhost:8000
   ```

3. **Format code**:

   ```bash
   pnpm run format
   ```

4. **Lint Markdown**:

   ```bash
   pnpm run lint
   ```

### Project Structure

```text
the-hacked-semester/
├── docs/           # Documentation (MkDocs source)
├── examples/       # Code examples
├── exercises/      # Practice exercises
├── assets/         # Images, slides, etc.
├── scripts/        # Setup and utility scripts
├── .github/        # GitHub Actions workflows
├── mkdocs.yml      # MkDocs configuration
├── requirements.txt # Python dependencies
└── package.json    # Node.js dependencies and scripts
```

### Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines on how to contribute content,
examples, or exercises.

## License

All content is licensed under [MIT License](LICENSE) unless otherwise specified.
