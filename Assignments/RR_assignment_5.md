
## Git basics - forking and contributing

Working with poblic repositories and contributing your changes.

**Forks** are copies of a repository created by users to freely experiment with changes without affecting the original project. 

**Branches** are different versions of a project within a repository, allowing for parallel development of features or fixes without altering the main codebase until changes are merged.

### Exercise 1 - Forking and getting updates

Choose an existing GitHub repository (someone else's!) and fork it.

To do that press the "Fork" button in top right.

Clone the fork to a local repository.\
(Repeat EX1 steps from the previous lesson for your new repository.)

Doing pull requests:

In your local repository create a new file, stage it, commit it and push it.

In GitHub you should see you're '1 commit ahead'. Try opening a pull request (you don't need to follow through).

If there's an edit to the repository you forked -> execute a pull\
We need to establish a link:

a) Check the configured remote repo.
```
git remote -v
```
b) Add a path to the forked remote repo.
```
git remote add newUpstream <copied_url_of_original>
```
c) Check again.
```
git remote -v
```
Fetch the information from the new upstream.
```
git fetch newUpstream
```

Merge with the new information. Then push it back to your GitHub repository (branch name can be different than main).
```
git merge newUpstream/main
```

## Assignment part 1:

Go to github and log in to your account

Fork our course repository.

Clone the repository so you can work on it locally (use the option you prefer).

Go to the `Assignments` folder, edit the `assignment5_hello.txt` file inside (e.g. write the date inside, or whatever you want to).

Stage the change, commit it and push it.

### Contributing to another repository

Sometimes you'll want the owner of the original repository to include your changes. E.g.:

- you think you've upgraded the original project.
- you're part of a team and the process of updating a central repository involves reviews, etc.

Go to your forked repository. You should see the information that you're ahead of the repository that you forked.

## Assignment part 2: Initiating a pull request
In your repository you can grab the changes from its source. But you can also try to pass your commits to it.

You can do so through the pull requests tab or by clicking the contribute button.

Do it now with the course repository.

### Question

Is there anything specific you'd like to learn during this course?


## Acknowledgements
Based on the materials prepared by dr Wojciech Hardy
