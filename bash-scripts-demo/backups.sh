#!/bin/bash

src_dir=/home/ubuntu/scripts
tgt_dir=/home/ubuntu/backups

curr_timestamp=$( date "+%Y-%m-%d-%H-%M-%S")
backup_file=$tgt_dir/$curr_timestamp.tgz

echo "Taking backup on $curr_timestamp"

echo "$curr_timestamp"

# echo "$backup_file"

tar czf $backup_file --absolute-names $src_dir

echo "Backup complete"



# Run commands :

# to create and execute 

# nano backup.sh

# ~/scripts$ ./backup.sh

# Taking backup on 2024-11-12-16-26-44
# 2024-11-12-16-26-44
# Backup complete

# ~/scripts$ cd ..

# ~$ cd backups/

# ~/backups$ ls

# 2024-11-12-16-24-26.tgz  2024-11-12-16-26-44.tgz
# 2024-11-12-16-25-39.tgz

# ~/backups$ tar xf 2024-11-12-16-26-44.tgz
# tar: Removing leading `/' from member name

# ~/backups$ ls

# 2024-11-12-16-24-26.tgz  2024-11-12-16-26-44.tgz
# 2024-11-12-16-25-39.tgz  home

# ~/backups$ cd home/

# ~/backups/home$ ls

# ubuntu

# ~/backups/home$ cd ubuntu/

# ~/backups/home/ubuntu$ ls

# scripts

# ~/backups/home/ubuntu$ cd scripts/

# ~/backups/home/ubuntu/scripts$ ls

# backup.sh      for-loop-demo.sh  if-elif-demo.sh
# first-bash.sh  if-demo.sh        user-add.sh

# ~/backups/home/ubuntu/scripts$ pwd

# /home/ubuntu/backups/home/ubuntu/scripts