#!/bin/bash
ANT_VER=apache-ant-1.9.7-bin.tar.gz 
ANT=apache-ant-1.9.7 
yum update
yum install -y vim git tree

yum install -y java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64

JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk.x86_64
wget http://www.us.apache.org/dist/ant/bin/binaries/$ANT_VER
tar xvfvz $ANT_VER -C /opt
ln -s /opt/$ANT /opt/ant
sh -c 'echo ANT_HOME=/opt/ant >> /etc/environment'
ln -s /opt/ant/bin/ant /usr/bin/ant
