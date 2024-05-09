
## Git: Branches, merging, rebasing

### Branches


Part of the typical workflow

<img src="https://i.imgur.com/gUWMU0q.png " width="700">

#### Branches – advantages

- Main branch keeping a clean history of releases

- Room for experimentation without breaking anything

- Simultaneous work for many people

- Easy to reverse work on a feature and continue with main

- Separate teams can work at the same time on: larger patches, hotfixes, new features, optimisation, etc.

Note: Branches can also have branches (see https://gitbetter.substack.com/p/how-to-work-in-multiple-git-branches)

<img src="https://i.imgur.com/9G6xsil.png " width="700">

#### How do they work?
Recall master or main branch is an indicator

You create a new branch using `git branch <branch-name>`

The new branch is a new indicator with its own staging area and working directory

Lets see what happens step-by-step

1. We start with one branch: `main`

<img src="https://i.imgur.com/mtTy9kH.png " width="700">

`HEAD` points to 'where we currently are'

`main` points to the latest commit on branch

2. We create a new branch that we name "feature" with `git branch feature`

<img src="https://i.imgur.com/gnxYmVD.png " width="700">

This creates a new indicator pointing to where we are.
But HEAD still points to the main branch.

3. We use `git checkout feature` to get to the new "feature" branch

<img src="https://i.imgur.com/u3DVeC4.png " width="700">

The HEAD indicator goes to the feature branch.

#### Commands

`git branch [-l]` list/create/delete branches

`git checkout` move the HEAD pointer (switch between branches)

`git fetch` sync cached branches with remote

`git rebase [x]` make a branch [x] start from a different point

`git merge [x]` combine two branches (by joining [x] to the current)

### Exercise 1
Ok, let's do it, setup:

In folder RR_git4 create bare central repository and two cloned ones.

As dev1 create a short history of commits (minimum two) and push them

As dev2 pull the information

Now, Let's practice branching

As Dev1, create a new branch named "feature1"

List branches (try to find the appropriate `git branch` option to do that)

Switch to the new branch (use `git checkout <branch-name>`)

#### What's the new workflow?

You can add commits only to one of the branches at a time.

When you switch between branches, Git 'refreshes' your staging area and working directories to match HEAD.

Let's start with a simple commit history:

<img src="https://i.imgur.com/gnxYmVD.png " width="700">

New commits affect only the current branch

<img src="https://i.imgur.com/F0hSnDf.png " width="700">

New commits affect only the current branch

<img src="https://i.imgur.com/V4BkVu4.png " width="700">

In a big project, e.g. if you're the one working on the feature, changes to main might not be yours (other people push their features/fixes, etc. in the meantime).

Let's switch to the feature branch with `git checkout feature`

<img src="https://i.imgur.com/Ii677W9.png " width="700">

And add some commits while in there

<img src="https://i.imgur.com/yph7crB.png " width="700">

One more

<img src="https://i.imgur.com/CH0mZFn.png " width="700">

At any point you can return to the main with `git checkout main`

<img src="https://i.imgur.com/xp7F7GK.png " width="700">

## Exercise 2

Let's try working with branches

As Dev1, while in the feature1 branch, add a file, stage and commit it. Then do a push.\
Read the message and follow the hints.

Switch back to the main branch and check what's going on in your working directory (e.g. in File explorer in Windows or Finder in MacOS).

Add a file (do not commit it) and try changing branches.\
What happens? (put it somewhere as part of a new commit and push it)

As Dev2 execute `git pull` and check `git branch -l`

Execute `git checkout feature1` and check `git branch -l` again

Let Dev2 do some work

Create a new commit on the main branch

Create a new commit on the feature1 branch

Run `git status` on the main branch, push the changes

Run `git status` on the feature1 branch, push the changes

### There are two main ways of putting the results back together

You might recall `merge` from how we united main with origin/main.

<img src="https://i.imgur.com/3yJ2iE8.png" width="700">

While in main do `git merge feature`

<img src="https://i.imgur.com/QoluIh0.png" width="700">

Recall: merge creates a new commit.

You can still work on your feature branch

It doesn't include the merge (unless you also do `git merge main` while on the branch feature).

<img src="https://i.imgur.com/RwCSUiK.png " width="700">

Let's go back to the terminal

As Dev1 get all the newest updates for both branches.

Merge the feature1 branch to the main branch using `git merge <branch-name>`. Push.

Conflict resolution is the same as we once did.

### The second approach is rebasing

Rebasing is making your branch start from a different point

<img src="https://i.imgur.com/NLfjohh.png " width="700">

Let's first move to the branch we want to move (`git checkout feature`)

<img src="https://i.imgur.com/CH0mZFn.png " width="700">

Then `git rebase main` to reapply the commits

<img src="https://i.imgur.com/rZVs88x.png " width="700">

Important: rebase destroys original commits and creates new ones! Probably not a good thing if the original ones were shared with others or in a remote repository!

Also, you don't need to rebase only within the same branch

### Ok, now assume you start with this:

<img src="https://i.imgur.com/nAkSXAw.png " width="700">

Possible troublesome situations:

- feature1 branch proved a dead end, but feature2 is promising

- feature2 is actually unrelated to feature1

- main branch introduced something relevant to feature2

The solution is to rebase feature2 to main
```
git checkout feature2
git rebase --onto main feature1 feature2
git rebase --onto <new-base> <old-base> <moved-branch>
```
<img src="https://i.imgur.com/9DqWc03.png " width="700">

### Other fun stuff: detaching HEAD

What if we move our HEAD?

Check [this tutorial](https://www.cloudbees.com/blog/git-detached-head) for an easy step-by-step description (the image comes from there)

<img src="https://i.imgur.com/OEZDXFS.png " width="700">

Typically HEAD points to the branch ("you're currently here").

You can point it to an older commit instead: git checkout 87ec91d

<img src="https://i.imgur.com/4K9THmq.png " width="700">

This puts you in a "detached HEAD state".

Here you can:

- panic and go back simply by redirecting it back to the branch, e.g. git checkout master
- check what was done in this commit
- create an alternate history:

<img src="https://i.imgur.com/9qlCKL6.png " width="700">

(and turn it into a new branch if you want to keep it)

## Assignment 
1. Send me `git log` and `git branch -v` of your exercise 2
2. Imagine this is your repository

<img src="https://hackmd.io/_uploads/r1cHiXvAT.png " width="700">


You do the following:

- Rebase the Hotfix branch onto Main.
- Create a new commit on the Main branch.
- Merge Hotfix branch with the Main branch.
- Rebase Feature1 onto Main.
- What's the new situation? Draw it on a piece of paper and send me a photo :)


## Helpful links

[More on rebasing](https://www.atlassian.com/git/tutorials/rewriting-history/git-rebase)

Read [Merging vs rebasing on Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing) for a nice description of both approaches (also their individual pages).

Also, take a look at [git bisect](https://git-scm.com/docs/git-bisect), to understand when rebasing might be helpful.

Also, take a look at [git stash](https://git-scm.com/docs/git-stash).





## Questions

#### How to merge jupyter notebook files?

Have a look at [git lens VSCode extension](https://www.gitkraken.com/gitlens) 

Also [Jupyter Notebook extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter) 

And [nbdime](https://github.com/jupyter/nbdime)

#### Latex and Overleaf - its relation to MD and Quarto

#### Talk about projects and coding issues


## Acknowledgements
Based on the materials prepared by dr Wojciech Hardy
