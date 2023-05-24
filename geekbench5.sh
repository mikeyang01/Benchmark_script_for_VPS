#!/bin/bash
clear
DIR=${HOME}/vpsTest
if [ ! -d $DIR ];then
    mkdir $DIR
fi
cDIR=`pwd`
cd $DIR
trap "cl" 2
cl () {
    echo "..."
    echo "clear..."
    rm -f $cDIR/$0
    echo "OK"
    exit 0
}
# copy from superbench
if [ -f /etc/redhat-release ]; then
	    release="centos"
elif cat /etc/issue | grep -Eqi "debian"; then
	    release="debian"
elif cat /etc/issue | grep -Eqi "ubuntu"; then
	    release="ubuntu"
elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
	    release="centos"
elif cat /proc/version | grep -Eqi "debian"; then
	    release="debian"
elif cat /proc/version | grep -Eqi "ubuntu"; then
	    release="ubuntu"
elif cat /proc/version | grep -Eqi "centos|red hat|redhat"; then
	    release="centos"
fi
out1 () {
	color=$1
	what=$2
	array=("r" "g" "y" "b" "p" "s" "w")
	for i in `seq 31 37`;do
		if [ ${array[$(($i-31))]} == $color ] ; then
			echo -ne "\e[1;${i}m${what}\e[0m"
			break
		fi
	done
}
out0 () {
	color=$1
	what=$2
	array=("r" "g" "y" "b" "p" "s" "w")
	for i in `seq 31 37`;do
		if [ ${array[$(($i-31))]} == $color ] ; then
			echo -ne "\e[0;${i}m${what}\e[0m"
			break
		fi
	done
}

while [ ! -d ${DIR}/Geekbench-5.2.3-Linux ]; do
            wget -P ${DIR} http://cdn.geekbench.com/Geekbench-5.2.3-Linux.tar.gz && tar -xzvf ${DIR}/Geekbench-5.2.3-Linux.tar.gz -C ${DIR}
        done
        ${DIR}/Geekbench-5.2.3-Linux/geekbench5        
cl
