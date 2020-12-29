# External resources
-   https://sethrobertson.github.io/GitFixUm/fixup.html

# Basic flow
```sh
$ git add <file> (or "git add .")
$ git commit -m 'your message here'
$ git push origin master
```

# Push
### Force(HARD) push active branch
```sh
git push origin +HEAD
```
-   Push your commits to the remote

# Merge
### Abort Merge
```sh
git merge --abort
```
-   Abort Last Merge

# Remove files

### Remove umtracked files
```sh
$ git clean -n
$ git clean -f
```

# Remote URL
### Remove Origin
```sh
git remote rm origin
```
-   Remove remote URL from the Repository

### Add Origin
```sh
git remote add origin <git uri>
```
-   Add Remote URL to the Repository

# Credentials
### Store Credentials to locally (Username and Password)
```sh
git config credential.helper store
git push <git uri>
```

### Set Email and Name for repository (Global for all repositories)
```sh
$ git config --global user.email "you@example.com"
$ git config --global user.name "Your Name"
```

### Set Email and Name for repository (For current repositories)
```sh
$ git config user.email "you@example.com"
$ git config user.name "Your Name"
```

# Checkout
### Checkout to remote branch
```sh
$ git checkout -b <branch_name> remotes/origin/<branch_name>
```

# Log/Info
### What is the nearest commit that resides on a branch other than the current branch, and which branch is that? (Check parent branch name)
`Ref: https://stackoverflow.com/questions/3161204/how-to-find-the-nearest-parent-of-a-git-branch/3162929#3162929`
```sh
$ git show-branch -a \
| grep '\*' \
| grep -v `git rev-parse --abbrev-ref HEAD` \
| head -n1 \
| sed 's/.*\[\(.*\)\].*/\1/' \
| sed 's/[\^~].*//'
```

### Get parent branch name
1. Add below line to your ".gitconfig"
```sh
[alias]
    parent = "!git show-branch | grep '*' | grep -v \"$(git rev-parse --abbrev-ref HEAD)\" | head -n1 | sed 's/.*\\[\\(.*\\)\\].*/\\1/' | sed 's/[\\^~].*//' #"
```
2. Hit below cmd to get the parent branch name
```sh
$ git parent
```

### Go to a particular commit of a git repository
```sh
$ git checkout <HASH>
$ git submodule update
```

### Going back to the most recent commit
```sh
$ git checkout <active_branch_name>
$ git submodule update
```

# Removing the commites
## Removing the last commit
To remove the last commit from git, you can simply run `git reset --hard HEAD^` If you are removing multiple commits from the top, you can run `git reset --hard HEAD~2` to remove the last two commits. You can increase the number to remove even more commits.

If you want to "`uncommit`" the commits, but keep the changes around for reworking, remove the "`--hard`": git reset HEAD^ which will evict the commits from the branch and from the index, but leave the working tree around.

If you want to save the commits on a new branch name, then run git branch newbranchname before doing the git reset.
