#!/bin/bash

# This script is meant to be used with the command 'datalad run'

# git-annex doesn't allow to explicitely set the output directory in the
# case of torrents. Trick git-annex by creating a symlink to the desired
# output directory

# Add to git-annex any predownloaded files before validating with torrent content

git-annex add TIMIT.zip

git-annex addurl --pathdepth -1 \
	https://academictorrents.com/download/34e2b78745138186976cbc27939b1b34d18bd5b3.torrent

md5sum -c md5sums
