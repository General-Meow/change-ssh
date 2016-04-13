#! /bin/bash
if [ $# -eq 0 ]; then
  echo "you must provide one parameter"
  echo "usage: ./createGitIgnore.sh <fullPath>"
  echo "where <fullPath> is a name of a folder that you wish to search through"
  exit
fi

echo "Looking into $1..."
echo "Empty directories found: "
find $1 -depth -type d -empty

echo ""
echo "If you wish to create .gitignore files to these directories, then use ./createGitIgnore.sh $1 apply"


if [ "$2" == "apply" ]; then
  echo "Adding .gitignore files to the empty directories"
  find $1 -depth -type d -empty -exec touch {}'/'.gitignore \;
fi