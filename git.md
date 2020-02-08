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

