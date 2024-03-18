
## Git basics - working with remote repos

### Working with GitHub

There's several ways you can interact with GitHub. Let's cover a few cases:

- Start with a GitHub repository, create a local version.
- Start with a local repository, put it on GitHub.
- Fork someone's repository on GitHub, create a local version, grab updates from the original version.
- Use GitHub Desktop (or another tool)
- Run an RStudio or VSCode project connected to GitHub.
etc.

### Authentication & Passwords

We might have to go through some connection issues on our first go. Here's a good reference.

In principle, Git might ask you for authentication when you first connect with GitHub from your computer. It might be enough to log in via browser (depends on git version).

But if it asks for username and password, note that the 'password' might refer to a Personal Access Token.

How to generate one?

On GitHub, go: Account settings -> Developer settings -> Personal Access Tokens -> Generate new token.

Check user, workflow and repo and it should cover most basic usage. Copy the token and place it in the prompt instead of the password.

### Exercise 1 - GitHub to local

Go to GitHub and create a new repository.

Click the 'New' button at GitHub.

Let's start with a Readme.md file (check the relevant box).

This will initiate a non-empty repository.

Copy the HTTPS URL.

At your Repository, click the green code button and copy the HTTPS URL.

Prepare some space (a folder) for your repository and clone it.

```
mkdir repositories
cd repositories
git clone <copied_url>
```

Do some checking, for example:
```
cd MyRepoName
ls
git status
head README.md
git remote show origin
```

### Exercise 2 - Local to GitHub
Create a new repository on your local machine.

```cd ..
mkdir Ex2Repo
cd Ex2Repo
git init
```

Create a simple .txt file. Stage it and commit it.
```
echo "some text" > hello.txt
git add hello.txt
git commit -m "Added a hello.txt file"
```

Go to GitHub and create a new (empty!) repository.

Click the 'New'  button at GitHub.

**Don't start with any of the standard files!** You will then initiate a repository without a commit history (avoidng a conflict of two unrelated commit histories).


Copy the clone URL.

At your bare repository, click the green code button and copy the HTTPS URL.


Set up a connection with the remote repository.
```
git remote add origin <copied_url>
```

Push your repository contents.


`git branch -M main` will rename the master branch to main, then \
`git push -u origin main`


Note: you have to set the upstream (`-u`) for your branch (you can also do it with `--set-upstream`)


### Using GitHub with RStudio

Open RStudio.\
Create a new project with version control (Git).

`File -> New project… -> Version control -> Git`

Use the URL for one of your repositories at GitHub.\
Check how to stage, commit, push and pull.

You should now have a "Git" tab in top-right corner. Check it out.\
Use the terminal for more nuanced operations.\
You can use the terminal the same way you used Bash.

### Using GitHub with RStudio

Open VSCode\
Create a new project with version control (Git).

`File -> New Window`

See `Source Control` tab on the left and clone a repository.

Use the URL for one of your repositories at GitHub.\
Check how to stage, commit, push and pull.

Use the terminal (`View -> Terminal`) for more nuanced operations.\
You can use the terminal the same way you used Bash.

## Assignment:

- Send me (j.michankow@uw.edu.pl) a `git log` of your Exercise 2 
- a screenshot of your cloned repo in VSCode (with source control tab opened) or RStudio (with git tab opened)

### Next - forking repositories and contributing

## Resources

https://happygitwithr.com/

https://code.visualstudio.com/docs/sourcecontrol/intro-to-git

## Acknowledgements
Based on the materials prepared by dr Wojciech Hardy
