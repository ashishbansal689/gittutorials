#!/bin/bash
echo 'Checking the current status of the project'
STRING=`git status`
echo $STRING
if [[ "$STRING" == *"Changes"* ]]
then
	echo 'Some changes found'
	echo 'Adding all the changed files to commit'
	`git add .`
	echo 'Commiting files to push to origin'
	`git commit -m "Commited newly added or changed files"`
	CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`
	echo 'Current branch is: '$CURRENT_BRANCH
	echo 'pushing changes to '$CURRENT_BRANCH
	`git push origin $CURRENT_BRANCH`
	echo 'File has been sycned with server successfully'
else
	echo 'There is nothing to commit'
fi
echo 'sdfasd'