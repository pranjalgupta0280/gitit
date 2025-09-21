#!/bin/bash

FILE="dummy.txt"
touch $FILE

for i in {1..5}   # make 5 commits first for testing
do
  echo "Commit number $i at $(date)" >> $FILE
  git add $FILE
  git commit -m "chore: dummy commit $i" || echo "⚠️ Commit $i failed"
done

git push origin main
