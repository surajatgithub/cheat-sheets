# Push
### Force(HARD) push active branch
```sh
git push origin +HEAD
```
```sh
Push your commits to the remote
```

# Merge
### Abort Merge
```sh
git merge --abort
```
```sh
Abort Last Merge
```

# Remote URL
### Remove Origin
```sh
git remote rm origin
```
```sh
Remove remote URL from the Repository
```

### Add Origin
```sh
git remote add origin <git uri>
```
```sh
Add Remote URL to the Repository
```

# Credentials
### Store Credentials to locally (Username and Password)
```sh
git config credential.helper store
git push <git uri>
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