# Git Basic Commands Examples

## Initializing a Repository

```bash
# Initialize a new git repository
git init

# Clone an existing repository
git clone https://github.com/user/repo.git
```

## Basic Workflow

```bash
# Check status
git status

# Add changes
git add filename.txt
git add .  # Add all changes

# Commit changes
git commit -m "Add feature X"

# View history
git log --oneline
```

## Branching

```bash
# Create and switch to new branch
git checkout -b feature-branch

# List branches
git branch

# Switch branches
git checkout main
git checkout feature-branch

# Merge branch
git checkout main
git merge feature-branch
```

## Remote Operations

```bash
# Add remote
git remote add origin https://github.com/user/repo.git

# Push to remote
git push -u origin main

# Pull from remote
git pull origin main

# Fetch from remote
git fetch origin
```
