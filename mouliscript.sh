#!/bin/bash

# YOU MUST GIVE AS A FIRST ARGUMENT THE REPO URL STARTING WITH intra/20xx/etc
# AS A SECOND ARGUMENT THE PATH TO THE GIT REPO CLONED
echo "Enter repo URL :"
read -r URL
echo "Enter git repository path :"
read -r GITPATH
echo "= Host-specific information ====================================================
$> hostname; uname -msr"
hostname; uname -msr
echo "$> date"
date
echo "$> gcc --version"
gcc --version
echo "$> clang --version"
clang --version
echo "
= User files collection ========================================================
Collecting user files from Vogsphere
Repository URL: $URL"
echo "
= Git history ==================================================================
$> git -C $GITPATH log --pretty='%H - %an, %ad : %s'"
git -C $GITPATH log --pretty='%H - %an, %ad : %s'
rm -rf $GITPATH/.git
echo "
= Collected files ==========================================
$> ls -lAR $GITPATH"
ls -lAR $GITPATH
