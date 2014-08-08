### Configuration
    $ git config --global user.name "User Name"  
    $ git config --global user.email username@domain.com  
    $ git config --global core.editor mcedit  

#### Change URL for a remote repository
`git config remote.<name>.url git@<remote-domain>:<user>/<repo>.git`
or
`git config remote.<name>.url https://<user>@<remote.domain>/<user>/<repo>.git`

#### Example of ~/.ssh/config (through proxy using 'corkscrew' and non-standard SSH port: 443)
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

see [Use the SSH protocol with Bitbucket](https://confluence.atlassian.com/display/BITBUCKET/Use+the+SSH+protocol+with+Bitbucket)  
and [Using SSH over the HTTPS port](https://help.github.com/articles/using-ssh-over-the-https-port)

### Setup more than one repositories to push

	git remote set-url --add --push origin git://another/repo.git  
	git remote set-url --add --push origin git://one_more/repo.git  

see [Git - Pushing code to two remotes](http://stackoverflow.com/questions/14290113/git-pushing-code-to-two-remotes)

### Change the current branch to master in git

	git checkout better_branch  
	git merge --strategy=ours master    # keep the content of this branch, but record a merge  
	git checkout master  
	git merge better_branch             # fast-forward master up to the merge  

see [Change the current branch to master in git](http://stackoverflow.com/questions/2763006/change-the-current-branch-to-master-in-git)

### Create new branch and merge

1. Add new files and commit changes

    git add -A  
    git commit -a  

2. Create new branch

    git branch <branch-name>  
    git checkout <branch-name>  

or equivalent command `git checkout -b <branch-name>`
   
3. Current branch `git branch`  

4. Status of current branch `git status`

5. `git remote set-head origin <branch-name>`

6. Work with new branch

7. Merge 
    git checkout master  
    git merge <branch-name>  

8. Delete branch `git branch -d <branch-name>`

9. `git remote set-head origin master`

### Rename repository on github.com

#### Github.com  
1. Settings->Rename

#### Console  
2. `git remote rm origin`  
3. `git remote add origin git@github.com:"yourname"/"projectname".git`  

### Set up git to pull and push all branches
    $ git config --add remote.origin.push '+refs/heads/*:refs/heads/*'
    $ git config --add remote.origin.push '+refs/tags/*:refs/tags/*'
    
or directly edit .git/config file to have something like the following:

    [remote "origin"]
            url = user@example.com:/srv/git/repo.git
            fetch = +refs/heads/*:refs/remotes/origin/*
            fetch = +refs/tags/*:refs/tags/*
            push  = +refs/heads/*:refs/heads/*
            push  = +refs/tags/*:refs/tags/*
