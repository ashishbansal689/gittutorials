#!/bin/bash
echo -e 'Checking the current status of the project\n'
STRING=`git status`

if [[ "$STRING" == *"Changes"* ]]
then
	echo -e 'Some changes found\n'
	echo -e 'Adding all the changed files to commit\n'
	`git add .`
	echo -e 'Commiting files to push to origin\n'
	`git commit -m "Commited newly added or changed files"`
	CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`
	echo -e 'Current branch is: '$CURRENT_BRANCH '\n'
	echo -e 'pushing changes to '$CURRENT_BRANCH '\n'
	`git push origin $CURRENT_BRANCH`
	echo 'File has been sycned with server successfully'
else
	echo 'No new changes found to commit'
fi