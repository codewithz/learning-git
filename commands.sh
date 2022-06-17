# Configuring GIt 

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 ~
$ git config --global user.name "codewithz"

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 ~
$ git config --global user.email "zartab@codewithz.com"

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 ~
$ git config --global color.ui auto

TO check the config 

git config -l 

# Initialize a Working Directory

Switch to the project folder 

git init .

# Initialized empty Git repository in D:/SCB/2022/CEP June 2022/Git/learning-git/.git/


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ ls -a
./  ../  .git/  index.html  index.js  main.css

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ rm -rf .git

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git
$ git add .
fatal: not a git repository (or any of the parent directories): .git


# Git Add to move the data to Staging Area 

$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        index.html
        index.js
        main.css

nothing added to commit but untracked files present (use "git add" to track)

# Added one file to staging area

$ git add index.html

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        index.js
        main.css

# Removed a file from staging area 

$ git rm --cached index.html
rm 'index.html'

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        index.html
        index.js
        main.css

nothing added to commit but untracked files present (use "git add" to track)


# Added all files to Staging

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git add index.html

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git add .

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   index.html
        new file:   index.js
        new file:   main.css


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)


# Commit the files in Staging Area

git commit -m "Message"


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git commit -m "Initial Commit"
[master (root-commit) 873cd34] Initial Commit
 3 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 index.html
 create mode 100644 index.js
 create mode 100644 main.css


 Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git status
On branch master
nothing to commit, working tree clean


$ git log
commit 873cd34592efa7117fdc1a349145c4167b7bda95 (HEAD -> master)
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:30:16 2022 +0530

    Initial Commit

# Checking about a particular commit

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git show 873cd34592efa7117fdc1a349145c4167b7bda95
commit 873cd34592efa7117fdc1a349145c4167b7bda95 (HEAD -> master)
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:30:16 2022 +0530

    Initial Commit

diff --git a/index.html b/index.html
new file mode 100644
index 0000000..e69de29
diff --git a/index.js b/index.js
new file mode 100644
index 0000000..e69de29
diff --git a/main.css b/main.css
new file mode 100644
index 0000000..e69de29

# After commiting changed the source file

$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   index.js

no changes added to commit (use "git add" and/or "git commit -a")

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git diff
diff --git a/index.js b/index.js
index e69de29..4b13332 100644
--- a/index.js
+++ b/index.js
@@ -0,0 +1 @@
+console.log("Hello Git!!")
\ No newline at end of file


# Commiting new changes

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git add .

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git commit -m "added console.log"
[master 1dbc1a6] added console.log
 1 file changed, 1 insertion(+)

#  commit history

$ git log
commit 1dbc1a66c9aeac7688b4c60dbce89cea3949969b (HEAD -> master)
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:40:42 2022 +0530

    added console.log

commit 873cd34592efa7117fdc1a349145c4167b7bda95
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:30:16 2022 +0530

    Initial Commit

# --------- Added a wrong message --------------

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   main.css

no changes added to commit (use "git add" and/or "git commit -a")

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git add .

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git commit -m "qjbnfonsovlnvrpnkj"
[master df82746] qjbnfonsovlnvrpnkj
 1 file changed, 3 insertions(+)

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git log
commit df8274688daa18216f2028f877ab99c208379e1f (HEAD -> master)
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:43:29 2022 +0530

    qjbnfonsovlnvrpnkj

commit 1dbc1a66c9aeac7688b4c60dbce89cea3949969b
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:40:42 2022 +0530

    added console.log

commit 873cd34592efa7117fdc1a349145c4167b7bda95
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:30:16 2022 +0530

    Initial Commit


# ------------ Amend the commit message ------------

$ git commit --amend -m "added body to main.css"
[master fb9c732] added body to main.css
 Date: Fri Jun 17 14:43:29 2022 +0530
 1 file changed, 3 insertions(+)

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (master)
$ git log
commit fb9c732da4d4339bcdb0b5720da6dee5563ad55b (HEAD -> master)
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:43:29 2022 +0530

    added body to main.css

commit 1dbc1a66c9aeac7688b4c60dbce89cea3949969b
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:40:42 2022 +0530

    added console.log

commit 873cd34592efa7117fdc1a349145c4167b7bda95
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:30:16 2022 +0530

    Initial Commit


#  Work with Remote Server --> github.com

git remote add origin https://github.com/codewithz/learning-git.git

git branch -M main
git push -u origin main

#  After pushing to remote adding new files in project 

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        main.py

nothing added to commit but untracked files present (use "git add" to track)

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git add .

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   main.py


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git commit -m "added main.py file"
[main 60a0ca5] added main.py file
 1 file changed, 4 insertions(+)
 create mode 100644 main.py
s

$ git log
commit 60a0ca519e66a1234540e63b18ec9318348c2450 (HEAD -> main)
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 15:04:33 2022 +0530

    added main.py file

commit fb9c732da4d4339bcdb0b5720da6dee5563ad55b (origin/main)
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:43:29 2022 +0530

    added body to main.css

commit 1dbc1a66c9aeac7688b4c60dbce89cea3949969b
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:40:42 2022 +0530

    added console.log

commit 873cd34592efa7117fdc1a349145c4167b7bda95
Author: codewithz <zartab@codewithz.com>
Date:   Fri Jun 17 14:30:16 2022 +0530

    Initial Commit


# Git Push Again

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git push
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 310 bytes | 310.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/codewithz/learning-git.git
   fb9c732..60a0ca5  main -> main


# ------------- Made some changes to GIthub Repo [Added a ReadMe.md file ] -----------

# ----------------- Git Pull --------------------

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git pull
Updating 60a0ca5..956623c
Fast-forward
 README.md | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 README.md

git log  --oneline

956623c (HEAD -> main, origin/main) added ReadMe.md
60a0ca5 added main.py file
fb9c732 added body to main.css
1dbc1a6 added console.log
873cd34 Initial Commit

# ------------ Branching ---------------


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git branch
* main

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git branch -r
  origin/main


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git branch -a
* main
  remotes/origin/main


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git branch feature-a

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git branch -a
  feature-a
* main
  remotes/origin/main


# Switch the branch 


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git checkout feature-a
Switched to branch 'feature-a'

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (feature-a)


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (feature-a)
$ git checkout -
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git checkout -
Switched to branch 'feature-a'

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (feature-a)


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (feature-a)
$ git log --oneline
3158afc (HEAD -> feature-a)  added utils.js
2940fa5 (origin/main, main) Added one function to main.py
956623c added ReadMe.md
60a0ca5 added main.py file
fb9c732 added body to main.css
1dbc1a6 added console.log
873cd34 Initial Commit



Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git log --oneline
2940fa5 (HEAD -> main, origin/main) Added one function to main.py
956623c added ReadMe.md
60a0ca5 added main.py file
fb9c732 added body to main.css
1dbc1a6 added console.log
873cd34 Initial Commit


# ---- Pushing a Branch to Remote -------

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (feature-a)
$ git push
fatal: The current branch feature-a has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin feature-a


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (feature-a)
$ git push -u origin feature-a
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 296 bytes | 296.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'feature-a' on GitHub by visiting:
remote:      https://github.com/codewithz/learning-git/pull/new/feature-a
remote:
To https://github.com/codewithz/learning-git.git
 * [new branch]      feature-a -> feature-a
branch 'feature-a' set up to track 'origin/feature-a'.

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (feature-a)


# ---- Deleting a Branch ---------


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git checkout -b to-delete
Switched to a new branch 'to-delete'

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (to-delete)


Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (to-delete)
$ git branch -a
  feature-a
  main
* to-delete
  remotes/origin/feature-a
  remotes/origin/main

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (to-delete)
$ git checkout -
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git branch -d to-delete
Deleted branch to-delete (was 2940fa5).

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git branch -a
  feature-a
* main
  remotes/origin/feature-a
  remotes/origin/main

# Merge Request

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git log --oneline
3158afc (HEAD -> main, origin/feature-a, feature-a)  added utils.js
2940fa5 (origin/main) Added one function to main.py
956623c added ReadMe.md
60a0ca5 added main.py file
fb9c732 added body to main.css
1dbc1a6 added console.log
873cd34 Initial Commit

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git pull
remote: Enumerating objects: 1, done.
remote: Counting objects: 100% (1/1), done.
remote: Total 1 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (1/1), 627 bytes | 156.00 KiB/s, done.
From https://github.com/codewithz/learning-git
   2940fa5..dd954c0  main       -> origin/main
Updating 3158afc..dd954c0
Fast-forward

Zartab Nakhwa@WINDOWS-L1BB9SS MINGW64 /d/SCB/2022/CEP June 2022/Git/learning-git (main)
$ git log --oneline
dd954c0 (HEAD -> main, origin/main) Merge pull request #1 from codewithz/feature-a
3158afc (origin/feature-a, feature-a)  added utils.js
2940fa5 Added one function to main.py
956623c added ReadMe.md
60a0ca5 added main.py file
fb9c732 added body to main.css
1dbc1a6 added console.log
873cd34 Initial Commit










