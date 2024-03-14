
## Git basics pt 2

!Important note: Do NOT use PowerShell for this task, and if you do, you need to change the encoding of each file to UTF-8 by typing `Set-Content -Path text3.txt -Encoding utf8`

!If you're using Git Bash and haven't set the default editor to your code editor, you may want to set `nano` as default (instead of `vim`):
```
git config --global core.editor "nano"
```

### Git commands: working with a central repository

`git init --bare` to create barebones for a central repository (with no initial commits)

`git clone [repo_name] [clone_name]` to create a linked copy of the repo_name repository.

`git fetch` grab information about new commits/branches from the central repository.

`git pull` to grab the (new) commits from the central repository to our repository.

`git push` to put our (newly created) commits in the central repository.

We're going to pretend we have two developers and a central repository.


![Central and local repos](https://github.com/glowform/reproducible-research/blob/main/Assignments/RR3_1.jpg?raw=true "Central and local repos")


### Quick recap

In our workspace, let's create a new folder RR_3 and go inside

```
mkdir RR_3
cd RR_3
```

Let's create a repository named RecapRepo and go inside
```
git init RecapRepo
cd RecapRepo
git status
```
Change local user.name to "RecapRepoUser"
```
git config --local user.name "RecapRepoUser"
```


Create three files: commit the first; only stage the second; do nothing to the third
```
echo "this file will be commited" > file1.txt
echo "this file will be staged" > file2.txt
echo "this fille will be in the working directory" > file3.txt
```
```
git add file1.txt
git commit -m "Added file1.txt"
git add file2.txt
```
```
git status
```

In RR_3 create a clone of the first repository; go inside
```
cd ..
git clone RecapRepo RecapCloned
cd RecapCloned
```
View the contents; check the status
```
ls
git status
```

View the config file in the .git folder.
(e.g. in notepad)


### Exercise 5: simulating central repo with two locals
We're now going to pretend we have two people collaborating, using a central repository to manage the workflow.

In your RR_3 directory create a new, bare repository called "CentralRepo"\
(Remember to use the appropriate option when initiating the repository!)
```
cd RR_3
git init --bare CentralRepo
```

In your RR_3 directory create a clone of the CentralRepo, named Dev1
```
git clone CentralRepo Dev1
```

In your RR_3 directory create a clone of the CentralRepo, named Dev2
```
git clone CentralRepo Dev2
```

Set the local user.name for Dev1 repository to "Developer_1"
```
cd Dev1
git config --local user.name "Developer_1"
```

Set the local user.name for Dev2 repository to "Developer_2"
```
cd ../Dev2
git config --local user.name "Developer_2"
```

![Working with central repo](https://github.com/glowform/reproducible-research/blob/main/Assignments/RR3_2.jpg?raw=true "Working with central repo")

#### So far all repositories are empty. Let's imagine:
Dev1 kick-starts the project by creating the branch with one commit and sending it upstream (make sure you are in correct directory)
```
echo "This will be the file with code" > code.R
git add .
git commit -m "Added the file with code"
git status
git push
git status
```
Dev2 wants to get up-to-speed so grabs the changes
```
git pull
```

### Exercise 6: fetching and updating before pushing

As you go, try to remember what are the states of the Dev1, the Dev2 and the Central Repositories at each step. (You can even draw them)

Create a readme.txt file in your Dev1 repository.
```
cd ../Dev1
echo "first line" > readme.txt
```

Stage, commit and push the file.
```
git add .
git commit -m "Added readme.txt"
git push
```

Go to the Dev2 repository.
```
cd ../Dev2
```

Run git status
```
git status
```

Fetch information about changes from the central repository. Run git status.
```
git fetch
git status
```

Pull the information. Check folder contents.
```
git pull
ls
```

Add a new line to readme.txt and create a readme.md file.
```
echo "second line of text" >> readme.txt
echo "first line" > readme.md
```

Stage, commit and push the file to the central repository.
```
git add .
git commit -m "Added readme.md and changed readme.txt"
git push
```


In Dev1, create a text3.txt file with the line "A line added by Dev1". Stage, commit and push - what happens? Resolve the issue following the hints.
```
cd ../Dev1
echo "A line added by Dev1" > text3.txt
git add .
git commit -m "Added text3"
git push
```
Follow the instructions from Git to resolve merge conflicts.

### Exercise 7: a merge conflict
In Exercise 6 we had a divergence, but without a conflict (commits differed, but there were no conflicting changes to files).

What if two devs make two different versions of a file?

In Dev2, create a new file called text3.txt with the line "A line added by Dev2". Stage, commit and try to push. Read the hints, follow and go to step 2.

There's a conflict because Dev1 committed a different text3.txt file earlier.
We're in a merging mode. Try to see whats wrong using `git status` etc. We can view files using `type`, `more` or `cat` and then edit the file (e.g. in Notepad) to figure out what should remain. Then stage it and commit it.

The merge becomes a new commit (try git log)



## Assignment:
While in your `Dev2` repository, run these commands:
```
git status
git log
git ls-files
```
Copy the contents of Bash/CLI starting from git status and send them to me in a notepad file (j.michankow@uw.edu.pl).

## Resources

https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet

https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified

https://www.atlassian.com/git

#### Resolving merge conflicts

https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts

https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line


## Acknowledgements
Based on the materials prepared by dr Wojciech Hardy
