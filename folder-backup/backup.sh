#!/bin/bash

src_dir=/home/amandeep/shell-scripting/backup/source
dest_dir=/home/amandeep/shell-scripting/backup/dest
tar -cvzf $dest_dir/backup.tar.gz $src_dir

