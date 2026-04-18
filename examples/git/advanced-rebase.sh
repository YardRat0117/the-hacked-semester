#!/bin/bash
# Advanced Git rebase example

echo "=== Git Interactive Rebase Example ==="
echo
echo "Interactive rebase allows you to rewrite commit history."
echo "Useful for:"
echo "1. Squashing multiple commits into one"
echo "2. Reordering commits"
echo "3. Editing commit messages"
echo "4. Dropping unwanted commits"
echo

echo "Example command:"
echo "  git rebase -i HEAD~3  # Rebase last 3 commits"
echo
echo "In the interactive editor, you'll see:"
cat << 'EDITOR'
pick a1b2c3d Add feature X
pick b2c3d4e Fix bug in feature X
pick c3d4e5f Update documentation

# Rebase w1x2y3z..c3d4e5f onto w1x2y3z
#
# Commands:
# p, pick = use commit
# r, reword = use commit, but edit the commit message
# e, edit = use commit, but stop for amending
# s, squash = use commit, but meld into previous commit
# f, fixup = like "squash", but discard this commit's log message
# d, drop = remove commit
EDITOR

echo
echo "Change 'pick' to:"
echo "  'squash' or 's' to combine with previous commit"
echo "  'reword' or 'r' to edit commit message"
echo "  'drop' or 'd' to remove commit"
