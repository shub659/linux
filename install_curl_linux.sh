#!/bin/bash

## Ubuntu (Ubuntu 20.04 gave me error when tried to install curl using apt-gt
# 
## sudo apt-get install curl
# Reading package lists... Done
# Building dependency tree       
# Reading state information... Done
# Package curl is not available, but is referred to by another package.
# This may mean that the package is missing, has been obsoleted, or
# is only available from another source
#
# E: Package 'curl' has no installation candidate


# So I installed latest curl version from source


# Apparently something was wrong with this version..
# curl -i "https://api.github.com/users/octocat/orgs"
# curl: (1) Protocol "https" not supported or disabled in libcurl

# It's because 'https' isn't in list of supported protocols for this version.. 
# curl -V
# curl 7.54.1 (x86_64-pc-linux-gnu) libcurl/7.54.1
# Release-Date: 2017-06-14
# Protocols: dict file ftp gopher http imap pop3 rtsp smtp telnet tftp 
# Features: IPv6 Largefile UnixSockets 
#shubham Patil
# So it's better to download SSL supported version - https://curl.haxx.se/download.html
wget https://curl.haxx.se/download/curl-7.52.1.tar.gz
tar -xvf curl-7.52.1.tar.gz
cd curl-7.52.1
./configure
make
sudo make install