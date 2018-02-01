#!/bin/bash
echo 'Hello this is sample file'

echo 'taking pull and merge in project'

echo `git remote -v`

STRING=`git status`
echo $STRING
if [[ "$STRING" == *"Changes"* ]]
then
	echo 'Some changes found'
	echo 'Adding all the changed files to commit'
	`git add .`
	echo 'Commiting files to push to origin'
	`git commit -m "Commited newly added or changed files"`
	echo 'pushing changes to server'
	`git push origin dev`
	echo 'File has been sycned with server successfully'
else
	echo 'nothing to commit'
fi