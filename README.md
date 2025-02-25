# GIT with branchs

1. ```branch -d```   Delete the specified branch. This is a “safe” operation in that Git prevents you from deleting the branch if it has unmerged changes.
2. ```branch -D```   Force delete the specified branch, even if it has unmerged changes. This is the command to use if you want to permanently throw away all of the commits associated with a particular line of development.
3. ```branch -m```   rename.
4. ```branch -a```   List all remote branches.
5. ```branch checkout/switch <namebranch>```

$ git push origin --delete <oldname> Delete the current/old branch
$ git push origin -u <newname> simply push the new local branch with correct name
$ git push -u origin <local-branch> upload a local branch for the first time

# file .gitignore
``*.log``

``k.txt``

``foloder1/``

# merge conflict
- How to fix this error:   ```git pull``` => then repair self.
- ```git checkout <code commit>``` : back to that commit
    
# learnMakeFile
- [Источник интернета](https://makefiletutorial.com/)
- [Ссылка github](https://github.com/dok2003/basics-graphics-music/blob/main/boards/karnix_ecp5_yosys/Makefile)
