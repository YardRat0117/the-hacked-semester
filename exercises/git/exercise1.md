# Git Exercise 1: Basic Version Control

## Objective

Practice basic Git workflow: init, add, commit, log.

## Setup

1. Create a new directory for this exercise:

   ```bash
   mkdir git-practice
   cd git-practice
   ```

## Tasks

1. **Initialize Repository**
   - Initialize a new Git repository
   - Check the repository status

2. **First Commit**
   - Create a file `README.md` with your name and the date
   - Add the file to staging
   - Commit with message "Initial commit: Add README"

3. **Multiple Changes**
   - Edit `README.md` to add a project description
   - Create a new file `notes.txt` with some learning notes
   - Add both changes
   - Commit with message "Add project description and notes"

4. **View History**
   - View commit history in one-line format
   - View detailed commit history

5. **Undo Changes**
   - Make a change to `README.md` that you don't want to keep
   - Discard the change (without committing)

## Verification

Check that:

- You have at least 2 commits in your history
- `README.md` and `notes.txt` are tracked by Git
- You can see both commits in `git log`

## Tips

- Use `git status` frequently to see what's happening
- Write descriptive commit messages
- One logical change per commit

---

[Next Exercise →](exercise2.md)
