#!/bin/bash

echo "Copy Tanium RPM File to host"
scp -r tanium.rpm user@hostname1.com:/tmp
scp -r tanium.rpm user@hostname2.com:/tmp
scp -r tanium.rpm user@hostname3.com:/tmp
scp -r tanium.rpm user@hostname4.com:/tmp

echo "Remote install execution"
ssh user@hostname1.com 'rpm -ivh /tmp/tanium.rpm'
ssh user@hostname2.com 'rpm -ivh /tmp/tanium.rpm'
ssh user@hostname3.com 'rpm -ivh /tmp/tanium.rpm'
ssh user@hostname4.com 'rpm -ivh /tmp/tanium.rpm'

echo "Copy Init File"
scp -r init.dat user@hostname1.com:/opt/Tanium/TaniumClient
scp -r init.dat user@hostname2.com:/opt/Tanium/TaniumClient
scp -r init.dat user@hostname3.com:/opt/Tanium/TaniumClient
scp -r init.dat user@hostname4.com:/opt/Tanium/TaniumClient
