#!/bin/bash
echo 'Welcome To Project Version 1.0'
echo '█▀▀█ █▀▀ █──█ █▀▀█ ─▀─'
echo '█▄▄█ ▀▀█ █▀▀█ █──█ ▀█▀'
echo '▀──▀ ▀▀▀ ▀──▀ ▀▀▀▀ ▀▀▀'

# Requirements Package
# sudo apt install fping  [On Debian/Ubuntu]
# sudo yum install fping  [On CentOS/RHEL]
# sudo dnf install fping  [On Fedora 22+]
# sudo pacman -S fping    [On Arch Linux]

######## Help For Configuration#######
# File Configuration of hostdb.csv
# Column1 : Serial number of inventory. Example 1, 2, 3...
# Column2 : IPv4, IPv6, Hostname and Domain Name of host. Example 192.168.0.1, google.com
# Column3 : More information about host. Example  WebServer, DBServer
# Example of hostdb.csv
# 1,192.168.0.1,WebServer
# 2,192.168.0.2,Gateway
# 3,192.168.0.3,DBServer
######################################
while true
do
        echo '[More : Please wait for completion of reading HOSTDB.CSV file process. Otherwise for interruption purpose please press CTRL+C.]'
        while IFS="," read -r row_column1 row_column2 row_column3
        do
                echo -ne "[$row_column1] "
                echo -ne "[$row_column3]--> "
                fping $row_column2

        done < hostdb.csv

        sleep 5
        clear
done
######################################
# Now UConfigIt
# Author : himanshuutail@outlook.com
# Thanks & Regards