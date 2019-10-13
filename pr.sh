#!/usr/bin/env bash

echo "Enter the pr branch name: ";
read branch;

git checkout -b $branch;
git fetch upstream;
git reset --hard upstream/master;

echo "Ready to cherry-pick!"
echo "Enter in your commit hashes separated by spaces: "
read commits;

git cherry-pick $commits;
git push origin $branch;
echo "Done.";
