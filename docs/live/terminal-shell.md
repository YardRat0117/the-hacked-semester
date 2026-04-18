# Terminal & Shell

The command line interface (CLI) is the most powerful tool in a developer's toolkit. This guide
covers essential shell skills.

## Why Use the Shell?

- **Efficiency**: Automate repetitive tasks
- **Power**: Combine simple tools to solve complex problems
- **Ubiquity**: Available on all development systems
- **Scriptability**: Everything can be automated

## Basic Commands

```bash
# Navigation
pwd                  # Print working directory
ls                   # List files
cd                   # Change directory

# File operations
cp                   # Copy files
mv                   # Move/rename files
rm                   # Remove files
mkdir                # Create directory

# Text processing
cat                  # Concatenate and display files
grep                 # Search text
sed                  # Stream editor
awk                  # Text processing language

# System information
ps                   # Process status
top                  # Display processes
df                   # Disk free space
du                   # Disk usage
```

## Shell Features

### Tab Completion

Press Tab to complete commands, filenames, and directories.

### History

```bash
history              # Show command history
!n                   # Execute command number n
!!                   # Repeat last command
^old^new             # Replace in previous command
```

### Pipes and Redirection

```bash
command1 | command2  # Pipe output to input
command > file       # Redirect output to file
command >> file      # Append output to file
command < file       # Redirect file to input
```

## Shell Scripting Basics

```bash
#!/bin/bash
# This is a comment

# Variables
name="World"
echo "Hello, $name!"

# Conditionals
if [ -f "$file" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

# Loops
for i in {1..5}; do
    echo "Number: $i"
done

# Functions
greet() {
    echo "Hello, $1!"
}
greet "Alice"
```

## Common Shells

- **bash**: Bourne Again Shell (default on many systems)
- **zsh**: Z Shell (modern, feature-rich)
- **fish**: Friendly Interactive Shell (user-friendly)

## Configuration Files

- `~/.bashrc` – bash configuration
- `~/.zshrc` – zsh configuration
- `~/.profile` – Login configuration

## Exercises

1. Navigate to your home directory and list all files
2. Create a script that greets the user
3. Find all .md files in the current directory
4. Count the number of lines in a file

## Next Steps

- Learn advanced shell scripting
- Customize your prompt
- Master command-line tools (find, xargs, etc.)
- Explore shell frameworks (oh-my-zsh, etc.)

---

[← Back to Where to live?](index.md) | [Next: WSL →](wsl.md)
