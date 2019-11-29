find . -type d -depth 1 -exec echo git --git-dir={}/.git --work-tree=$PWD/{} status \;
find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pp \;