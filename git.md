# Configuration
```
$ git config --global user.name "User Name"  
$ git config --global user.email username@domain.com  
$ git config --global core.editor mcedit  
```
## Change URL for a remote repository
`git config remote.<name>.url git@<remote-domain>:<user>/<repo>.git`
or
`git config remote.<name>.url https://<user>@<remote.domain>/<user>/<repo>.git`

## Example of ~/.ssh/config (through proxy using 'corkscrew' and non-standard SSH port: 443)
```
host github.com
user <user>
hostname ssh.github.com
port 443
proxycommand corkscrew localhost 3128 %h %p

host bitbucket.org
user <user>
hostname altssh.bitbucket.org
port 443
proxycommand corkscrew localhost 3128 %h %p
```

see [Use the SSH protocol with Bitbucket](https://confluence.atlassian.com/display/BITBUCKET/Use+the+SSH+protocol+with+Bitbucket)  
and [Using SSH over the HTTPS port](https://help.github.com/articles/using-ssh-over-the-https-port)

# Setup more than one repositories to push
```
git remote set-url --add --push origin git://another/repo.git
git remote set-url --add --push origin git://one_more/repo.git
```
see [Git - Pushing code to two remotes](http://stackoverflow.com/questions/14290113/git-pushing-code-to-two-remotes)

# Change the current branch to master in git
```
git checkout better_branch
git merge --strategy=ours master    # keep the content of this branch, but record a merge
git checkout master
git merge better_branch             # fast-forward master up to the merge
```
see [Change the current branch to master in git](http://stackoverflow.com/questions/2763006/change-the-current-branch-to-master-in-git)

# Create new branch and merge

1. Add new files and commit changes
```
$ git add -A
$ git commit -a
```
2. Create new branch
```
$ git branch <branch-name>  
$ git checkout <branch-name>  
```
or equivalent command `git checkout -b <branch-name>`
   
3. Current branch `git branch`  

4. Status of current branch `git status`

5. `git remote set-head origin <branch-name>`

6. Work with new branch

7. Merge
```
$ git checkout master
$ git merge <branch-name>
```
8. Delete branch `git branch -d <branch-name>`

9. `git remote set-head origin master`

# Update a specific submodule, without updating any other submodules  
```
    $ git submodule update --init -- <specific relative path to submodule>
```

# Rename repository on github.com

## Github.com

1. Settings->Rename

## Console

2. `git remote rm origin`  
3. `git remote add origin git@github.com:"yourname"/"projectname".git`  

## Set up git to pull and push all branches
```
    $ git config --add remote.origin.push '+refs/heads/*:refs/heads/*'
    $ git config --add remote.origin.push '+refs/tags/*:refs/tags/*'
```    

or directly edit .git/config file to have something like the following:

```
[remote "origin"]
    url = user@example.com:/srv/git/repo.git
    fetch = +refs/heads/*:refs/remotes/origin/*
    fetch = +refs/tags/*:refs/tags/*
    push  = +refs/heads/*:refs/heads/*
    push  = +refs/tags/*:refs/tags/*
```
# Syncing forked submodule with upstream repository

1. Clone forked repository (if not cloned yet).
2. Specify a new remote upstream repository that will be synced with the fork.

```
$ git remote add upstream https://github.com/ORIG_OWNER/ORIG_REPOSITORY.git
```

3. Verify the new upstream repository you've specified for your fork.

```
$ git remote -v  
origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)  
origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)  
upstream  https://github.com/ORIG_OWNER/ORIG_REPOSITORY.git (fetch)  
upstream  https://github.com/ORIG_OWNER/ORIG_REPOSITORY.git (push)  
```

4. Fetch the branches and their respective commits from the upstream repository. Commits to master will be stored in a local branch, upstream/master.

```
$ git fetch upstream
remote: Counting objects: 75, done.
remote: Compressing objects: 100% (53/53), done.
remote: Total 62 (delta 27), reused 44 (delta 9)
Unpacking objects: 100% (62/62), done.
From https://github.com/ORIG_OWNER/ORIG_REPOSITORY
* [new branch]      master     -> upstream/master
```
5. Check out your fork's local master branch.

```
$ git checkout master
``` 

Switched to branch 'master'  

6. Merge the changes from upstream/master into your local master branch. This brings your fork's master branch into sync with the upstream repository, without losing your local changes.
```
$ git merge upstream/master
Updating 34e91da..16c56ad
Fast-forward
README.md                 |    5 +++--
1 file changed, 3 insertions(+), 2 deletions(-)

$ git push origin master
```
### How to create and apply a patch with Git
[How to create and apply a patch with Git](https://ariejan.net/2009/10/26/how-to-create-and-apply-a-patch-with-git/)
