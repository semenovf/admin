### Configuration
    $ git config --global user.name "User Name"  
    $ git config --global user.email username@domain.com  
    $ git config --global core.editor mcedit  


### Create new branch and merge
1. Add new files and commit changes
    git add -A  
    git commit -a  

2. Create new branch  
    git branch &lt;branch-name&gt;  
    git checkout &lt;branch-name&gt;
or equivalent command `git checkout -b &lt;branch-name&gt;`
   
3. Current branch `git branch`  

4. Status of current branch `git status`

5. `git remote set-head origin &lt;branch-name&gt;`

6. Work with new branch

7. Merge 
    git checkout master
    git merge &lt;branch-name&gt;

8. Delete branch `git branch -d &lt;branch-name&gt;`

9. `git remote set-head origin master`

### Rename repository on github.com

#### Github.com  
1. Settings->Rename

#### Console  
2. `git remote rm origin`  
3. `git remote add origin git@github.com:"yourname"/"projectname".git`  
