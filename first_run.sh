#!bin/bash
#first_run.sh

yum -y install epel-release && yum -y update
yum -y install tmux unzip zip git mc vim nano htop atop iftop iotop nmap wget open-vm-tools gcc-c++ pcre-devel zlib-devel make mutt httpd-tools duplicity fail2ban gcc
yum -y group install "Development Tools"
