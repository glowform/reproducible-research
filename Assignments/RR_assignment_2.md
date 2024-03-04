
## Git basics

### Installing git

git --version\
where git\
which git

Download and install Git for Windows https://gitforwindows.org/

Linux:\
$ sudo apt install git-all\

On mac\
git --version

https://git-scm.com/book/en/v2/Getting-Started-Installing-Git


### Exercise 0

Open up the terminal\
Pick a space for your reproducible research materials and navigate there



Create a new folder named RR_git1\
mkdir RR_git1

Navigate to your new folder\
cd RR_git1\

Create a classes.txt file with a line with today's date.\
echo "3/6/2024" > classes.txt

### Basic git commands

git, git --help to display git inline help\
git [cmd] --help to display web help about cmd\
git --version to display diagnostic info (version)\
git status to display local repository status\
git log to display history of commits

git init [repo_name] to initialize an empty repository in the current [or specified] directory\
git clone [repo_name] [clone_name] to create a linked copy of a repository

git config -l to view all configuration options

Config structure: git config [-l] [--scope] [option_name] [value]

There are three levels of configuration (i.e. scope):\
--system - pertains to repositories of all system users\
--global - pertains to all user's repositories, overrides system settings\
--local (default) - pertains to the current repository, overrides global settings

Note: global configuration will be visible only if you've used Git before (and added some options)\
Note 2: local configuraiton will be visible only if we're in a Git repository

git config -l --local

### Exercise 1

In your RR_git1 directory, initiate a git repository named EX1 and enter it\
(hint: you can either initiate it with that name, or create a folder named EX1, enter it, and initiate the repository inside)

git init EX1\
cd EX1

or

mkdir EX1\
cd EX1\
git init

List all available configuration options.\
git config -l

List all global options\
git config -l --global

(Note: this will only work if you've ever changed any global options)\

List all local options\
git config -l --local

Set global option 'user.name' to your name\
git config --global user.name "Name Surname"

Set global option 'user.email' to your e-mail\
git config --global user.email "your.email@smth.smth"

List all global options, check the difference\
git config -l --global

Set local option 'user.name' to your initials\
git config --local user.name "AB"

List all local options\
git config -l --local


git add [filename(s)] to add files to the staging area\
git add . to add all new/modified files to the staging area\
git commit -m "<commit description>" to create a new commit with what's in the staging area

At any point you can:\
git status to verify where you are, and what are the differences between the three trees\
git diff to compare last commit with what's in the working directory\
git log to view the commit history

### Exercise 2

In your RR_git1 directory, initiate a git repository named EX2\
cd ..\
git init EX2

Create a file named README.md, add a single line of text inside, save the file [hint: you can use echo or create it manually with e.g. Notepad]\
touch README.md\
echo "one line" >> README.md

(check git status and git diff to get a better feel of this)

Stage the new file.\
git add README.md

Commit the file (remember to include a helpful commit description!)\
git commit -m "Added README.md with one line of text"

(check git status and git diff and git log to get a better feel of this)\

### Exercise 3

Add another line of text to the file you created.\
echo "a second line" >> README.md

Create a new file named "readme.txt".\
touch readme.txt

Create an empty folder named "data"\
mkdir data

Run the repository diagnostics as above.\
git status

Stage and commit the modifed file and the new file.\
git add .\
git commit -m "Modified README.md and added readme.txt"

Check git log, etc. again.\
git log\
git status

### Exercise 4

using .gitignore\
Create data/data1.csv file and fill it with a random data line (can be just comma-separated text, it doesn't matter), check status and diff

Create a .gitignore file (yes, starting with a dot), put the word 'data' inside (it's the name of our directory), check status and diff\
.gitignore is a file that tells git to ignore certain elements. Should we commit it? <- depends on the workflow and, e.g., who we're working with (we might not want to share it with collaborators)



## Assignment:
While in your EX2 repository, run these four commands:\
git status\
git log\
git ls-files\
git ls-files -o

Copy the contents of Bash/CLI starting from git status and send them to me in a notepad file (j.michankow@uw.edu.pl).

Try to store your files in a safe place so we can pick up where we left next time.
