#!/bin/bash

# YOU MUST GIVE AS A FIRST ARGUMENT THE REPO URL STARTING WITH intra/20xx/etc
# AS A SECOND ARGUMENT THE PATH TO THE GIT REPO CLONED

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
Repository URL: $1"
echo "
= Git history ==================================================================
$> git -C $2 log --pretty='%H - %an, %ad : %s'"
git -C $2 log --pretty='%H - %an, %ad : %s'
echo "
= Collected files ==========================================
$> ls -lAR $2"
ls -lAR $2
