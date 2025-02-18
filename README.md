    GIT with branchs

        branch -d   Delete the specified branch. This is a “safe” operation in that Git prevents you from deleting the branch                     if it has unmerged changes.
        branch -D   Force delete the specified branch, even if it has unmerged changes. This is the command to use if you want                    to permanently throw away all of the commits associated with a particular line of development.
        branch -m   rename
        branch -a   List all remote branches
        branch checkout/switch <namebranch>

        $ git push origin --delete <oldname> Delete the current/old branch
        $ git push origin -u <newname> simply push the new local branch with correct name

        $ git push -u origin <local-branch> upload a local branch for the first time
    file .gitignore
        *.log
        k.txt
        foloder1/
